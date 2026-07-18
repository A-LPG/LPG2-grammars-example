-- JSON Parser (LPG) — structural port of grammars-v4 json/JSON.g4
-- Nonterminals mirror g4: json / obj / pair / arr / value (not token-stream soup).

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
    -- json: value EOF
    json ::= value

    -- obj: '{' pair (',' pair)* '}' | '{' '}'
    obj ::= LBRACE RBRACE
          | LBRACE pair_list RBRACE

    pair_list ::= pair
                | pair_list COMMA pair

    -- pair: STRING ':' value
    pair ::= STRING COLON value

    -- arr: '[' value (',' value)* ']' | '[' ']'
    arr ::= LBRACKET RBRACKET
          | LBRACKET value_list RBRACKET

    value_list ::= value
                 | value_list COMMA value

    -- value: STRING | NUMBER | obj | arr | true | false | null
    value ::= STRING
            | NUMBER
            | obj
            | arr
            | TRUE
            | FALSE
            | NULLLITERAL
%End
