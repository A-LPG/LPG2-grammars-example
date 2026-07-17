-- DatalogParser (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options la=2
%Options fp=DatalogParser
%options package=lpg.grammars.datalog
%options template=dtParserTemplateF.gi
%options import_terminals=DatalogLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= $empty
              | statements

    statements ::= statement
                 | statements statement

    statement ::= assertion | retraction | query | requirement

    assertion ::= clause DOT
    retraction ::= clause TILDE
    query ::= literal QMARK
    requirement ::= LPAREN IDENTIFIER RPAREN DOT

    clause ::= literal COLON_MINUS body
             | literal

    body ::= literal
           | literal COMMA body

    literal ::= predicate_sym LPAREN RPAREN
              | predicate_sym LPAREN terms_ RPAREN
              | predicate_sym
              | term_ EQ term_
              | term_ NE term_
              | VARIABLE COLON_MINUS external_sym LPAREN terms_ RPAREN

    predicate_sym ::= IDENTIFIER | STRING

    terms_ ::= term_
             | term_ COMMA terms_

    term_ ::= VARIABLE | constant

    constant ::= IDENTIFIER | STRING | INTEGER | TRUE | FALSE

    external_sym ::= IDENTIFIER
%End
