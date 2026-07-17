-- ISTC Parser (LPG)
-- Ported from antlr/grammars-v4 istc/istc.g4

%Options la=2
%Options fp=IstcParser
%options package=lpg.grammars.istc
%options template=dtParserTemplateF.gi
%options import_terminals=IstcLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    istc
%End

%Rules
    istc ::= ISTC SPACE registration sep year sep work sep check

    registration ::= CHAR CHAR CHAR

    year ::= CHAR CHAR CHAR CHAR

    work ::= CHAR CHAR CHAR CHAR CHAR CHAR CHAR CHAR

    check ::= CHAR

    sep ::= SEP
          | SPACE
%End
