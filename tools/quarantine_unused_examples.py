#!/usr/bin/env python3
"""Quarantine unused upstream example trees not referenced by harness globs.

For each unit where harness only uses examples-curated/** (or a small smoke set
of explicit files) AND examples/ has >5MB or >50 files outside harness globs:

  - Prefer renaming/moving unused files to examples-upstream-unused/
  - Delete a file if its content is already present under examples-curated/
  - Do NOT touch units whose harness globs include examples/** (broad trees)

If the aggregate size that would land in examples-upstream-unused/ exceeds
~100MB, delete the large unused trees instead and leave a README pointer to
antlr/grammars-v4 upstream.

Usage:
  python3 tools/quarantine_unused_examples.py           # apply
  python3 tools/quarantine_unused_examples.py --dry-run
"""
from __future__ import annotations

import argparse
import hashlib
import json
import shutil
from dataclasses import dataclass, field
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SIZE_THRESH = 5 * 1024 * 1024
FILE_THRESH = 50
KEEP_CAP = 100 * 1024 * 1024
UPSTREAM_BASE = "https://github.com/antlr/grammars-v4/tree/master"
QUARANTINE_DIR = "examples-upstream-unused"
NOTE_KEEP = (
    f"Unused upstream examples live in `{QUARANTINE_DIR}/` (not harnessed); "
    "full corpus: {url}."
)
NOTE_DELETE = (
    "Large unused upstream examples were omitted to save disk; "
    "fetch from grammars-v4: {url}."
)


@dataclass
class Candidate:
    unit: Path
    uid: str
    globs: list[str]
    unused: list[Path]
    unused_bytes: int
    mode: str  # "curated_rename" | "smoke_move"
    action: str = "move"  # "move" | "delete"
    deleted_dup_bytes: int = 0
    deleted_dup_files: int = 0
    moved_bytes: int = 0
    moved_files: int = 0
    deleted_cap_bytes: int = 0
    deleted_cap_files: int = 0
    notes: list[str] = field(default_factory=list)


def unit_id(unit: Path) -> str:
    return str(unit.relative_to(ROOT)).replace("\\", "/")


def load_harness(unit: Path) -> dict | None:
    hj = unit / "harness.json"
    if not hj.is_file():
        return None
    return json.loads(hj.read_text(encoding="utf-8"))


def globs_include_examples_tree(globs: list[str]) -> bool:
    """True if harness pulls from examples/** (any broad or extension glob)."""
    for g in globs:
        g = g.replace("\\", "/")
        if g.startswith("examples-curated"):
            continue
        if not g.startswith("examples"):
            continue
        # Broad tree or directory wildcards under examples/
        name = Path(g).name
        if "**" in g or g.endswith("/*") or g == "examples/*":
            return True
        if g.startswith("examples/") and ("*" in name or "*" in g):
            # e.g. examples/**/*.js, examples/*.xml, examples/**/*.txt
            return True
    return False


def is_curated_only(globs: list[str]) -> bool:
    return bool(globs) and all(g.replace("\\", "/").startswith("examples-curated") for g in globs)


def is_small_smoke_set(globs: list[str]) -> bool:
    """Explicit file paths under examples/ (no wildcards)."""
    if not globs or globs_include_examples_tree(globs):
        return False
    if any(g.replace("\\", "/").startswith("examples-curated") for g in globs):
        return False
    for g in globs:
        g = g.replace("\\", "/")
        if not g.startswith("examples/"):
            return False
        if "*" in g or "?" in g:
            return False
    return True


def matched_files(unit: Path, globs: list[str]) -> set[Path]:
    out: set[Path] = set()
    for g in globs:
        for p in unit.glob(g):
            if p.is_file() and "out-java" not in p.parts:
                out.add(p.resolve())
    return out


def example_files(unit: Path) -> list[Path]:
    ex = unit / "examples"
    if not ex.is_dir():
        return []
    return sorted(p for p in ex.rglob("*") if p.is_file() and not p.name.startswith("."))


def file_sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def curated_hashes(unit: Path) -> set[str]:
    curated = unit / "examples-curated"
    if not curated.is_dir():
        return set()
    hashes: set[str] = set()
    for p in curated.rglob("*"):
        if p.is_file() and not p.name.startswith("."):
            try:
                hashes.add(file_sha256(p))
            except OSError:
                continue
    return hashes


def upstream_url(uid: str) -> str:
    return f"{UPSTREAM_BASE}/{uid}"


def ensure_readme_note(unit: Path, note: str) -> None:
    readme = unit / "README.md"
    if readme.is_file():
        text = readme.read_text(encoding="utf-8")
        if QUARANTINE_DIR in text or "Large unused upstream examples were omitted" in text:
            return
        if not text.endswith("\n"):
            text += "\n"
        text += f"\n{note}\n"
        readme.write_text(text, encoding="utf-8")
    else:
        readme.write_text(f"# {unit_id(unit)}\n\n{note}\n", encoding="utf-8")


def find_candidates() -> list[Candidate]:
    cands: list[Candidate] = []
    for hj in sorted(ROOT.rglob("harness.json")):
        if "out-java" in hj.parts or ".git" in hj.parts:
            continue
        unit = hj.parent
        harness = json.loads(hj.read_text(encoding="utf-8"))
        globs = harness.get("example_globs") or ["examples/**/*"]
        if globs_include_examples_tree(globs):
            continue
        curated = is_curated_only(globs)
        smoke = is_small_smoke_set(globs)
        if not curated and not smoke:
            continue
        files = example_files(unit)
        if not files:
            continue
        matched = matched_files(unit, globs)
        unused = [p for p in files if p.resolve() not in matched]
        # For curated-only, harness never reads examples/, so all are unused
        if curated:
            unused = files
        ub = sum(p.stat().st_size for p in unused)
        if ub <= SIZE_THRESH and len(unused) <= FILE_THRESH:
            continue
        mode = "curated_rename" if curated else "smoke_move"
        cands.append(
            Candidate(
                unit=unit,
                uid=unit_id(unit),
                globs=list(globs),
                unused=unused,
                unused_bytes=ub,
                mode=mode,
            )
        )
    cands.sort(key=lambda c: -c.unused_bytes)
    return cands


def assign_actions(cands: list[Candidate]) -> None:
    total = sum(c.unused_bytes for c in cands)
    if total <= KEEP_CAP:
        for c in cands:
            c.action = "move"
        return
    # Prefer deleting largest trees until remaining keepable size fits.
    keep_budget = KEEP_CAP
    for c in cands:
        if c.unused_bytes <= keep_budget:
            c.action = "move"
            keep_budget -= c.unused_bytes
        else:
            c.action = "delete"


def rel_under_examples(path: Path, unit: Path) -> Path:
    return path.relative_to(unit / "examples")


def _prune_empty_dirs(root: Path) -> None:
    if not root.is_dir():
        return
    for d in sorted((p for p in root.rglob("*") if p.is_dir()), reverse=True):
        try:
            d.rmdir()
        except OSError:
            pass
    try:
        root.rmdir()
    except OSError:
        pass


def quarantine_move(c: Candidate, dry_run: bool) -> None:
    unit = c.unit
    dest_root = unit / QUARANTINE_DIR
    hashes = curated_hashes(unit)
    ex = unit / "examples"
    all_unused = {p.resolve() for p in c.unused}
    remaining = [p for p in example_files(unit) if p.resolve() not in all_unused]

    # Curated-only and whole examples/ unused → rename directory (after dup deletes)
    if c.mode == "curated_rename" and not remaining:
        for p in list(c.unused):
            try:
                digest = file_sha256(p)
                sz = p.stat().st_size
            except OSError:
                continue
            if digest in hashes:
                c.deleted_dup_bytes += sz
                c.deleted_dup_files += 1
                if not dry_run:
                    p.unlink()
        left = example_files(unit)
        if not left:
            if not dry_run:
                _prune_empty_dirs(ex)
            return
        size = sum(p.stat().st_size for p in left)
        if dest_root.exists():
            for p in left:
                rel = rel_under_examples(p, unit)
                target = dest_root / rel
                c.moved_bytes += p.stat().st_size
                c.moved_files += 1
                if not dry_run:
                    target.parent.mkdir(parents=True, exist_ok=True)
                    if target.exists():
                        target.unlink()
                    shutil.move(str(p), str(target))
            if not dry_run:
                shutil.rmtree(ex, ignore_errors=True)
        else:
            c.moved_bytes += size
            c.moved_files += len(left)
            if not dry_run:
                ex.rename(dest_root)
        return

    # Smoke / partial: move unused files individually
    for p in c.unused:
        try:
            digest = file_sha256(p)
            sz = p.stat().st_size
        except OSError:
            continue
        if digest in hashes:
            c.deleted_dup_bytes += sz
            c.deleted_dup_files += 1
            if not dry_run:
                p.unlink()
            continue
        rel = rel_under_examples(p, unit)
        target = dest_root / rel
        c.moved_bytes += sz
        c.moved_files += 1
        if not dry_run:
            target.parent.mkdir(parents=True, exist_ok=True)
            if target.exists():
                try:
                    if file_sha256(target) == digest:
                        p.unlink()
                        continue
                except OSError:
                    pass
                target.unlink()
            shutil.move(str(p), str(target))

    if not dry_run:
        _prune_empty_dirs(ex)
        # Recreate examples/ if harness still needs matched smoke files that remain
        # (_prune_empty_dirs only removes empty trees; matched files keep the dir)


def quarantine_delete(c: Candidate, dry_run: bool) -> None:
    unit = c.unit
    hashes = curated_hashes(unit)
    for p in c.unused:
        try:
            sz = p.stat().st_size
            digest = file_sha256(p)
        except OSError:
            continue
        if digest in hashes:
            c.deleted_dup_bytes += sz
            c.deleted_dup_files += 1
        else:
            c.deleted_cap_bytes += sz
            c.deleted_cap_files += 1
        if not dry_run:
            p.unlink()
    if not dry_run:
        _prune_empty_dirs(unit / "examples")


def apply_candidate(c: Candidate, dry_run: bool) -> None:
    url = upstream_url(c.uid)
    if c.action == "move":
        quarantine_move(c, dry_run)
        if not dry_run:
            ensure_readme_note(c.unit, NOTE_KEEP.format(url=url))
    else:
        quarantine_delete(c, dry_run)
        if not dry_run:
            ensure_readme_note(c.unit, NOTE_DELETE.format(url=url))


def main(argv: list[str] | None = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--dry-run", action="store_true", help="report only; do not modify tree")
    args = ap.parse_args(argv)

    cands = find_candidates()
    if not cands:
        print("no quarantine candidates")
        return 0

    total_unused = sum(c.unused_bytes for c in cands)
    assign_actions(cands)

    print(f"candidates: {len(cands)}  unused_total: {total_unused / (1024*1024):.2f} MiB")
    print(f"keep_cap: {KEEP_CAP / (1024*1024):.0f} MiB  mode: {'dry-run' if args.dry_run else 'apply'}")
    print()

    for c in cands:
        apply_candidate(c, args.dry_run)
        # For dry-run move path, estimate moved size
        if args.dry_run and c.action == "move" and c.moved_bytes == 0:
            c.moved_bytes = c.unused_bytes
            c.moved_files = len(c.unused)
        print(
            f"  [{c.action:6}] {c.uid}: unused={c.unused_bytes/(1024*1024):.2f}MiB "
            f"files={len(c.unused)} mode={c.mode} globs={c.globs}"
        )
        if c.moved_files:
            print(f"           moved={c.moved_files} ({c.moved_bytes/(1024*1024):.2f}MiB)")
        if c.deleted_dup_files:
            print(f"           dup_deleted={c.deleted_dup_files} ({c.deleted_dup_bytes/(1024*1024):.2f}MiB)")
        if c.deleted_cap_files:
            print(f"           cap_deleted={c.deleted_cap_files} ({c.deleted_cap_bytes/(1024*1024):.2f}MiB)")

    moved = sum(c.moved_bytes for c in cands)
    dup = sum(c.deleted_dup_bytes for c in cands)
    cap = sum(c.deleted_cap_bytes for c in cands)
    saved = dup + cap
    print()
    print(f"quarantined_units: {len(cands)}")
    print(f"moved_to_{QUARANTINE_DIR}_MiB: {moved / (1024 * 1024):.2f}")
    print(
        f"disk_saved: {saved / 1024:.1f} KiB "
        f"(dup={dup / 1024:.1f} KiB + cap_delete={cap / 1024:.1f} KiB); "
        f"rename keeps bytes on disk under {QUARANTINE_DIR}/"
    )
    print("units:", ", ".join(c.uid for c in cands))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
