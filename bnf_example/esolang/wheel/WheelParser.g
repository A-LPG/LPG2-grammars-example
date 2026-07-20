-- Wheel Parser (LPG)
-- Ported from antlr/grammars-v4 esolang/wheel/wheel.g4

%Options la=2
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
    file_ ::= $empty
            | codons

    codons ::= codon
             | codons codon

    codon ::= SYMBOL
            | SYMBOL VALUE
%End
