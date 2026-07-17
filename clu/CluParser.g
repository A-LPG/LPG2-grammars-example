-- CLU Parser (LPG)
%Options la=2
%Options fp=CluParser
%options package=lpg.grammars.clu
%options template=dtParserTemplateF.gi
%options import_terminals=CluLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    module
%End
%Rules
    module ::= procedure
    procedure ::= IDENTIFIER EQ PROC LPAREN RPAREN END IDENTIFIER
%End
