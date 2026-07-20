-- GML Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Ported from antlr/grammars-v4 gml/gml.g4 for parse-level examples.

%Options la=2,ebnf
%Options fp=GmlParser
%options package=lpg.grammars.gml
%options template=dtParserTemplateF.gi
%options import_terminals=GmlLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    graph
%End

%Rules
    -- graph: kv+ EOF
    graph ::= kvs

    kvs ::= kv
          | kvs kv

    -- kv: key value
    kv ::= key value

    key ::= VALUE

    -- value: integer | realnum | stringliteral | str_ | list_
    value ::= NUMBER
            | STRINGLITERAL
            | VALUE
            | list_

    -- list_: '[' kv+ ']'
    list_ ::= LBRACKET kvs RBRACKET
%End
