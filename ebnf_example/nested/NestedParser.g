-- Nested token-stream smoke (LPG, EBNF) — intentional L0 / token_stream_smoke.
-- Not a language port: paren/brace/bracket nesting + atoms only.
-- Exercises %Options ebnf lists: item*, (LPAREN item* RPAREN), etc.

%Options la=2,ebnf
%Options fp=NestedParser
%options package=lpg.grammars.nested
%options template=dtParserTemplateF.gi
%options import_terminals=NestedLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= item*

    item ::= atom
           | LPAREN item* RPAREN
           | LBRACE item* RBRACE
           | LBRACKET item* RBRACKET

    atom ::= IDENTIFIER
           | NUMBER
%End
