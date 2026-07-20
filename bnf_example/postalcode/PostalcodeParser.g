-- Postalcode Parser (LPG)
-- Ported from antlr/grammars-v4 postalcode/postalcode.g4

%Options la=2
%Options fp=PostalcodeParser
%options package=lpg.grammars.postalcode
%options template=dtParserTemplateF.gi
%options import_terminals=PostalcodeLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    postalcode
%End

%Rules
    postalcode ::= LETTER DIGIT LETTER DIGIT LETTER DIGIT
%End
