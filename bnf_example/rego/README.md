# rego

Structural LPG port of grammars-v4 `rego/RegoParser.g4` + `RegoLexer.g4`
(`root` / `stmt` / `regoRules` / `query`).

Lexer emits `Name` / `String` / `UnsignedNumber` / `EqOper` (not generic IDENTIFIER soup).
