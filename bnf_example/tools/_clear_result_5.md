# CLEAR_5 result — shelf → real ports

IDs: `xsd-regex`, `gtin`, `morsecode`, `romannumerals`, `wln`

## Summary

| id | quality | parser lines | examples | harness |
|----|---------|--------------|----------|---------|
| xsd-regex | language_subset + real_g4_port | 114 | 4 | OK |
| gtin | language_subset + real_g4_port | 114 | 7 | OK |
| morsecode | language_port + real_g4_port | 66 | 5 | OK |
| romannumerals | language_port + real_g4_port | 67 | 3 | OK |
| wln | language_port + real_g4_port | 54 | 3 | OK |

All: `bash harness/run-one.sh <id>` → OK.

## Per-id evidence

### xsd-regex
- **g4**: `regexParser.g4` / `regexLexer.g4` — root/regExp/branch/piece/quantifier/atom/charClass/charGroup.
- **LPG**: `XsdRegexParser.g` mirrors those nonterminals; mode-free character lexer (`REGEXCHAR`, escapes, char groups).
- **Examples** (v4-shaped, blank-framed): `.*`, `[a-z]{3}`, `(ab)|c+`, `[a--[b]]`.
- **Subset note**: ANTLR lexer modes collapsed; nested mode token names accepted but produced as base forms.

### gtin
- **Was soup**: length ladder `d d t2…` with no upc/ean structure.
- **Now**: structural port of `gtin.g4` — `gtin8`/`ean8`, `upc_a`/`upc_e`, `ean13_{ismn,issn,bookland,generic}`, `ean14`, `supplemental_code_*`.
- **LALR**: `backtrack` + `btParserTemplateF.gi` for EOF-length alternatives (ANTLR ALL(*)).
- **Examples**: UPC-A (+hyphen), EAN-8, Bookland, ISSN, GTIN-14, SUP5 (from v4).

### morsecode
- **g4**: full letter/digit DOT–DASH table under `morsecode` / `letter`.
- **LPG**: same table; `DOT`/`DASH`/`SPACE` lexer.
- **Examples**: SOS, SMS (v4), HELLO, HELP, CQ.

### romannumerals
- **g4**: `expression` → thousands/hundreds/tens/ones with subtractive tokens (CM/CD/XL/IX/…).
- **LPG**: full small-g4 mirror; longest-match roman tokens in lexer.
- **Examples**: MCMLXXII, CDXLIV, MMMCMXCIX.

### wln
- **g4**: `wln` / `group` / `symbol` + element vocabulary.
- **LPG**: full small-g4; `TRIPLE=UU` before `U`; SPACE between groups.
- **Examples**: multi-line hydrocarbon / ketone / aromatic WLN (v4 molecules).

## Forbidden checks
- No nested token-stream soup.
- No `;` / single-token fake examples.
- No digit-ladder soup remaining in gtin.
