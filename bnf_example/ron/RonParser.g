-- RonParser (LPG)
-- Ported from antlr/grammars-v4 ron/ron.g4

%Options la=2
%Options fp=RonParser
%options package=lpg.grammars.ron
%options template=dtParserTemplateF.gi
%options import_terminals=RonLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    ron_
%End

%Rules
    ron_ ::= $empty
           | value_list_top

    value_list_top ::= value
                     | value_list_top value

    value ::= atom
            | IDENTIFIER paren
            | IDENTIFIER list
            | IDENTIFIER map

    atom ::= number | STRING | TRUE | FALSE | CHAR | IDENTIFIER | list | map | paren

    number ::= DECIMAL | HEX | BINARY

    -- No trailing COMMA after RPAREN/RBRACE/RBRACKET — separators belong to the parent.
    paren ::= LPAREN RPAREN
            | LPAREN struct_fields RPAREN
            | LPAREN tuple_fields RPAREN

    struct_fields ::= IDENTIFIER COLON value
                    | struct_fields COMMA IDENTIFIER COLON value
                    | struct_fields COMMA

    -- Bare tuples like (800, 600)
    tuple_fields ::= number
                   | STRING
                   | TRUE
                   | FALSE
                   | CHAR
                   | tuple_fields COMMA number
                   | tuple_fields COMMA STRING
                   | tuple_fields COMMA TRUE
                   | tuple_fields COMMA FALSE
                   | tuple_fields COMMA CHAR
                   | tuple_fields COMMA

    list ::= LBRACKET RBRACKET
           | LBRACKET list_fields RBRACKET

    list_fields ::= value
                  | list_fields COMMA value
                  | list_fields COMMA

    map ::= LBRACE map_fields RBRACE

    map_fields ::= mapitem
                 | map_fields COMMA mapitem
                 | map_fields COMMA

    mapitem ::= mapkey COLON value

    mapkey ::= IDENTIFIER | STRING | number
%End
