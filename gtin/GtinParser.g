-- GTIN Parser (LPG)
-- Ported from antlr/grammars-v4 gtin/gtin.g4
-- Length-discriminated for LALR (ANTLR uses ALL(*)).

%Options la=2
%Options fp=GtinParser
%options package=lpg.grammars.gtin
%options template=dtParserTemplateF.gi
%options import_terminals=GtinLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    gtin
%End

%Rules
    -- Accept 2,5,6,8,12,13,14 digit forms (hyphens skipped in lexer)
    gtin ::= d d t2

    t2 ::= $empty
         | d d d t5

    t5 ::= $empty
         | d t6

    t6 ::= $empty
         | d d t8

    t8 ::= $empty
         | d d d d t12

    t12 ::= $empty
          | d t13

    t13 ::= $empty
          | d

    d ::= DIGIT_0 | DIGIT_1 | DIGIT_2 | DIGIT_3 | DIGIT_4
        | DIGIT_5 | DIGIT_6 | DIGIT_7 | DIGIT_8 | DIGIT_9
%End
