-- Tnt Parser (LPG)
%Options la=2
%Options fp=TntParser
%options package=lpg.grammars.tnt
%options template=dtParserTemplateF.gi
%options import_terminals=TntLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    equation
%End
%Rules
    equation ::= expression EQUAL expression

    expression ::= atom
                 | expression PLUS expression
                 | expression STAR expression
                 | LPAREN expression RPAREN
                 | TILDE expression
                 | forevery expression
                 | exists expression

    atom ::= number | variable

    number ::= ZERO
             | successors ZERO

    successors ::= SUCCESSOR
                 | successors SUCCESSOR

    variable ::= var
               | successors var
               | var primes
               | successors var primes

    var ::= VAR_A | VAR_B | VAR_C | VAR_D | VAR_E

    primes ::= PRIME | primes PRIME

    forevery ::= FOREVERY variable COLON
    exists ::= EXISTS variable COLON
%End
