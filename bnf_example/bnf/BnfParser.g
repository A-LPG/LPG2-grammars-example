-- BNF Parser (LPG)
-- Ported from antlr/grammars-v4 bnf/bnfParser.g4

%Options la=2
%Options fp=BnfParser
%options package=lpg.grammars.bnf
%options template=dtParserTemplateF.gi
%options import_terminals=BnfLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    start_
%End

%Rules
    start_ ::= $empty
             | prods
             | prods NL

    prods ::= prod
            | prods NL prod

    prod ::= xlhs ASSIGN
           | xlhs ASSIGN xrhs

    xlhs ::= ID
           | LT idish GT

    idish ::= ID
            | TEXT
            | idish TEXT
            | idish ID

    xrhs ::= xalt
           | xrhs OR xalt
           | xrhs NL OR xalt

    xalt ::= xelem
           | xalt xelem

    -- g4-style: bracket groups or any atom. Bare LT/GT are Algol terminals;
    -- '<name>' on the RHS is LT + ID + GT atoms (parse-level OK).
    xelem ::= STRING
            | ID
            | LT
            | GT
            | TEXT
%End
