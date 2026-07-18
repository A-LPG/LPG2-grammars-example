# Flower-shelf audit (strict)

Generated full corpus. Grades: {'D_SHELF': 52, 'B_OK': 182, 'A_SOLID': 81, 'C_WEAK': 73, 'F_SOUP': 2}

## Grade legend

- **A_SOLID**: large structural port or high coverage ratio
- **B_OK**: plausible small/medium port
- **C_WEAK**: low nonterminal overlap with g4
- **D_SHELF**: thin stub / ratio tiny / overclaim / clone cluster
- **F_SOUP**: classic nested token-stream

## Needs work (C/D/F/MISSING): 127

| id | grade | g4 | lpg | ov | ratio | flags | q | parse_ok |
|----|-------|---:|----:|---:|------:|-------|---|----------|
| `antlr/antlr4` | F_SOUP | 329545 | 57 | 0 | 0.0 | SOUP,THIN_VS_G4,LOW_NT_OVERLAP,RATIO_LT_8PCT,CURATED_THIN_COMMENT | token_stream_smoke | True |
| `javascript/ecmascript` | D_SHELF | 9481 | 393 | 0 | 0.041 | LOW_NT_OVERLAP,RATIO_LT_8PCT,PARSE_OK_BUT_SHELF | language_subset | True |
| `sql/snowflake` | D_SHELF | 6329 | 60 | 0 | 0.009 | THIN_VS_G4,LOW_NT_OVERLAP,RATIO_LT_8PCT,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `csharp/v8-spec` | D_SHELF | 3244 | 131 | 0 | 0.04 | THIN_VS_G4,LOW_NT_OVERLAP,RATIO_LT_8PCT,PARSE_OK_BUT_SHELF | language_subset | True |
| `unicode/unicode16` | D_SHELF | 3100 | 56 | 0 | 0.018 | THIN_VS_G4,LOW_NT_OVERLAP,RATIO_LT_8PCT | language_subset | False |
| `kotlin/kotlin` | D_SHELF | 3015 | 117 | 0 | 0.039 | THIN_VS_G4,LOW_NT_OVERLAP,RATIO_LT_8PCT,PARSE_OK_BUT_SHELF | language_subset | True |
| `kotlin/kotlin-formal` | D_SHELF | 3001 | 117 | 0 | 0.039 | THIN_VS_G4,LOW_NT_OVERLAP,RATIO_LT_8PCT,PARSE_OK_BUT_SHELF | language_subset | True |
| `csharp/v6` | D_SHELF | 2480 | 131 | 0 | 0.053 | THIN_VS_G4,LOW_NT_OVERLAP,RATIO_LT_8PCT,PARSE_OK_BUT_SHELF | language_subset | True |
| `swift/swift3` | C_WEAK | 2392 | 315 | 0 | 0.132 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `csharp/v7` | D_SHELF | 2381 | 131 | 0 | 0.055 | THIN_VS_G4,LOW_NT_OVERLAP,RATIO_LT_8PCT,PARSE_OK_BUT_SHELF | language_subset | True |
| `swift/swift5` | C_WEAK | 2219 | 315 | 0 | 0.142 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `swift/swift2` | C_WEAK | 2027 | 315 | 0 | 0.155 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `bcpl` | D_SHELF | 1784 | 22 | 0 | 0.012 | MICRO_STUB,THIN_VS_G4,LOW_NT_OVERLAP,RATIO_LT_8PCT,CURATED_THIN_COMMENT | language_subset | True |
| `sql/derby` | D_SHELF | 1699 | 60 | 0 | 0.035 | THIN_VS_G4,LOW_NT_OVERLAP,RATIO_LT_8PCT,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `asm/masm` | C_WEAK | 1547 | 435 | 0 | 0.281 | LOW_NT_OVERLAP | language_subset | False |
| `scala/scala3` | D_SHELF | 1535 | 132 | 0 | 0.086 | THIN_VS_G4,LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `stringtemplate` | D_SHELF | 1421 | 43 | 0 | 0.03 | MICRO_STUB,THIN_VS_G4,LOW_NT_OVERLAP,RATIO_LT_8PCT,CURATED_THIN_COMMENT | language_subset | True |
| `scala/scala2` | D_SHELF | 1383 | 132 | 0 | 0.095 | THIN_VS_G4,LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `php` | D_SHELF | 1353 | 105 | 0 | 0.078 | THIN_VS_G4,LOW_NT_OVERLAP,RATIO_LT_8PCT,PARSE_OK_BUT_SHELF | language_port | True |
| `v` | C_WEAK | 1341 | 378 | 0 | 0.282 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `sql/sqlite` | D_SHELF | 1192 | 61 | 0 | 0.051 | THIN_VS_G4,LOW_NT_OVERLAP,RATIO_LT_8PCT,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `smtlibv2` | C_WEAK | 1171 | 499 | 0 | 0.426 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `python/python` | C_WEAK | 1155 | 582 | 0 | 0.504 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `agc` | C_WEAK | 1154 | 344 | 0 | 0.298 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `asm/asm8086` | C_WEAK | 1112 | 324 | 0 | 0.291 | LOW_NT_OVERLAP | language_subset | False |
| `sdl` | C_WEAK | 1089 | 407 | 0 | 0.374 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `basic` | C_WEAK | 1042 | 497 | 0 | 0.477 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `kirikiri-tjs` | C_WEAK | 935 | 386 | 0 | 0.413 | LOW_NT_OVERLAP | language_subset | False |
| `algol60` | C_WEAK | 929 | 289 | 0 | 0.311 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `lpc` | C_WEAK | 891 | 308 | 0 | 0.346 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `logo/ucb-logo` | D_SHELF | 877 | 65 | 0 | 0.074 | THIN_VS_G4,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,OVERCLAIM_real_g4_port,PARSE_OK_BUT_SHELF | language_subset | True |
| `kuka` | C_WEAK | 863 | 443 | 0 | 0.513 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `rexx` | C_WEAK | 859 | 535 | 0 | 0.623 | LOW_NT_OVERLAP | language_subset | False |
| `pcre` | C_WEAK | 844 | 404 | 0 | 0.479 | LOW_NT_OVERLAP | language_subset | False |
| `pascal` | C_WEAK | 830 | 416 | 0 | 0.501 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `tnsnames` | C_WEAK | 828 | 355 | 0 | 0.429 | LOW_NT_OVERLAP | language_subset | False |
| `xpath/xpath31` | C_WEAK | 813 | 578 | 0 | 0.711 | LOW_NT_OVERLAP | language_subset | False |
| `golang` | C_WEAK | 765 | 583 | 0 | 0.762 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `webidl` | C_WEAK | 757 | 412 | 0 | 0.544 | LOW_NT_OVERLAP | language_subset | False |
| `sql/informix-sql` | C_WEAK | 728 | 411 | 0 | 0.565 | LOW_NT_OVERLAP | language_subset | False |
| `powerquery` | D_SHELF | 724 | 23 | 0 | 0.032 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `fusion-tables` | C_WEAK | 716 | 297 | 0 | 0.415 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `corundum` | D_SHELF | 714 | 23 | 0 | 0.032 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `protobuf/protobuf2` | C_WEAK | 711 | 353 | 0 | 0.496 | LOW_NT_OVERLAP | language_subset | False |
| `css3` | D_SHELF | 705 | 26 | 0 | 0.037 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `antlr/antlr3` | C_WEAK | 704 | 289 | 0 | 0.411 | LOW_NT_OVERLAP | language_subset | False |
| `antlr/antlr2` | C_WEAK | 701 | 345 | 0 | 0.492 | LOW_NT_OVERLAP | language_subset | False |
| `amazon-states-language` | C_WEAK | 699 | 593 | 0 | 0.848 | LOW_NT_OVERLAP | language_subset | False |
| `erlang` | D_SHELF | 699 | 26 | 0 | 0.037 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `asm/ptx/ptx-isa-1.0` | C_WEAK | 697 | 482 | 0 | 0.692 | LOW_NT_OVERLAP | language_subset | False |
| `wat` | D_SHELF | 691 | 23 | 0 | 0.033 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `bicep` | D_SHELF | 688 | 28 | 0 | 0.041 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `protobuf/protobuf3` | C_WEAK | 686 | 336 | 0 | 0.49 | LOW_NT_OVERLAP | language_subset | False |
| `cypher` | D_SHELF | 678 | 21 | 0 | 0.031 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `less` | C_WEAK | 677 | 225 | 0 | 0.332 | LOW_NT_OVERLAP | language_subset | False |
| `sql/drill` | C_WEAK | 652 | 578 | 0 | 0.887 | LOW_NT_OVERLAP | language_subset | False |
| `modula2pim4` | C_WEAK | 639 | 457 | 0 | 0.715 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `alef` | C_WEAK | 635 | 441 | 0 | 0.694 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `pddl` | D_SHELF | 621 | 24 | 0 | 0.039 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `hexpat` | D_SHELF | 620 | 24 | 0 | 0.039 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `xpath/xpath20` | D_SHELF | 619 | 33 | 0 | 0.053 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `iri` | D_SHELF | 614 | 23 | 0 | 0.037 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `asm/asmMASM` | C_WEAK | 602 | 217 | 0 | 0.36 | LOW_NT_OVERLAP | language_subset | False |
| `javacc` | D_SHELF | 597 | 21 | 0 | 0.035 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `bison` | C_WEAK | 592 | 196 | 0 | 0.331 | LOW_NT_OVERLAP | language_subset | False |
| `squirrel` | D_SHELF | 591 | 26 | 0 | 0.044 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `tinyos_nesc` | D_SHELF | 587 | 20 | 0 | 0.034 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `asm/asmRISCV` | C_WEAK | 581 | 397 | 0 | 0.683 | LOW_NT_OVERLAP | language_subset | False |
| `atl` | C_WEAK | 572 | 532 | 0 | 0.93 | LOW_NT_OVERLAP | language_subset | False |
| `graphql` | C_WEAK | 571 | 62 | 0 | 0.109 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `wren` | D_SHELF | 566 | 25 | 0 | 0.044 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `mumps` | C_WEAK | 565 | 293 | 0 | 0.519 | LOW_NT_OVERLAP | language_subset | False |
| `spl` | D_SHELF | 553 | 23 | 0 | 0.042 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `iso8601` | D_SHELF | 551 | 42 | 0 | 0.076 | MICRO_STUB,LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `sparql` | C_WEAK | 551 | 81 | 0 | 0.147 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `smiles` | D_SHELF | 549 | 44 | 0 | 0.08 | MICRO_STUB,LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `evm-bytecode` | C_WEAK | 544 | 185 | 0 | 0.34 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `awk` | C_WEAK | 532 | 319 | 0 | 0.6 | LOW_NT_OVERLAP | language_subset | False |
| `wavefront` | C_WEAK | 532 | 72 | 0 | 0.135 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `kquery` | C_WEAK | 526 | 58 | 0 | 0.11 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `modelica` | D_SHELF | 501 | 23 | 0 | 0.046 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `elixir` | D_SHELF | 500 | 22 | 0 | 0.044 | MICRO_STUB,LOW_NT_OVERLAP,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `joss` | C_WEAK | 489 | 245 | 0 | 0.501 | LOW_NT_OVERLAP | language_subset | False |
| `r` | C_WEAK | 484 | 120 | 0 | 0.248 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `action` | C_WEAK | 482 | 343 | 0 | 0.712 | LOW_NT_OVERLAP | language_subset | False |
| `oberon` | C_WEAK | 479 | 366 | 0 | 0.764 | LOW_NT_OVERLAP | language_subset | False |
| `restructuredtext` | C_WEAK | 479 | 464 | 0 | 0.969 | LOW_NT_OVERLAP | language_subset | False |
| `langium` | C_WEAK | 476 | 430 | 0 | 0.903 | LOW_NT_OVERLAP | language_subset | False |
| `jpa` | C_WEAK | 475 | 487 | 0 | 1.025 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `velocity` | C_WEAK | 467 | 196 | 0 | 0.42 | LOW_NT_OVERLAP | language_subset | False |
| `parkingsign` | C_WEAK | 466 | 201 | 0 | 0.431 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `gvpr` | C_WEAK | 465 | 293 | 0 | 0.63 | LOW_NT_OVERLAP | language_subset | False |
| `prov-n` | C_WEAK | 463 | 234 | 0 | 0.505 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `limbo` | C_WEAK | 455 | 322 | 0 | 0.708 | LOW_NT_OVERLAP | language_subset | False |
| `spass` | C_WEAK | 453 | 360 | 0 | 0.795 | LOW_NT_OVERLAP | language_subset | False |
| `mdx` | C_WEAK | 443 | 250 | 0 | 0.564 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `caql` | C_WEAK | 442 | 58 | 0 | 0.131 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `ocl` | C_WEAK | 440 | 471 | 0 | 1.07 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `promql` | C_WEAK | 440 | 213 | 0 | 0.484 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `asm/asm6502` | C_WEAK | 438 | 65 | 0 | 0.148 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `http` | C_WEAK | 433 | 188 | 0 | 0.434 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `yara` | C_WEAK | 432 | 266 | 0 | 0.616 | LOW_NT_OVERLAP | language_subset | False |
| `pike` | C_WEAK | 425 | 341 | 0 | 0.802 | LOW_NT_OVERLAP | language_subset | False |
| `gdscript` | C_WEAK | 418 | 411 | 0 | 0.983 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `turtle-doc` | C_WEAK | 417 | 115 | 0 | 0.276 | LOW_NT_OVERLAP,PARSE_OK_BUT_SHELF | language_subset | True |
| `snobol` | C_WEAK | 415 | 207 | 0 | 0.499 | LOW_NT_OVERLAP | language_subset | False |
| `angelscript` | C_WEAK | 414 | 430 | 0 | 1.039 | LOW_NT_OVERLAP | language_subset | False |
| `miniscript` | C_WEAK | 407 | 201 | 0 | 0.494 | LOW_NT_OVERLAP | language_subset | False |
| `clojure` | D_SHELF | 358 | 25 | 0 | 0.07 | MICRO_STUB,PARSE_OK_BUT_SHELF | token_stream_smoke | True |
| `clu` | D_SHELF | 298 | 18 | 0 | 0.06 | MICRO_STUB,PARSE_OK_BUT_SHELF | token_stream_smoke | True |
| `prolog` | D_SHELF | 295 | 29 | 0 | 0.098 | MICRO_STUB,PARSE_OK_BUT_SHELF | token_stream_smoke | True |
| `terraform` | D_SHELF | 288 | 24 | 0 | 0.083 | MICRO_STUB,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | token_stream_smoke | True |
| `pl0` | D_SHELF | 283 | 44 | 0 | 0.155 | MICRO_STUB,PARSE_OK_BUT_SHELF | language_port | True |
| `thrift` | D_SHELF | 279 | 34 | 0 | 0.122 | MICRO_STUB,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| `pgn` | D_SHELF | 273 | 27 | 0 | 0.099 | MICRO_STUB,PARSE_OK_BUT_SHELF | token_stream_smoke | True |
| `gtin` | D_SHELF | 261 | 45 | 0 | 0.172 | MICRO_STUB,PARSE_OK_BUT_SHELF | language_subset | True |
| `dcm` | D_SHELF | 241 | 49 | 0 | 0.203 | MICRO_STUB,PARSE_OK_BUT_SHELF | language_subset | True |
| `bibtex` | D_SHELF | 232 | 34 | 0 | 0.147 | MICRO_STUB,PARSE_OK_BUT_SHELF | language_subset | True |
| `muparser` | D_SHELF | 231 | 47 | 0 | 0.203 | MICRO_STUB,PARSE_OK_BUT_SHELF | language_subset | True |
| `capnproto` | D_SHELF | 228 | 21 | 0 | 0.092 | MICRO_STUB,CURATED_THIN_COMMENT,PARSE_OK_BUT_SHELF | language_subset | True |
| … | | | | | | +7 in _shelf_audit.json | | |

## A_SOLID sample (81)

- `sql/plsql` lpg=14697 g4=12660 ov=0
- `sql/tsql` lpg=9018 g4=7602 ov=0
- `sql/teradata` lpg=8704 g4=6483 ov=0
- `sql/mariadb` lpg=5601 g4=5038 ov=0
- `sql/cockroachdb` lpg=5597 g4=6323 ov=0
- `sql/postgresql` lpg=5482 g4=6947 ov=0
- `sql/mysql/Positive-Technologies` lpg=5455 g4=4894 ov=0
- `sql/mysql/Oracle` lpg=5016 g4=18774 ov=0
- `verilog/systemverilog` lpg=4803 g4=4856 ov=0
- `cobol85` lpg=4618 g4=7558 ov=0
- `sql/starrocks` lpg=4325 g4=3632 ov=0
- `sql/hive/v4` lpg=3122 g4=3525 ov=0
- `asm/nasm` lpg=3038 g4=5704 ov=0
- `edif300` lpg=2984 g4=4526 ov=0
- `sql/hive/v2` lpg=2565 g4=2892 ov=0
- `sql/hive/v3` lpg=2563 g4=2891 ov=0
- `gql` lpg=2510 g4=3775 ov=0
- `sysml-v2` lpg=2475 g4=3322 ov=0
- `vba/vba7_1` lpg=2465 g4=2713 ov=0
- `llvm-ir` lpg=2444 g4=2513 ov=0
- `verilog/verilog` lpg=2215 g4=2635 ov=0
- `sql/trino` lpg=2140 g4=1523 ov=0
- `ada/ada2022` lpg=1951 g4=1976 ov=0
- `asm/ptx/ptx-isa-2.1` lpg=1909 g4=3505 ov=0
- `vb6` lpg=1903 g4=1501 ov=0
- `informix` lpg=1833 g4=2835 ov=0
- `vba/vba6` lpg=1754 g4=2014 ov=0
- `haskell` lpg=1745 g4=3515 ov=0
- `sql/databricks` lpg=1734 g4=2032 ov=0
- `fortran/fortran90` lpg=1728 g4=2486 ov=0
