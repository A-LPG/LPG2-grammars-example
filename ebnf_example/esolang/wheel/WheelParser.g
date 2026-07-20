-- Wheel Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Ported from antlr/grammars-v4 esolang/wheel/wheel.g4

%Options la=2,ebnf
%Options fp=WheelParser
%options package=lpg.grammars.wheel
%options template=dtParserTemplateF.gi
%options import_terminals=WheelLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= codon*

    codon ::= SYMBOL
             | SYMBOL VALUE
%End
