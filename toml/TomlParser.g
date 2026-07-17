-- Toml Parser (LPG) — Wave D curated subset
%Options la=2
%Options fp=TomlParser
%options package=lpg.grammars.toml
%options template=dtParserTemplateF.gi
%options import_terminals=TomlLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    document
%End
%Rules

    document ::= item_list
    item_list ::= item | item_list item
    item ::= keyval | table_header | array_table
    keyval ::= key EQ value
    key ::= IDENTIFIER | STRING
    value ::= STRING | NUMBER | TRUE | FALSE | inline_table | inline_array
    inline_table ::= LBRACE opt_kv_list RBRACE
    opt_kv_list ::= $empty | kv_list
    kv_list ::= keyval | kv_list COMMA keyval
    inline_array ::= LBRACKET opt_val_list RBRACKET
    opt_val_list ::= $empty | val_list
    val_list ::= value | val_list COMMA value
    table_header ::= LBRACKET key_path RBRACKET
    array_table ::= LBRACKET LBRACKET key_path RBRACKET RBRACKET
    key_path ::= key | key_path DOT key

%End
