-- Roman numerals Parser (LPG) — structural port of grammars-v4 romannumerals.g4
-- Nonterminals mirror g4: expression / thousands / thous_part / hundreds /
-- hun_part / hun_rep / tens / tens_part / tens_rep / ones / ones_rep.
-- Full small g4 (subtractive notation structure); not token-stream soup.

%Options la=2
%Options fp=RomanParser
%options package=lpg.grammars.romannumerals
%options template=dtParserTemplateF.gi
%options import_terminals=RomanLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    expression
%End

%Rules
    expression ::= thousands

    thousands ::= thous_part hundreds
                | thous_part
                | hundreds

    thous_part ::= thous_part M
                 | M

    hundreds ::= hun_part tens
               | hun_part
               | tens

    hun_part ::= hun_rep
               | CD
               | D
               | D hun_rep
               | CM

    hun_rep ::= C
              | CC
              | CCC

    tens ::= tens_part ones
           | tens_part
           | ones

    tens_part ::= tens_rep
                | XL
                | L
                | L tens_rep
                | XC

    tens_rep ::= X
               | XX
               | XXX

    ones ::= ones_rep
           | IV
           | V
           | V ones_rep
           | IX

    ones_rep ::= I
               | II
               | III
%End