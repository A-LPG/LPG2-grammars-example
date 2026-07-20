# HARSH_8 result

Batch: `bcl`, `esolang/nanofuck`, `postalcode`.

Policy: `tools/HARSH_FIX.md` + `tools/TRUE_PORT_BAR.md` — no soup, real curated examples, honest `language_subset`.

## Summary

| id | harness | g4 lines | LPG parser lines | quality | notes |
|---|---|---|---|---|---|
| `bcl` | OK (4) | 49 | 29 | `language_subset` + `real_g4_port` | full structural port of tiny BCL; SK combinator programs |
| `esolang/nanofuck` | OK (3) | 49 | 29 | `language_subset` + `real_g4_port` | full structural port; toggle / swap / Toffoli |
| `postalcode` | OK (4) | 47 | 21 | `language_subset` + `real_g4_port` | stripped `language_port` overclaim; Canadian FSA+LDU |

Upstream g4s are ~47–49 lines (mostly license). Parsers already matched g4 structure (`term`/`exp`/`postalcode`) — **not** regenerated into soup; no antlr2lpg rewrite needed.

## Method

1. Diagnosed WEAK flags: `TRIVIAL_EXAMPLES` / `WEAK_EXAMPLES` / `PARSE_OK_BUT_SHELFY`; postalcode overclaimed `language_port`.
2. Kept existing g4-shaped parsers (already complete for tiny dialects).
3. Added `examples-curated/` (≥3 multiline real samples each); pointed `harness.json` at them.
4. `bash harness/run-one.sh <id>` → all OK.
5. `status.json`: `language_subset` + `real_g4_port`; blockers empty; postalcode downgraded from `language_port`.

---

## bcl

**Harness:** `OK: bcl (4 examples)`

**Parser shape (kept):** `term ::= ZEROZERO | ZEROONE | ONE term term` (00=K, 01=S, 1xy=apply).

### Example evidence (first ≤5 lines)

`examples-curated/skk_identity.bcl` — I = SKK = `1 (1 01 00) 00`:

```
1
  1
    01
    00
  00
```

`examples-curated/true_k_kk.bcl` — True = K(KK):

```
1
  00
  1
    00
    00
```

`examples-curated/and_ssk.bcl` — AND = SSK:

```
1
  1
    01
    01
  00
```

`examples-curated/terms_ks_app.bcl` — term list K, S, (K S):

```
00
01
1
  00
  01
```

---

## esolang/nanofuck

**Harness:** `OK: esolang/nanofuck (3 examples)`

**Parser shape (kept):** left-rec `exp` as `atom` sequence; `atom ::= STAR | LBRACE RBRACE | LBRACE exp RBRACE`.

### Example evidence (first ≤5 lines)

`examples-curated/toggle_self_inverse.nf` — esolangs self-inverse toggle:

```
*
{}
```

`examples-curated/swap_adjacent.nf` — wiki XOR-swap adjacent cells:

```
*{}*
{*{}**{}{}}
*{}**{}*
{{}*}
{*{}**{}{}}
```

`examples-curated/toffoli_gate.nf` — wiki Toffoli (universal reversible gate):

```
*{}*
{*{}**{}*
{*{}**{}{}}
{}}
```

---

## postalcode

**Harness:** `OK: postalcode (4 examples)`

**Parser shape (kept):** `postalcode ::= LETTER DIGIT LETTER DIGIT LETTER DIGIT` (Canadian FSA+LDU; WS skipped).

**Overclaim fix:** `language_port` → `language_subset` (single-code grammar; not a full address language).

### Example evidence (first ≤5 lines)

`examples-curated/ottawa_k1a0b1.txt`:

```
K1A
0B1
```

`examples-curated/toronto_m5h2n2.txt`:

```
M5H
2N2
```

`examples-curated/montreal_h3b4w5.txt`:

```
H3B
4W5
```

`examples-curated/vancouver_v6c2x8.txt`:

```
V6C
2X8
```

---

## Blockers

None for parse harness. Honest limits recorded in `quality_notes` (tiny dialect, no runtime semantics, postalcode single-code-only).
