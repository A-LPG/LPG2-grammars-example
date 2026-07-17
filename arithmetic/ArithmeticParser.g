-- Arithmetic Parser (LPG)
-- Ported from antlr/grammars-v4 arithmetic/arithmetic.g4
-- Precedence rewritten as layered left-recursion for LALR.

%Options la=2
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
    file_ ::= $empty
            | equations

    equations ::= equation
                | equations equation

    equation ::= expression relop expression

    expression ::= term
                 | expression PLUS term
                 | expression MINUS term

    term ::= factor
           | term TIMES factor
           | term DIV factor

    factor ::= PLUS factor
             | MINUS factor
             | power

    -- right-assoc POW; RHS is factor so unary binds tighter than POW
    power ::= atom
            | atom POW factor

    atom ::= SCIENTIFIC_NUMBER
           | VARIABLE
           | LPAREN expression RPAREN

    relop ::= EQ
            | GT
            | LT
%End
