-- AUTO-GENERATED from antlr/grammars-v4 clojure by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=ClojureParser
%options package=lpg.grammars.clojure
%options template=dtParserTemplateF.gi
%options import_terminals=ClojureLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= list_1

    form ::= literal
           | list_
           | vector
           | map_
           | reader_macro

    forms ::= list_2

    list_ ::= LPAREN forms RPAREN

    vector ::= LBRACKET forms RBRACKET

    map_ ::= LBRACE list_4 RBRACE

    set_ ::= OP_35839 forms RBRACE

    reader_macro ::= lambda_
           | meta_data
           | regex
           | var_quote
           | host_expr
           | set_
           | tag
           | discard
           | dispatch
           | deref
           | quote
           | backtick
           | unquote
           | unquote_splicing
           | gensym

    quote ::= SQUOTE form

    backtick ::= BACKTICK form

    unquote ::= TILDE form

    unquote_splicing ::= OP_61470 form

    tag ::= CARET form form

    deref ::= AT form

    gensym ::= SYMBOL HASH

    lambda_ ::= OP_18680 list_5 RPAREN

    meta_data ::= OP_73394 grp_6

    var_quote ::= OP_92304 symbol

    host_expr ::= OP_96739 form form

    discard ::= EMPTY_LIT form

    dispatch ::= HASH symbol form

    regex ::= HASH string_

    literal ::= string_
           | number
           | character
           | nil_
           | BOOLEAN
           | keyword
           | symbol
           | param_name

    string_ ::= STRING

    hex_ ::= HEX

    bin_ ::= BIN

    bign ::= BIGN

    number ::= FLOAT
           | hex_
           | bin_
           | bign
           | LONG

    character ::= named_char
           | u_hex_quad
           | any_char

    named_char ::= CHAR_NAMED

    any_char ::= CHAR_ANY

    u_hex_quad ::= CHAR_U

    nil_ ::= NIL

    keyword ::= macro_keyword
           | simple_keyword

    simple_keyword ::= COLON symbol

    macro_keyword ::= COLON COLON symbol

    symbol ::= ns_symbol
           | simple_sym

    simple_sym ::= SYMBOL

    ns_symbol ::= NS_SYMBOL

    param_name ::= PARAM_NAME

    list_1 ::= $empty | list_1 form

    list_2 ::= $empty | list_2 form

    seq_3 ::= form form

    list_4 ::= $empty | list_4 seq_3

    list_5 ::= $empty | list_5 form

    grp_6 ::= map_ form | form

%End
