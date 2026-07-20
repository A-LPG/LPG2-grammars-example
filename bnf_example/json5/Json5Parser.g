-- JSON5 Parser (LPG) — structural port of grammars-v4 json5/JSON5.g4
-- Nonterminals mirror g4: json5 / obj / pair / key / value / arr / number
-- (not token-stream soup). Trailing commas, unquoted keys, comments via lexer.

%Options la=2
%Options fp=Json5Parser
%options package=lpg.grammars.json5
%options template=dtParserTemplateF.gi
%options import_terminals=Json5Lexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    json5
%End

%Rules
    -- json5: value? EOF
    json5 ::= %Empty
            | value

    -- obj: '{' pair (',' pair)* ','? '}' | '{' '}'
    obj ::= LBRACE RBRACE
          | LBRACE pair_list opt_comma RBRACE

    pair_list ::= pair
                | pair_list COMMA pair

    -- pair: key ':' value
    pair ::= key COLON value

    -- key: STRING | IDENTIFIER | LITERAL | NUMERIC_LITERAL
    key ::= STRING
          | IDENTIFIER
          | TRUE
          | FALSE
          | NULLLITERAL
          | INFINITY
          | NAN

    -- value: STRING | number | obj | arr | LITERAL
    value ::= STRING
            | number
            | obj
            | arr
            | TRUE
            | FALSE
            | NULLLITERAL

    -- arr: '[' value (',' value)* ','? ']' | '[' ']'
    arr ::= LBRACKET RBRACKET
          | LBRACKET value_list opt_comma RBRACKET

    value_list ::= value
                 | value_list COMMA value

    opt_comma ::= %Empty
                | COMMA

    -- number: SYMBOL? (NUMERIC_LITERAL | NUMBER)
    number ::= opt_sign numeric
    opt_sign ::= %Empty
               | PLUS
               | MINUS
    numeric ::= NUMBER
              | INFINITY
              | NAN
%End
