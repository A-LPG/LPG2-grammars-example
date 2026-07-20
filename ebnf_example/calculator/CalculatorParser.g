-- Calculator Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Ported from antlr/grammars-v4 calculator/calculator.g4 for parse-level examples.
-- Start rule `equation` matches ANTLR entry: expression relop expression EOF

%Options la=2,ebnf
%Options fp=CalculatorParser
%options package=lpg.grammars.calculator
%options template=dtParserTemplateF.gi
%options import_terminals=CalculatorLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    equation
%End

%Rules
    equation ::= expression relop expression

    expression ::= multiplyingExpression
                 | expression PLUS multiplyingExpression
                 | expression MINUS multiplyingExpression

    multiplyingExpression ::= powExpression
                            | multiplyingExpression TIMES powExpression
                            | multiplyingExpression DIV powExpression

    powExpression ::= signedAtom
                    | powExpression POW signedAtom

    signedAtom ::= PLUS signedAtom
                 | MINUS signedAtom
                 | func_
                 | atom

    atom ::= scientific
           | variable
           | constant
           | LPAREN expression RPAREN

    scientific ::= SCIENTIFIC_NUMBER

    constant ::= PI
               | EULER
               | I

    variable ::= IDENTIFIER

    func_ ::= funcname LPAREN expression RPAREN
            | funcname LPAREN expression arg_list RPAREN

    arg_list ::= COMMA expression
               | arg_list COMMA expression

    funcname ::= COS
               | TAN
               | SIN
               | ACOS
               | ATAN
               | ASIN
               | LOG
               | LN
               | SQRT

    relop ::= EQ
            | GT
            | LT
%End
