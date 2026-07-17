-- PMMN Parser (LPG)
-- Ported from antlr/grammars-v4 pmmn/PMMN.g4

%Options la=2
%Options fp=PmmnParser
%options package=lpg.grammars.pmmn
%options template=dtParserTemplateF.gi
%options import_terminals=PmmnLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= commandlist

    commandlist ::= command
                  | commandlist command

    block ::= LBRACE commandlist RBRACE

    command ::= INC LPAREN counter RPAREN SEMICOLON
              | test SEMICOLON
              | IF LPAREN test RPAREN block
              | IF LPAREN test RPAREN block ELSE block
              | WHILE LPAREN test RPAREN block

    test ::= DEC LPAREN counter RPAREN

    counter ::= DIGIT
              | counter DIGIT
%End
