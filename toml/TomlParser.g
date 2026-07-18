-- AUTO-GENERATED from antlr/grammars-v4 toml by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=TomlParser
%options package=lpg.grammars.toml
%options template=dtParserTemplateF.gi
%options import_terminals=TomlLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    document
%End

%Rules
    document ::= key_value
           | key_value key_value
           | expression

    expression ::= key_value comment
           | table comment
           | comment

    comment ::= opt_3

    key_value ::= key EQ value

    key ::= simple_key
           | dotted_key

    simple_key ::= quoted_key
           | unquoted_key

    unquoted_key ::= IDENTIFIER

    quoted_key ::= STRING

    dotted_key ::= simple_key list_5

    value ::= string
           | integer
           | floating_point
           | bool_
           | date_time
           | array_
           | inline_table

    string ::= STRING

    integer ::= NUMBER

    floating_point ::= NUMBER
           | IDENTIFIER

    bool_ ::= IDENTIFIER

    date_time ::= IDENTIFIER

    array_ ::= LBRACKET opt_6 comment_or_nl RBRACKET

    array_values ::= seq_7
           | comment_or_nl value nl_or_comment opt_8

    comment_or_nl ::= $empty

    nl_or_comment ::= $empty

    table ::= standard_table
           | array_table

    standard_table ::= LBRACKET key RBRACKET

    inline_table ::= LBRACE inline_table_keyvals RBRACE

    inline_table_keyvals ::= opt_15

    inline_table_keyvals_non_empty ::= key EQ value opt_17

    array_table ::= LBRACKET key RBRACKET

    seq_1 ::= expression

    list_2 ::= $empty

    opt_3 ::= comment_tok | $empty

    seq_4 ::= DOT simple_key

    list_5 ::= seq_4 | list_5 seq_4

    opt_6 ::= array_values | $empty

    seq_7 ::= comment_or_nl value nl_or_comment COMMA array_values comment_or_nl

    opt_8 ::= COMMA | $empty

    opt_9 ::= comment_tok | $empty

    seq_10 ::= opt_9 nl_tok

    list_11 ::= $empty | list_11 seq_10

    opt_12 ::= comment_tok | $empty

    seq_13 ::= nl_tok opt_12

    list_14 ::= $empty | list_14 seq_13

    opt_15 ::= inline_table_keyvals_non_empty | $empty

    seq_16 ::= COMMA inline_table_keyvals_non_empty

    opt_17 ::= seq_16 | $empty

    comment_tok ::= $empty

    nl_tok ::= NEWLINE
%End
