-- EDN Parser (LPG)
-- Ported from antlr/grammars-v4 edn/edn.g4

%Options la=2
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
    program ::= $empty
              | values

    values ::= value
             | values value

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

    list_ ::= LPAREN RPAREN
            | LPAREN values RPAREN

    vector ::= LBRACKET RBRACKET
             | LBRACKET values RBRACKET

    map_ ::= LBRACE RBRACE
           | LBRACE pairs RBRACE

    pairs ::= value value
            | pairs value value

    set_ ::= HASHED_LBRACE RBRACE
           | HASHED_LBRACE values RBRACE
%End
