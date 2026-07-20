# Skeptical true-port audit

Why 'done so fast' is suspicious: Many agents report OK when harness passes on trivial curated examples (;/smoke) or thin stubs; that is not true port.

## Counts: {'WEAK': 153, 'REALISH': 207, 'SHELF': 13, 'SUBSET_OK': 16, 'SOUP': 1}

- REALISH: structural parser + substantive examples
- SUBSET_OK: structural-ish + moderate examples
- WEAK / SHELF / SOUP: flower shelf or worse — **not** done

## Not truly ported yet: 167

| id | verdict | g4 | lpg | ex | parse_ok | flags |
|----|---------|---:|----:|---:|----------|-------|
| `javascript/ecmascript` | WEAK | 9481 | 393 | 3 | True | UNDERSIZED,PARSE_OK_BUT_SHELFY |
| `sql/teradata` | SHELF | 6483 | 8704 | 1 | False | TRIVIAL_EXAMPLES |
| `unicode/unicode16` | SHELF | 3100 | 57 | 1 | True | THIN_PARSER,UNDERSIZED,TRIVIAL_EXAMPLES,OVERCLAIM,PARSE_OK_BUT_SHELFY |
| `swift/swift3` | WEAK | 2392 | 315 | 3 | True | UNDERSIZED,PARSE_OK_BUT_SHELFY |
| `swift/swift5` | WEAK | 2219 | 315 | 3 | True | UNDERSIZED,PARSE_OK_BUT_SHELFY |
| `sql/trino` | SHELF | 1523 | 2140 | 1 | False | TRIVIAL_EXAMPLES |
| `stringtemplate` | SHELF | 1421 | 109 | 3 | False | THIN_PARSER,UNDERSIZED,OVERCLAIM |
| `logo/ucb-logo` | SHELF | 877 | 88 | 3 | True | THIN_PARSER,UNDERSIZED,OVERCLAIM,PARSE_OK_BUT_SHELFY |
| `bison` | SHELF | 592 | 196 | 3 | True | THIN_PARSER,OVERCLAIM,PARSE_OK_BUT_SHELFY |
| `atl` | SHELF | 572 | 532 | 1 | False | TRIVIAL_EXAMPLES |
| `spl` | SHELF | 553 | 139 | 3 | True | THIN_PARSER,PARSE_OK_BUT_SHELFY |
| `evm-bytecode` | SHELF | 544 | 185 | 3 | True | THIN_PARSER,OVERCLAIM,PARSE_OK_BUT_SHELFY |
| `kquery` | SHELF | 526 | 170 | 3 | False | THIN_PARSER |
| `joss` | SHELF | 489 | 245 | 1 | False | TRIVIAL_EXAMPLES |
| `argus` | SHELF | 433 | 769 | 1 | False | TRIVIAL_EXAMPLES |
| `flatbuffers` | WEAK | 381 | 71 | 3 | True |  |
| `cto` | WEAK | 377 | 54 | 3 | True |  |
| `plucid` | SHELF | 363 | 180 | 1 | True | TRIVIAL_EXAMPLES,OVERCLAIM,PARSE_OK_BUT_SHELFY |
| `robotwars` | WEAK | 325 | 60 | 3 | True |  |
| `clif` | WEAK | 308 | 79 | 3 | True |  |
| `pl0` | WEAK | 283 | 44 | 3 | True |  |
| `rcs` | WEAK | 282 | 56 | 3 | True |  |
| `pgn` | WEAK | 273 | 27 | 3 | True |  |
| `bdf` | WEAK | 271 | 53 | 3 | True |  |
| `xsd-regex` | WEAK | 269 | 108 | 1 | False | TRIVIAL_EXAMPLES |
| `gtin` | WEAK | 261 | 45 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `wkt-crs-v1` | WEAK | 257 | 68 | 3 | True |  |
| `mumath` | WEAK | 247 | 61 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `dcm` | WEAK | 241 | 49 | 3 | True |  |
| `logo/logo` | WEAK | 241 | 72 | 3 | True |  |
| `morsecode` | WEAK | 239 | 60 | 1 | True | TRIVIAL_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `calculator` | WEAK | 238 | 72 | 3 | True |  |
| `chip8` | WEAK | 238 | 64 | 3 | True |  |
| `bibtex` | WEAK | 232 | 34 | 3 | True |  |
| `muparser` | WEAK | 231 | 47 | 3 | True |  |
| `memcached_protocol` | WEAK | 227 | 68 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `apt` | WEAK | 224 | 33 | 3 | True |  |
| `edn` | WEAK | 221 | 65 | 3 | True |  |
| `abb` | WEAK | 217 | 40 | 3 | True |  |
| `lisa` | WEAK | 214 | 65 | 3 | True |  |
| `javadoc` | WEAK | 211 | 59 | 3 | True |  |
| `esolang/snowball` | WEAK | 207 | 69 | 3 | True |  |
| `esolang/lolcode` | WEAK | 203 | 43 | 3 | True |  |
| `molecule` | WEAK | 199 | 33 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `dot` | WEAK | 197 | 50 | 3 | True |  |
| `redcode` | WEAK | 197 | 30 | 3 | True |  |
| `pest` | WEAK | 196 | 25 | 3 | True |  |
| `cql` | WEAK | 194 | 79 | 3 | True |  |
| `guido` | WEAK | 193 | 62 | 3 | True |  |
| `rfc822/rfc822-emailaddress` | WEAK | 193 | 43 | 3 | True |  |
| `sieve` | WEAK | 192 | 36 | 3 | True |  |
| `flowmatic` | WEAK | 188 | 49 | 3 | True |  |
| `romannumerals` | WEAK | 188 | 56 | 1 | True | TRIVIAL_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `suokif` | WEAK | 185 | 36 | 3 | True |  |
| `mps` | WEAK | 183 | 58 | 3 | True |  |
| `refal` | WEAK | 178 | 37 | 3 | True |  |
| `esolang/whenever` | WEAK | 173 | 58 | 3 | True |  |
| `sapf` | WEAK | 172 | 24 | 3 | True |  |
| `metamath` | WEAK | 170 | 55 | 3 | True |  |
| `rpn` | WEAK | 170 | 25 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `sgf` | WEAK | 170 | 30 | 3 | True |  |
| `wln` | WEAK | 170 | 26 | 1 | True | TRIVIAL_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `creole` | WEAK | 167 | 63 | 3 | True |  |
| `abnf` | WEAK | 162 | 64 | 3 | True |  |
| `upnp` | WEAK | 160 | 34 | 3 | True |  |
| `racket-isl` | WEAK | 159 | 71 | 3 | True |  |
| `d2` | WEAK | 158 | 71 | 3 | True |  |
| `amazon-states-language-intrinsic-functions` | WEAK | 157 | 58 | 3 | True |  |
| `arithmetic` | WEAK | 157 | 53 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `json5` | WEAK | 153 | 56 | 3 | True |  |
| `stacktrace` | WEAK | 152 | 45 | 3 | True |  |
| `oncrpc` | WEAK | 148 | 69 | 3 | True |  |
| `infosapient` | WEAK | 147 | 41 | 3 | True |  |
| `janus` | WEAK | 145 | 75 | 3 | True |  |
| `rfc3080` | WEAK | 145 | 32 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `gedcom` | WEAK | 143 | 53 | 3 | True |  |
| `maml` | WEAK | 142 | 59 | 3 | True |  |
| `guitartab` | WEAK | 138 | 35 | 3 | True |  |
| `rfc1960` | WEAK | 137 | 62 | 3 | True |  |
| `ebnf` | WEAK | 136 | 50 | 3 | True |  |
| `muddb` | WEAK | 136 | 59 | 3 | True |  |
| `gff3` | WEAK | 135 | 48 | 3 | True |  |
| `unicode/graphemes` | WEAK | 135 | 19 | 1 | True | TRIVIAL_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `datalog` | WEAK | 133 | 57 | 3 | True |  |
| `ply` | WEAK | 131 | 63 | 3 | True |  |
| `star` | WEAK | 131 | 63 | 3 | True |  |
| `esolang/barrous` | WEAK | 130 | 44 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `doiurl` | WEAK | 129 | 47 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `dice` | WEAK | 123 | 42 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `ron` | WEAK | 123 | 74 | 3 | True |  |
| `racket-bsl` | WEAK | 122 | 58 | 3 | True |  |
| `url` | WEAK | 122 | 75 | 3 | True |  |
| `metric` | WEAK | 121 | 38 | 1 | True | TRIVIAL_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `rfc822/rfc822-datetime` | WEAK | 121 | 46 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `ctl` | WEAK | 119 | 32 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `propcalc` | WEAK | 117 | 44 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `fol` | WEAK | 116 | 53 | 3 | True |  |
| `jam` | WEAK | 116 | 62 | 3 | True |  |
| `tinyc` | WEAK | 115 | 53 | 3 | True |  |
| `clf` | WEAK | 114 | 22 | 3 | True |  |
| `karel` | WEAK | 114 | 41 | 3 | True |  |
| `tnt` | WEAK | 114 | 45 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `tinybasic` | WEAK | 111 | 56 | 3 | True |  |
| `pdn` | WEAK | 110 | 37 | 3 | True |  |
| `microc` | WEAK | 109 | 42 | 3 | True |  |
| `sici` | WEAK | 106 | 46 | 3 | True |  |
| `gml` | WEAK | 105 | 40 | 3 | True |  |
| `tiny` | WEAK | 104 | 40 | 3 | True |  |
| `bibcode` | WEAK | 103 | 37 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `fasta` | WEAK | 103 | 22 | 3 | True |  |
| `ltl` | WEAK | 103 | 28 | 1 | True | TRIVIAL_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `fen` | WEAK | 102 | 43 | 3 | True |  |
| `cayenne` | WEAK | 101 | 75 | 1 | True | TRIVIAL_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `databank` | WEAK | 100 | 40 | 3 | True |  |
| `cmake` | WEAK | 99 | 32 | 3 | True |  |
| `esolang/sickbay` | WEAK | 99 | 45 | 3 | True |  |
| `inf` | WEAK | 99 | 35 | 3 | True |  |
| `scotty` | WEAK | 99 | 38 | 1 | True | TRIVIAL_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `dif` | WEAK | 98 | 38 | 3 | True |  |
| `esolang/skull` | WEAK | 97 | 45 | 3 | True |  |
| `sexpression` | SOUP | 96 | 46 | 2 | True | SOUP,WEAK_EXAMPLES,OVERCLAIM,PARSE_OK_BUT_SHELFY |
| `esolang/brainflak` | WEAK | 95 | 37 | 1 | True | TRIVIAL_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `tcpheader` | WEAK | 92 | 33 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `ttm` | WEAK | 92 | 48 | 3 | True |  |
| `newick` | WEAK | 91 | 39 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `quakemap` | WEAK | 88 | 68 | 3 | True |  |
| `esolang/brainfuck` | WEAK | 86 | 38 | 3 | True |  |
| `esolang/loop` | WEAK | 86 | 41 | 3 | True |  |
| `cookie` | WEAK | 85 | 39 | 3 | True |  |
| `fdo91` | WEAK | 85 | 58 | 3 | True |  |
| `szf` | WEAK | 85 | 52 | 3 | True |  |
| `stellaris` | WEAK | 84 | 55 | 3 | True |  |
| `pii` | WEAK | 83 | 34 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `pmmn` | WEAK | 83 | 38 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `semver` | WEAK | 83 | 51 | 3 | True |  |
| `telephone` | WEAK | 81 | 43 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `lcc` | WEAK | 80 | 52 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `tl` | WEAK | 80 | 31 | 1 | True | TRIVIAL_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `xyz` | WEAK | 80 | 41 | 3 | True |  |
| `trac` | WEAK | 79 | 42 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `json` | WEAK | 78 | 44 | 3 | True |  |
| `callable` | WEAK | 77 | 35 | 3 | True |  |
| `esolang/bio` | WEAK | 77 | 50 | 3 | True |  |
| `esolang/wheel` | WEAK | 77 | 29 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `pbm` | WEAK | 76 | 38 | 3 | True |  |
| `recfile` | WEAK | 76 | 43 | 3 | True |  |
| `bnf` | WEAK | 75 | 50 | 3 | True |  |
| `vba/vba_like` | WEAK | 75 | 69 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `mckeeman-form` | WEAK | 73 | 52 | 3 | True |  |
| `vmf` | WEAK | 73 | 41 | 3 | True |  |
| `aterm` | WEAK | 72 | 54 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `itn` | WEAK | 72 | 35 | 3 | True |  |
| `tsv` | WEAK | 72 | 38 | 3 | True |  |
| `lisp` | WEAK | 70 | 34 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `istc` | WEAK | 69 | 33 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `srt` | WEAK | 69 | 39 | 3 | True |  |
| `useragent` | WEAK | 68 | 37 | 3 | True |  |
| `bencoding` | WEAK | 67 | 41 | 3 | True |  |
| `lambda` | WEAK | 66 | 32 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `rfc1035` | WEAK | 66 | 26 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `p` | WEAK | 62 | 33 | 3 | True |  |
| `csv` | WEAK | 58 | 39 | 3 | True |  |
| `properties` | WEAK | 55 | 40 | 3 | True |  |
| `bcl` | WEAK | 50 | 30 | 1 | True | TRIVIAL_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `esolang/nanofuck` | WEAK | 50 | 30 | 2 | True | WEAK_EXAMPLES,PARSE_OK_BUT_SHELFY |
| `stl` | WEAK | 50 | 37 | 3 | True |  |
| `postalcode` | WEAK | 48 | 22 | 1 | True | TRIVIAL_EXAMPLES,PARSE_OK_BUT_SHELFY |

## REALISH (207) sample
- `sql/plsql` lpg=14697 g4=12660 ex=3
- `sql/tsql` lpg=9028 g4=7602 ex=3
- `sql/snowflake` lpg=7266 g4=6329 ex=3
- `sql/mariadb` lpg=5611 g4=5038 ex=3
- `sql/cockroachdb` lpg=5597 g4=6323 ex=3
- `sql/postgresql` lpg=5492 g4=6947 ex=3
- `sql/mysql/Positive-Technologies` lpg=5455 g4=4894 ex=3
- `sql/mysql/Oracle` lpg=5026 g4=18774 ex=3
- `verilog/systemverilog` lpg=4803 g4=4856 ex=3
- `cobol85` lpg=4618 g4=7558 ex=3
- `sql/starrocks` lpg=4325 g4=3632 ex=3
- `sql/hive/v4` lpg=3132 g4=3525 ex=3
- `asm/nasm` lpg=3038 g4=5704 ex=3
- `edif300` lpg=2984 g4=4526 ex=3
- `sql/hive/v2` lpg=2565 g4=2892 ex=3
- `sql/hive/v3` lpg=2563 g4=2891 ex=3
- `gql` lpg=2510 g4=3775 ex=3
- `sysml-v2` lpg=2475 g4=3322 ex=3
- `vba/vba7_1` lpg=2465 g4=2713 ex=3
- `llvm-ir` lpg=2444 g4=2513 ex=3
- `verilog/verilog` lpg=2215 g4=2635 ex=3
- `csharp/v8-spec` lpg=2182 g4=3244 ex=3
- `ada/ada2022` lpg=1951 g4=1976 ex=3
- `asm/ptx/ptx-isa-2.1` lpg=1909 g4=3505 ex=3
- `vb6` lpg=1903 g4=1501 ex=3
- `informix` lpg=1833 g4=2835 ex=3
- `vba/vba6` lpg=1754 g4=2014 ex=3
- `haskell` lpg=1745 g4=3515 ex=3
- `sql/databricks` lpg=1734 g4=2032 ex=3
- `fortran/fortran90` lpg=1728 g4=2486 ex=3
- `eiffel` lpg=1690 g4=1231 ex=3
- `ada/ada2012` lpg=1689 g4=1751 ex=3
- `kotlin/kotlin-formal` lpg=1641 g4=3001 ex=3
- `csharp/v6` lpg=1591 g4=2480 ex=3
- `icalendar` lpg=1554 g4=2331 ex=3
- `sql/derby` lpg=1544 g4=1699 ex=3
- `csharp/v7` lpg=1534 g4=2381 ex=3
- `kotlin/kotlin` lpg=1520 g4=3015 ex=3
- `vhdl/vhdl2008` lpg=1519 g4=2451 ex=3
- `vhdl/vhdl` lpg=1448 g4=2094 ex=3
