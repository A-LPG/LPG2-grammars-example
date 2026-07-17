-- Elixir Parser (LPG) — curated subset
%Options la=2
%Options fp=ElixirParser
%options package=lpg.grammars.elixir
%options template=dtParserTemplateF.gi
%options import_terminals=ElixirLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules

    file_ ::= DEFMODULE IDENTIFIER DO body END
    body ::= $empty | body item
    item ::= DEF IDENTIFIER DO expr END | expr
    expr ::= ATOM | NUMBER | STRING | TRUE | FALSE | NIL | IDENTIFIER

%End
