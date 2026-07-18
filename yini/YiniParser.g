-- AUTO-GENERATED from antlr/grammars-v4 yini by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=YiniParser
%options package=lpg.grammars.yini
%options template=dtParserTemplateF.gi
%options import_terminals=YiniLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    yini
%End

%Rules
    yini ::= IDENTIFIER EQ NUMBER
       | IDENTIFIER EQ STRING



    section ::= opt_10 section_members

    terminal_line ::= IDENTIFIER grp_11

    section_members ::= list_15

    member ::= IDENTIFIER opt_16 EQ opt_17 opt_18 list_19
           | member_colon_list
           | SECTION_HEAD opt_20
           | bad_member

    member_colon_list ::= IDENTIFIER COLON opt_21 opt_22 list_23

    value ::= null_literal
           | string_literal
           | number_literal
           | boolean_literal
           | list_in_brackets
           | object_literal

    object_literal ::= OC list_24 objectMemberList list_25 CC list_26
           | empty_object list_27

    objectMemberList ::= objectMember list_30 opt_31
           | empty_object list_32

    objectMember ::= IDENTIFIER opt_33 COLON list_34 value

    list ::= elements
           | list_in_brackets

    list_in_brackets ::= OB list_35 elements list_36 CB
           | empty_list list_37

    elements ::= element opt_38
           | element COMMA elements

    element ::= list_39 value list_40
           | list_41 list_in_brackets list_42

    number_literal ::= NUMBER

    null_literal ::= NULL

    string_literal ::= STRING list_43

    string_concat ::= list_44 PLUS list_45 STRING

    boolean_literal ::= BOOLEAN_FALSE
           | BOOLEAN_TRUE

    empty_object ::= EMPTY_OBJECT
           | LBRACE list_46 RBRACE

    empty_list ::= EMPTY_LIST
           | LBRACKET list_47 RBRACKET

    bad_member ::= opt_48 opt_50 opt_51 EQ grp_52 opt_53

    opt_1 ::= SHEBANG | $empty

    list_2 ::= $empty | list_2 INLINE_COMMENT

    list_3 ::= $empty

    opt_4 ::= YINI_MARKER | $empty

    list_5 ::= $empty | list_5 INLINE_COMMENT

    list_6 ::= $empty

    list_7 ::= section | list_7 section

    list_8 ::= $empty

    opt_9 ::= terminal_line | $empty

    opt_10 ::= SECTION_HEAD | $empty

    list_12 ::= $empty

    opt_13 ::= INLINE_COMMENT | $empty

    list_14 ::= $empty

    grp_11 ::= list_12 | opt_13 list_14

    list_15 ::= member | list_15 member

    opt_16 ::= WS | $empty

    opt_17 ::= WS | $empty

    opt_18 ::= value | $empty

    list_19 ::= $empty

    opt_20 ::= section_members | $empty

    opt_21 ::= WS | $empty

    opt_22 ::= elements | $empty

    list_23 ::= $empty

    list_24 ::= $empty

    list_25 ::= $empty

    list_26 ::= $empty

    list_27 ::= $empty

    list_28 ::= $empty

    seq_29 ::= COMMA list_28 objectMember

    list_30 ::= $empty | list_30 seq_29

    opt_31 ::= COMMA | $empty

    list_32 ::= $empty

    opt_33 ::= WS | $empty

    list_34 ::= $empty

    list_35 ::= $empty

    list_36 ::= $empty

    list_37 ::= $empty

    opt_38 ::= COMMA | $empty

    list_39 ::= $empty

    list_40 ::= $empty

    list_41 ::= $empty

    list_42 ::= $empty

    list_43 ::= $empty | list_43 string_concat

    list_44 ::= $empty

    list_45 ::= $empty

    list_46 ::= $empty

    list_47 ::= $empty

    opt_48 ::= WS | $empty

    grp_49 ::= REST | value

    opt_50 ::= grp_49 | $empty

    opt_51 ::= WS | $empty

    grp_52 ::= value | REST

    opt_53 ::= nl_tok | $empty

    nl_tok ::= NEWLINE
%End
