-- Nanofuck Parser (LPG)
-- Ported from antlr/grammars-v4 esolang/nanofuck/nanofuck.g4
-- Left-recursive exp exp rewritten as atom sequence (associative).

%Options la=2
%Options fp=NanofuckParser
%options package=lpg.grammars.esolang.nanofuck
%options template=dtParserTemplateF.gi
%options import_terminals=NanofuckLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= exp

    exp ::= atom
          | exp atom

    atom ::= STAR
           | LBRACE RBRACE
           | LBRACE exp RBRACE
%End
