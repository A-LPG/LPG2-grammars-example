-- TntParser (LPG) from grammars-v4/tnt/tnt.g4
-- EBNF port: %Options ebnf (twin: bnf_example).
%Options la=2,ebnf
%Options fp=TntParser
%options package=lpg.grammars.tnt
%options template=dtParserTemplateF.gi
%options import_terminals=TntLexer.gi
%options automatic_ast=nested
%options conflicts
%Eof
    EOF_TOKEN
%End
%Start
    equation
%End
%Rules
    equation ::= expression EQ expression

    expression ::= atom
                  | expression PLUS expression
                  | expression STAR expression
                  | LPAREN expression RPAREN
                  | TILDE expression
                  | forevery expression
                  | exists expression

    atom ::= number
            | variable

    number ::= ZERO
              | successors ZERO

    successors ::= SUCCESSOR+

    variable ::= var
                | successors var
                | var primes
                | successors var primes

    var ::= VAR_A
           | VAR_B
           | VAR_C
           | VAR_D
           | VAR_E

    primes ::= PRIME+

    forevery ::= FOREVERY variable COLON

    exists ::= EXISTS variable COLON
%End
