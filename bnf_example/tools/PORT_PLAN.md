# Grammars-example real-port plan (full corpus scan)

Regenerate: `python3 tools/scan_port_plan.py`

## Acceptance bar

- Forbidden: nested token-stream soup (`item ::= atom | paren | ...`).
- Parser must come from grammars-v4 `.g4` (use `tools/antlr2lpg.py` then fix lexer).
- `language_subset` OK for huge dialects, but not a 50–150 line shared stub.
- `bash harness/run-one.sh <id>` must pass.
- `status.json` notes include `real_g4_port`.

## Scan totals

- **catalog_non_legacy**: 390
- **needs_port**: 80
- **looks_ok_or_structural**: 310
- **token_soup_like**: 2
- **tiny_or_low_overlap**: 79
- **sql_stub_suspect**: 3

## Waves

| Wave | Count | Goal |
|------|------:|------|
| W1_soup_clear | 2 | Eliminate classic token soup |
| W2_mainstream | 16 | Java/Python/JS/C#/Kotlin/Swift/Scala/core |
| W3_heavy_dialects | 10 | SQL/asm/verilog/cobol-scale subsets |
| W4_medium | 51 | Mid-size underports |
| W5_long_tail | 1 | Remaining long-tail |

## W1 — classic soup / missing parser (2)

| id | tier | g4_lines | lpg_lines | nt_overlap | flags |
|----|------|--------:|----------:|-----------:|-------|
| `antlr/antlr4` | D | 329545 | 57 | 0 | nested_token_stream_comment,item_atom_rule,item_atom_paren,token_soup,tiny_vs_large_g4,low_nt_overlap |
| `sexpression` | A | 96 | 39 | 0 | item_atom_rule,token_soup |

## W2 — mainstream languages (16)

| id | tier | g4_lines | lpg_lines | nt_overlap | flags |
|----|------|--------:|----------:|-----------:|-------|
| `csharp/v8-spec` | D | 3244 | 131 | 0 | tiny_vs_large_g4,low_nt_overlap,clone_cluster_n3 |
| `csharp/v6` | D | 2480 | 131 | 0 | tiny_vs_large_g4,low_nt_overlap,clone_cluster_n3 |
| `csharp/v7` | D | 2381 | 131 | 0 | tiny_vs_large_g4,low_nt_overlap,clone_cluster_n3 |
| `kotlin/kotlin` | D | 3015 | 117 | 0 | tiny_vs_large_g4,low_nt_overlap |
| `kotlin/kotlin-formal` | D | 3001 | 117 | 0 | tiny_vs_large_g4,low_nt_overlap |
| `scala/scala3` | C | 1535 | 132 | 0 | tiny_vs_large_g4,low_nt_overlap |
| `scala/scala2` | C | 1383 | 132 | 0 | tiny_vs_large_g4,low_nt_overlap |
| `corundum` | B | 714 | 23 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `css3` | B | 705 | 26 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `cypher` | B | 678 | 21 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `swift/swift3` | C | 2392 | 315 | 0 | low_nt_overlap,clone_cluster_n3 |
| `swift/swift5` | D | 2219 | 315 | 0 | low_nt_overlap,clone_cluster_n3 |
| `swift/swift2` | C | 2027 | 315 | 0 | low_nt_overlap,clone_cluster_n3 |
| `javascript/ecmascript` | D | 9481 | 393 | 0 | low_nt_overlap |
| `caql` | B | 442 | 58 | 0 | tiny_vs_medium_g4 |
| `clojure` | B | 358 | 25 | 0 | micro_parser |

## W3 — heavy dialects (10)

| id | tier | g4_lines | lpg_lines | nt_overlap | flags |
|----|------|--------:|----------:|-----------:|-------|
| `sql/snowflake` | D | 6329 | 60 | 0 | tiny_vs_large_g4,low_nt_overlap,sql_shared_stub_suspect |
| `sql/derby` | D | 1699 | 60 | 0 | tiny_vs_large_g4,low_nt_overlap,sql_shared_stub_suspect |
| `sql/sqlite` | D | 1192 | 61 | 0 | tiny_vs_large_g4,low_nt_overlap,sql_shared_stub_suspect |
| `sql/informix-sql` | D | 728 | 411 | 0 | low_nt_overlap |
| `asm/masm` | D | 1547 | 435 | 0 | low_nt_overlap |
| `asm/asm8086` | D | 1112 | 324 | 0 | low_nt_overlap |
| `asm/ptx/ptx-isa-1.0` | D | 697 | 482 | 0 | low_nt_overlap |
| `asm/asmMASM` | D | 602 | 217 | 0 | low_nt_overlap |
| `asm/asmRISCV` | D | 581 | 397 | 0 | low_nt_overlap |
| `asm/asm6502` | D | 438 | 65 | 0 | tiny_vs_medium_g4 |

## W4 — medium underports (51)

| id | tier | g4_lines | lpg_lines | nt_overlap | flags |
|----|------|--------:|----------:|-----------:|-------|
| `bcpl` | B | 1784 | 22 | 0 | tiny_vs_large_g4,low_nt_overlap,micro_parser |
| `stringtemplate` | D | 1421 | 43 | 0 | tiny_vs_large_g4,low_nt_overlap,micro_parser |
| `php` | D | 1353 | 105 | 0 | tiny_vs_large_g4,low_nt_overlap |
| `logo/ucb-logo` | B | 877 | 65 | 0 | tiny_vs_large_g4,low_nt_overlap |
| `powerquery` | B | 724 | 23 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `erlang` | B | 699 | 26 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `wat` | B | 691 | 23 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `bicep` | B | 688 | 28 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `pddl` | B | 621 | 24 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `hexpat` | B | 620 | 24 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `xpath/xpath20` | B | 619 | 33 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `iri` | B | 614 | 23 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `javacc` | B | 597 | 21 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `squirrel` | B | 591 | 26 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `tinyos_nesc` | B | 587 | 20 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `graphql` | B | 571 | 62 | 0 | tiny_vs_medium_g4,low_nt_overlap |
| `wren` | B | 566 | 25 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `spl` | B | 553 | 23 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `iso8601` | B | 551 | 42 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `sparql` | B | 551 | 81 | 0 | tiny_vs_medium_g4,low_nt_overlap |
| `smiles` | B | 549 | 44 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `wavefront` | B | 532 | 72 | 0 | tiny_vs_medium_g4,low_nt_overlap |
| `kquery` | B | 526 | 58 | 0 | tiny_vs_medium_g4,low_nt_overlap |
| `modelica` | B | 501 | 23 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `elixir` | B | 500 | 22 | 0 | tiny_vs_medium_g4,low_nt_overlap,micro_parser |
| `v` | B | 1341 | 378 | 0 | low_nt_overlap |
| `smtlibv2` | B | 1171 | 499 | 0 | low_nt_overlap |
| `agc` | B | 1154 | 344 | 0 | low_nt_overlap |
| `sdl` | B | 1089 | 407 | 0 | low_nt_overlap |
| `basic` | B | 1042 | 497 | 0 | low_nt_overlap |
| `kirikiri-tjs` | B | 935 | 386 | 0 | low_nt_overlap |
| `algol60` | B | 929 | 289 | 0 | low_nt_overlap |
| `lpc` | B | 891 | 308 | 0 | low_nt_overlap |
| `kuka` | B | 863 | 443 | 0 | low_nt_overlap |
| `pcre` | B | 844 | 404 | 0 | low_nt_overlap |
| `pascal` | B | 830 | 416 | 0 | low_nt_overlap |
| `tnsnames` | D | 828 | 355 | 0 | low_nt_overlap |
| `webidl` | B | 757 | 412 | 0 | low_nt_overlap |
| `fusion-tables` | B | 716 | 297 | 0 | low_nt_overlap |
| `protobuf/protobuf2` | B | 711 | 353 | 0 | low_nt_overlap |
| `antlr/antlr3` | D | 704 | 289 | 0 | low_nt_overlap |
| `antlr/antlr2` | D | 701 | 345 | 0 | low_nt_overlap |
| `protobuf/protobuf3` | B | 686 | 336 | 0 | low_nt_overlap |
| `less` | D | 677 | 225 | 0 | low_nt_overlap |
| `modula2pim4` | B | 639 | 457 | 0 | low_nt_overlap |
| `alef` | B | 635 | 441 | 0 | low_nt_overlap |
| `bison` | D | 592 | 196 | 0 | low_nt_overlap |
| `mumps` | B | 565 | 293 | 0 | low_nt_overlap |
| `evm-bytecode` | B | 544 | 185 | 0 | low_nt_overlap |
| `awk` | B | 532 | 319 | 0 | low_nt_overlap |
| `turtle-doc` | B | 417 | 115 | 0 | tiny_vs_medium_g4 |

## W5 — long tail (1)

| id | tier | g4_lines | lpg_lines | nt_overlap | flags |
|----|------|--------:|----------:|-----------:|-------|
| `unicode/unicode16` | D | 3100 | 56 | 0 | tiny_vs_large_g4,low_nt_overlap |

## Agent rules

1. NEVER write `nested token stream` / `item ::= atom` parsers.
2. Prefer: `python3 tools/antlr2lpg.py <id>` then hand-fix lexer + examples + harness.
3. Non-overlapping id batches only.
4. Re-run this scanner after each batch.

Machine-readable: `tools/_port_plan.json`, `tools/_soup_ids.txt`

