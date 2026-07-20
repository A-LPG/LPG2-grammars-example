-- DatalogParser (LPG) — structural port of grammars-v4 datalog/datalog.g4
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Nonterminals: program / statement / assertion / retraction / query / requirement /
--   clause / body / literal / predicate_sym / terms_ / term_ / constant / external_sym

%Options la=2,ebnf
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
    -- program: statement* EOF
    program ::= statement*

    statement ::= assertion
                 | retraction
                 | query
                 | requirement

    assertion ::= clause DOT

    retraction ::= clause TILDE

    query ::= literal QMARK

    requirement ::= LPAREN IDENTIFIER RPAREN DOT

    clause ::= literal COLON_MINUS body
              | literal

    body ::= literal (COMMA literal)*

    literal ::= predicate_sym LPAREN RPAREN
               | predicate_sym LPAREN terms_ RPAREN
               | predicate_sym
               | term_ EQ term_
               | term_ NE term_
               | VARIABLE COLON_MINUS external_sym LPAREN terms_ RPAREN

    predicate_sym ::= IDENTIFIER
                     | STRING

    terms_ ::= term_ (COMMA term_)*

    term_ ::= VARIABLE
             | constant

    constant ::= IDENTIFIER
                | STRING
                | INTEGER
                | TRUE
                | FALSE

    external_sym ::= IDENTIFIER
%End
