-- TRAC Parser (LPG)
-- Ported from antlr/grammars-v4 trac/trac.g4

%Options la=2
%Options fp=TracParser
%options package=lpg.grammars.trac
%options template=dtParserTemplateF.gi
%options import_terminals=TracLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= $empty
              | macros

    macros ::= macro
             | macros macro

    macro ::= active
            | neutral

    active ::= HASH LPAREN STRING RPAREN
             | HASH LPAREN STRING COMMA arglist RPAREN

    neutral ::= HASHHASH LPAREN STRING RPAREN
              | HASHHASH LPAREN STRING COMMA arglist RPAREN

    arglist ::= arg
              | arglist COMMA arg

    arg ::= macro
          | LPAREN macro RPAREN
          | STRING
%End
