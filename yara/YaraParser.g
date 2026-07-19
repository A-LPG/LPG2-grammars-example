-- AUTO-GENERATED from antlr/grammars-v4 yara by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=YaraParser
%options package=lpg.grammars.yara
%options template=dtParserTemplateF.gi
%options import_terminals=YaraLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    startRule
%End

%Rules
    startRule ::= list_1

    decl ::= list_2
           | list_3
           | list_4

    import_decl ::= IMPORT string

    include_decl ::= INCLUDE string

    rule_decl ::= list_5 RULE id_ opt_6 LCB opt_7 opt_8 condition_section RCB

    rule_modifier ::= PRIVATE
           | GLOBAL

    tags ::= COLON list_9

    id_ ::= ID

    condition_section ::= CONDITION COLON grp_10

    for_expr ::= FOR expr COLON LP bool_expr RP
           | FOR ANY id_ list_12 IN expr COLON LP bool_expr RP

    bool_expr ::= expr
           | list_13 bool_expr
           | bool_expr AND bool_expr
           | bool_expr OR bool_expr

    expr ::= expr LSB expr RSB
           | expr DOT expr
           | grp_14 expr
           | fn4 LP expr RP
           | expr grp_15 expr
           | expr grp_16 expr
           | expr grp_17 expr
           | expr grp_18 expr
           | expr grp_19 expr
           | grp_20 OF grp_21 opt_23
           | grp_24 IN range
           | grp_25 opt_26 IN range
           | grp_27 AT expr
           | LP number list_29 RP
           | expr function expr
           | list_30 expr
           | expr AND expr
           | expr OR expr
           | LP expr RP
           | literal
           | pos_fn
           | DOLLAR
           | HASH
           | AT
           | BANG

    literal ::= true_false
           | number
           | STRING_ID
           | HEX_LITERAL
           | COUNT_REF
           | OFFSET_REF
           | LENGTH_REF
           | SIZE_LITERAL
           | ID
           | DOUBLE_QUOTE_STR

    string_set ::= LP string_id_list RP

    string_id_list ::= grp_31 list_34

    function ::= CONTAINS
           | ICONTAINS
           | STARTSWITH
           | ISTARTSWITH
           | ENDSWITH
           | IENDSWITH
           | IEQUALS
           | MATCHES

    pos_fn ::= ENTRYPOINT
           | FILESIZE

    fn4 ::= INT16
           | INT16BE
           | UINT16
           | UINT16BE
           | INT32
           | INT32BE
           | UINT32
           | UINT32BE
           | INT8
           | INT8BE
           | UINT8
           | UINT8BE

    range ::= LP expr DOTDOT expr RP

    true_false ::= TRUE
           | FALSE

    strings_section ::= STRINGS COLON list_35

    meta_section ::= META COLON list_36

    string_def ::= STRING_ID ASSIGN_S string_value list_37

    string_modifier ::= NOCASE
           | WIDE
           | ASCII
           | XOR
           | BASE64 opt_38
           | BASE64WIDE opt_39
           | FULLWORD
           | PRIVATE

    args ::= LP string RP

    meta_def ::= id_ ASSIGN meta_value

    string_value ::= string
           | LCB_S list_40 RCB
           | REGEX_STR

    string_construct ::= HEX_STR
           | grp_41 list_42 grp_43
           | alt

    alt ::= LP list_44 list_47 RP

    jump ::= LSB seq_52 RSB

    meta_value ::= string
           | true_false
           | number
           | HEX_LITERAL

    string ::= DOUBLE_QUOTE_STR

    number ::= DECIMAL_LITERAL

    list_1 ::= decl | list_1 decl

    list_2 ::= import_decl | list_2 import_decl

    list_3 ::= include_decl | list_3 include_decl

    list_4 ::= rule_decl | list_4 rule_decl

    list_5 ::= $empty | list_5 rule_modifier

    opt_6 ::= tags | $empty

    opt_7 ::= meta_section | $empty

    opt_8 ::= strings_section | $empty

    list_9 ::= id_ | list_9 id_

    grp_10 ::= expr | for_expr

    seq_11 ::= COMMA id_

    list_12 ::= $empty | list_12 seq_11

    list_13 ::= NOT | list_13 NOT

    grp_14 ::= MINUS | TILDE

    grp_15 ::= STAR | BACKSLASH | PERCENT

    grp_16 ::= PLUS | MINUS

    grp_17 ::= LSHIFT | RSHIFT

    grp_18 ::= AMP | CARET | PIPE

    grp_19 ::= LT | LTEQ | GT | GTEQ | EQEQ | NOTEQ

    grp_20 ::= number | ALL | ANY | NONE

    grp_21 ::= string_set | LP ID RP | THEM

    seq_22 ::= IN range

    opt_23 ::= seq_22 | $empty

    grp_24 ::= COUNT_REF | STRING_ID

    grp_25 ::= number | ALL | ANY | NONE

    opt_26 ::= id_ | $empty

    grp_27 ::= DOLLAR | STRING_ID

    seq_28 ::= COMMA number

    list_29 ::= $empty | list_29 seq_28

    list_30 ::= NOT | list_30 NOT

    grp_31 ::= STRING_ID | STRING_WILD

    grp_33 ::= STRING_ID | STRING_WILD

    grp_32 ::= COMMA grp_33

    list_34 ::= $empty | list_34 grp_32

    list_35 ::= string_def | list_35 string_def

    list_36 ::= meta_def | list_36 meta_def

    list_37 ::= $empty | list_37 string_modifier

    opt_38 ::= args | $empty

    opt_39 ::= args | $empty

    list_40 ::= string_construct | list_40 string_construct

    grp_41 ::= HEX_STR | alt

    list_42 ::= jump | list_42 jump

    grp_43 ::= HEX_STR | alt

    list_44 ::= HEX_STR | list_44 HEX_STR

    list_45 ::= HEX_STR | list_45 HEX_STR

    seq_46 ::= PIPE list_45

    list_47 ::= seq_46 | list_47 seq_46

    opt_48 ::= DEC | $empty

    opt_49 ::= DEC | $empty

    seq_50 ::= MINUS opt_49

    opt_51 ::= seq_50 | $empty

    seq_52 ::= opt_48 opt_51

    ID ::= IDENTIFIER
    LCB ::= LBRACE
    RCB ::= RBRACE

%End
