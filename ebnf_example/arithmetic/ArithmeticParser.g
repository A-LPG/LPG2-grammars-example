-- ArithmeticParser (LPG, EBNF) — structural port of grammars-v4 arithmetic/arithmetic.g4
-- Precedence kept as layered left-recursion for LALR (POW right-assoc).
-- file_ uses equation*; unary factor uses (PLUS | MINUS).
-- Nonterminals: file_ / equation / expression / term / factor / power / atom /
--   scientific / variable / relop

%Options la=2,ebnf
%Options fp=ArithmeticParser
%options package=lpg.grammars.arithmetic
%options template=dtParserTemplateF.gi
%options import_terminals=ArithmeticLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    -- file_: equation* EOF
    file_ ::= equation*

    equation ::= expression relop expression

    -- + -  (lowest)
    expression ::= term
                 | expression PLUS term
                 | expression MINUS term

    -- * /
    term ::= factor
           | term TIMES factor
           | term DIV factor

    -- unary +/-
    factor ::= (PLUS | MINUS) factor
             | power

    -- right-assoc POW; RHS is factor so unary binds tighter than POW
    power ::= atom
            | atom POW factor

    atom ::= scientific
           | variable
           | LPAREN expression RPAREN

    scientific ::= SCIENTIFIC_NUMBER

    variable ::= VARIABLE

    relop ::= EQ
            | GT
            | LT
%End
