-- EdnParser (LPG) — structural port of grammars-v4 edn/edn.g4
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Nonterminals: program / value / tag / keyword / list_ / vector / map_ / set_
-- IDENTIFIER token = g4 Symbol

%Options la=2,ebnf
%Options fp=EdnParser
%options package=lpg.grammars.edn
%options template=dtParserTemplateF.gi
%options import_terminals=EdnLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    -- program: value* EOF
    program ::= value*

    value ::= NIL
            | TRUE
            | FALSE
            | STRING
            | INTEGER
            | FLOAT
            | CHARACTER
            | keyword
            | IDENTIFIER
            | tag
            | list_
            | vector
            | map_
            | set_

    tag ::= HASH IDENTIFIER

    keyword ::= COLON IDENTIFIER
              | COLON INTEGER
              | COLON FLOAT
              | COLON NIL
              | COLON TRUE
              | COLON FALSE

    list_ ::= LPAREN value* RPAREN

    vector ::= LBRACKET value* RBRACKET

    map_ ::= LBRACE (value value)* RBRACE

    set_ ::= HASHED_LBRACE value* RBRACE
%End
