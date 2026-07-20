-- AUTO-GENERATED from antlr/grammars-v4 lrc by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=LrcParser
%options package=lpg.grammars.lrc
%options template=dtParserTemplateF.gi
%options import_terminals=LrcLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Define
    $ast_class /.Object./
    $ast_type /.Object./
%End

%Start
    lrc
%End

%Rules
    lrc ::= line_list

    line ::= LB TIMESTAMP RB TEXT

    line_list ::= $empty
           | line_list line

%End
