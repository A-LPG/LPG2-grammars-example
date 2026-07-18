-- AUTO-GENERATED from antlr/grammars-v4 lrc by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=LrcParser
%options package=lpg.grammars.lrc
%options template=dtParserTemplateF.gi
%options import_terminals=LrcLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    lrc
%End

%Rules
    lrc ::= list_1

    line ::= LB TIMESTAMP RB TEXT

    list_1 ::= $empty | list_1 line

%End
