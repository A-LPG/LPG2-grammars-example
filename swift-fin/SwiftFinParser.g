-- AUTO-GENERATED from antlr/grammars-v4 swift-fin by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SwiftFinParser
%options package=lpg.grammars.swift_fin
%options template=dtParserTemplateF.gi
%options import_terminals=SwiftFinLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    messages
%End

%Rules
    messages ::= list_1

    message ::= block1 opt_2 opt_3 opt_4 opt_5

    block1 ::= BLOCK1 value V_END

    block2 ::= BLOCK2 value V_END

    block3 ::= BLOCK3 map_ RBRACE

    block4 ::= BLOCK4_A list_6 B4_END
           | BLOCK4_B map_ RBRACE

    block4Item ::= B4_COLON block4Field B4_COLON list_7

    block4Field ::= list_8

    block4Line ::= list_9 B4_CRLF
           | list_10 B4_COLON list_12 B4_CRLF
           | B4_COLON list_13 list_15 B4_CRLF
           | list_16 list_17 list_18 B4_CRLF

    block5 ::= BLOCK5 map_ RBRACE

    value ::= list_19

    map_ ::= list_20

    keyValue ::= LBRACE mKey M_COLON opt_21 RBRACE

    mKey ::= list_22

    mValue ::= list_24

    list_1 ::= message | list_1 message

    opt_2 ::= block2 | $empty

    opt_3 ::= block3 | $empty

    opt_4 ::= block4 | $empty

    opt_5 ::= block5 | $empty

    list_6 ::= block4Item | list_6 block4Item

    list_7 ::= block4Line | list_7 block4Line

    list_8 ::= B4_VALUE | list_8 B4_VALUE

    list_9 ::= B4_VALUE | list_9 B4_VALUE

    list_10 ::= B4_VALUE | list_10 B4_VALUE

    grp_11 ::= B4_VALUE | B4_COLON

    list_12 ::= $empty | list_12 grp_11

    list_13 ::= B4_COLON | list_13 B4_COLON

    grp_14 ::= B4_VALUE | B4_COLON

    list_15 ::= $empty | list_15 grp_14

    list_16 ::= B4_COLON | list_16 B4_COLON

    list_17 ::= B4_VALUE | list_17 B4_VALUE

    list_18 ::= $empty | list_18 B4_COLON

    list_19 ::= V_VALUE | list_19 V_VALUE

    list_20 ::= keyValue | list_20 keyValue

    opt_21 ::= mValue | $empty

    list_22 ::= M_VALUE | list_22 M_VALUE

    grp_23 ::= M_VALUE | M_COLON

    list_24 ::= grp_23 | list_24 grp_23

%End
