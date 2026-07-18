# Glossary

Terms used when porting [antlr/grammars-v4](https://github.com/antlr/grammars-v4) to LPG.  
(Upstream ANTLR ambiguity notes adapted from grammars-v4 `GLOSSARY.md`.)

## Port / quality

| Term | Meaning |
|------|---------|
| **language_port** | L2 — language-shaped LPG grammar; essentially a real port of the upstream surface (often small g4). |
| **language_subset** | L1 — intentional curated subset; honest when the full dialect is huge. |
| **token_stream_smoke** | L0 — generic nested token-stream; harness green ≠ language port. |
| **real_g4_port** | `quality_notes` marker: parser NTs follow upstream g4 (not soup), with real examples. |
| **花架子 / shelf** | Looks done (green harness / big file) but is soup, overclaim, or trivial examples. |
| **dump soup** | `start ::= $empty` + `items ::= item` + `item ::= IDENTIFIER` (or nested `item/atom/paren`). |
| **examples-curated** | Small multi-line inputs the harness should parse; prefer over raw upstream dumps. |
| **ORIGIN.md** | Points at the grammars-v4 path / license notes for a unit. |

## LPG machinery

| Term | Meaning |
|------|---------|
| **KWLexer** | Keyword filter grammar (`KeywordTemplateF.gi`); maps identifier spellings to keyword tokens. |
| **checkForKeyWord()** | Lexer action that runs the KW filter on an identifier. |
| **import_terminals** | Parser option that imports token names/numbers from the lexer. |
| **IDENTIFIER export** | Must stay in lexer `%Export` when the template passes `TK_IDENTIFIER` into the KWLexer ctor. |
| **seps_opt / trailing NL** | Optional separators after the last statement so files ending in newline parse. |
| **out-java** | Generated Java for one harness run; safe to delete; do not commit. |

## ANTLR ambiguity (reading upstream)

### Divergence point

Given an ambiguous input with two or more distinct parse trees, a **divergence point** is a node whose subtree differs across at least two trees, but whose ancestors up to the root are identical on all trees.

### Fixing a divergence point (ANTLR)

Every alternative reported for that decision needs a mutually exclusive semantic predicate — not only the “wrong” ones. Leaving any alternative unpredicated keeps the ambiguity.

LPG does not use ANTLR predicates the same way; resolve LALR conflicts by grammar rewrite, left-factoring, or documenting an intentional subset.
