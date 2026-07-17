-- Wat Parser (LPG) — curated subset
%Options la=2
%Options fp=WatParser
%options package=lpg.grammars.wat
%options template=dtParserTemplateF.gi
%options import_terminals=WatLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    module
%End
%Rules

    module ::= LPAREN MODULE module_fields RPAREN
    module_fields ::= $empty | module_fields module_field
    module_field ::= LPAREN FUNC RPAREN
                   | LPAREN EXPORT STRING LPAREN FUNC NUMBER RPAREN RPAREN
                   | LPAREN MEMORY NUMBER RPAREN

%End
