-- JSON Parser (LPG)
-- Ported from antlr/grammars-v4 json/JSON.g4 for parse-level examples.

%Options la=2
%Options fp=JsonParser
%options package=lpg.grammars.json
%options template=dtParserTemplateF.gi
%options import_terminals=JsonLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    json
%End

%Rules
    json ::= value

    value ::= STRING
            | NUMBER
            | object
            | array
            | TRUE
            | FALSE
            | NULLLITERAL

    object ::= LBRACE RBRACE
             | LBRACE pair_list RBRACE

    pair_list ::= pair
                | pair_list COMMA pair

    pair ::= STRING COLON value

    array ::= LBRACKET RBRACKET
            | LBRACKET value_list RBRACKET

    value_list ::= value
                 | value_list COMMA value
%End
