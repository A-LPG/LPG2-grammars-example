-- P Parser (LPG)
-- Ported from antlr/grammars-v4 p/p.g4

%Options la=2
%Options fp=PParser
%options package=lpg.grammars.p
%options template=dtParserTemplateF.gi
%options import_terminals=PLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= symbol_list

    symbol_list ::= symbol
                  | symbol_list symbol

    symbol ::= iterate
             | atom

    iterate ::= LPAREN symbol_list RPAREN

    atom ::= R
           | L
%End
