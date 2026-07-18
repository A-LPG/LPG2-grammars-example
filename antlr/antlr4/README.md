# antlr/antlr4

Structural LPG port of grammars-v4 `ANTLRv4Parser.g4` + lexer keywords (~416 parser lines / 67 rules), **not** the nested `examples/**` dump (that tree embeds other languages and inflates line counts to ~329k).

Quality: `language_subset` + `real_g4_port`. Lexer approximates RULE_REF/TOKEN_REF as IDENTIFIER; OPTIONS/TOKENS/CHANNELS are soft identifiers; nested ACTION / lexer char-sets are not fully lexed — curated examples avoid those constructs.
