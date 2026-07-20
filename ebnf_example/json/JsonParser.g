-- JSON Parser (LPG, EBNF) — structural port of grammars-v4 json/JSON.g4
-- Nonterminals mirror g4: json / obj / pair / arr / value (not token-stream soup).
-- Lists use %Options ebnf: pair (COMMA pair)* / value (COMMA value)*

%Options la=2,ebnf
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
    obj ::= LBRACE (pair (COMMA pair)*)? RBRACE

    -- pair: STRING ':' value
    pair ::= STRING COLON value

    -- arr: '[' value (',' value)* ']' | '[' ']'
    arr ::= LBRACKET (value (COMMA value)*)? RBRACKET

    -- value: STRING | NUMBER | obj | arr | true | false | null
    value ::= STRING
            | NUMBER
            | obj
            | arr
            | TRUE
            | FALSE
            | NULLLITERAL
%End
