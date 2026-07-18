# 花架子重扫结论（v3 final）

扫描 **393** 个 unit。

## 总览

| 类别 | 数量 | 说明 |
|------|-----:|------|
| **真花架子（soup dump）** | **3** | `item ::= IDENTIFIER` / nested token-stream |
| 结构偏薄（thin vs g4） | 5 | parser 相对上游过薄且 NT 重叠低 |
| 样例债（漏报主因） | 154 | 声称 port/subset，但只有单行/过少样例 |
| status 标 smoke | 6 | 其中 **5** 个 parser 已不像 smoke（status 误报） |
| 经典 nested token-stream | 0 | 已清空 |

## 1. 漏报：仍是 soup 的真花架子

| id | g4 | lpg | ex/ml | q |
|----|---:|----:|------:|---|
| `flatbuffers` | 381 | 71 | 19/19 | language_subset |
| `cto` | 377 | 54 | 7/7 | language_subset |
| `aql` | 363 | 82 | 24/19 | language_subset |

_旧扫描只认 `item/atom/paren` 模板，漏掉了 `schema ::= $empty` + `item ::= IDENTIFIER` 这种 dump。_

## 2. 结构偏薄（需人工确认，不全是花架子）

| id | tag | g4 | lpg | ov | ex/ml |
|----|-----|---:|----:|---:|------:|
| `unicode/unicode16` | THIN_VS_G4 | 3100 | 61 | 2 | 5/5 |
| `chip8` | THIN_VS_G4 | 238 | 64 | 2 | 1/1 |
| `bibtex` | THIN_VS_G4 | 232 | 34 | 4 | 2/2 |
| `muparser` | THIN_VS_G4 | 231 | 47 | 3 | 1/1 |
| `apt` | THIN_VS_G4 | 224 | 33 | 3 | 2/0 |

## 3. 误报

### status 仍标 `token_stream_smoke`，但 parser 已是语言形

- `cmake`: lpg=32 nts=6 ex=1/1 — 应改为 `language_subset`/`language_port` + 补样例
- `itn`: lpg=35 nts=7 ex=1/1 — 应改为 `language_subset`/`language_port` + 补样例
- `pbm`: lpg=38 nts=7 ex=1/1 — 应改为 `language_subset`/`language_port` + 补样例
- `srt`: lpg=39 nts=7 ex=1/1 — 应改为 `language_subset`/`language_port` + 补样例
- `stl`: lpg=37 nts=7 ex=1/1 — 应改为 `language_subset`/`language_port` + 补样例

### NT 重叠启发式误伤
- `html`: curated+examples 共 **4** 文件（ml=3），parser 有 document/element；ov=0 低是因为 g4 命名不同，**不是花架子**。
- 大 parser + 空 curated（如 `css3` ov=75）：属于**样例债**，不是结构花架子。

## 4. 样例债（top 25）— 最大漏报面

| id | g4 | lpg | ex/ml | ov | q |
|----|---:|----:|------:|---:|---|
| `cobol85` | 7558 | 4618 | 1/1 | 618 | language_subset |
| `sql/cockroachdb` | 6323 | 5597 | 1/0 | 807 | language_subset |
| `sql/mysql/Positive-Technologies` | 4894 | 5455 | 1/0 | 362 | language_subset |
| `edif300` | 4526 | 2984 | 1/0 | 832 | language_subset |
| `gql` | 3775 | 2510 | 1/1 | 571 | language_subset |
| `sql/starrocks` | 3632 | 4325 | 1/0 | 437 | language_subset |
| `sql/hive/v4` | 3525 | 3132 | 6/0 | 497 | language_subset |
| `haskell` | 3515 | 1745 | 1/0 | 254 | language_subset |
| `sysml-v2` | 3322 | 2475 | 1/1 | 495 | language_subset |
| `sql/hive/v2` | 2892 | 2565 | 1/0 | 377 | language_subset |
| `sql/hive/v3` | 2891 | 2563 | 1/0 | 376 | language_subset |
| `vba/vba7_1` | 2713 | 2465 | 1/1 | 347 | language_subset |
| `llvm-ir` | 2513 | 2444 | 2/2 | 394 | language_subset |
| `fortran/fortran90` | 2486 | 1728 | 1/1 | 350 | language_subset |
| `vhdl/vhdl2008` | 2451 | 1519 | 1/1 | 242 | language_subset |
| `objc` | 2443 | 1212 | 2/0 | 165 | language_subset |
| `icalendar` | 2331 | 1554 | 1/1 | 375 | language_subset |
| `vhdl/vhdl` | 2094 | 1448 | 1/1 | 255 | language_subset |
| `sql/databricks` | 2032 | 1734 | 1/0 | 292 | language_subset |
| `ruleworks` | 2024 | 825 | 2/2 | 186 | language_subset |
| `vba/vba6` | 2014 | 1754 | 1/1 | 148 | language_subset |
| `solidity` | 1961 | 991 | 2/1 | 94 | language_subset |
| `bcpl` | 1784 | 679 | 2/0 | 93 | language_subset |
| `ada/ada2005` | 1590 | 1414 | 1/1 | 269 | language_subset |
| `cql3` | 1584 | 1250 | 1/0 | 281 | language_subset |
| … | | | | | 共 154 |

## 5. CLEAR 未完成批次快照

| batch | id | soup | ex/ml | ov | lpg | q |
|-------|----|------|------:|---:|----:|---|
| CLEAR_2 | `iri` | False | 3/3 | 42 | 501 | language_subset |
| CLEAR_2 | `iso8601` | False | 3/3 | 94 | 416 | language_subset |
| CLEAR_2 | `smiles` | False | 3/3 | 19 | 350 | language_subset |
| CLEAR_2 | `r` | False | 3/3 | 7 | 134 | language_subset |
| CLEAR_2 | `jpa` | False | 3/3 | 88 | 568 | language_subset |
| CLEAR_3 | `asm/asm6502` | False | 3/3 | 13 | 75 | language_subset |
| CLEAR_3 | `argus` | False | 4/4 | 60 | 933 | language_subset |
| CLEAR_3 | `turtle-doc` | False | 3/3 | 23 | 123 | language_subset |
| CLEAR_3 | `powerbuilderdw` | False | 3/3 | 22 | 304 | language_subset |
| CLEAR_3 | `orwell` | False | 4/0 | 56 | 360 | language_subset |
| CLEAR_5 | `xsd-regex` | False | 4/0 | 20 | 115 | language_subset |
| CLEAR_5 | `gtin` | False | 7/0 | 36 | 115 | language_subset |
| CLEAR_5 | `morsecode` | False | 5/0 | 38 | 67 | language_port |
| CLEAR_5 | `romannumerals` | False | 3/0 | 11 | 68 | language_port |
| CLEAR_5 | `wln` | False | 3/2 | 3 | 55 | language_port |

## 6. 标杆 sanity（应干净）

- `json`: soup=False ex=3/2 ov=5 q=language_port
- `json5`: soup=False ex=5/3 ov=7 q=language_port
- `csv`: soup=False ex=7/7 ov=4 q=language_port
- `calculator`: soup=False ex=3/3 ov=12 q=language_port
- `java/java`: soup=False ex=5/5 ov=127 q=language_port
- `stringtemplate`: soup=False ex=7/7 ov=11 q=language_subset
- `rego`: soup=False ex=3/3 ov=36 q=language_subset
- `metric`: soup=False ex=5/5 ov=8 q=language_subset

---

证据文件: `tools/_rescan_shelf.json` / `tools/_rescan_shelf.md`

