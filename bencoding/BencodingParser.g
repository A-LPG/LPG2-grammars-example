-- Bencoding Parser (LPG)
-- Ported from antlr/grammars-v4 bencoding for parse-level examples.

%Options la=2
%Options fp=BencodingParser
%options package=lpg.grammars.bencoding
%options template=dtParserTemplateF.gi
%options import_terminals=BencodingLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    data
%End

%Rules
    data ::= values

    values ::= $empty
             | values value

    value ::= integer
            | STRING
            | list
            | dict

    integer ::= INT_START INTEGER END

    list ::= LIST_START values END

    dict ::= DICT_START key_values END

    key_values ::= $empty
                 | key_values key_value

    key_value ::= STRING value
%End
