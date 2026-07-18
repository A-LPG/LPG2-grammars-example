-- AUTO-GENERATED from antlr/grammars-v4 terraform by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=TerraformParser
%options package=lpg.grammars.terraform
%options template=dtParserTemplateF.gi
%options import_terminals=TerraformLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= list_2

    terraform ::= TERRAFORM blockbody

    resource ::= RESOURCE resourcetype name blockbody

    data ::= DATA resourcetype name blockbody

    provider ::= PROVIDER resourcetype blockbody

    output ::= OUTPUT name blockbody

    local ::= LOCALS blockbody

    module ::= MODULE name blockbody

    variable ::= VARIABLE name blockbody

    block ::= blocktype list_3 blockbody

    blocktype ::= IDENTIFIER

    resourcetype ::= STRING

    name ::= STRING

    label ::= STRING

    blockbody ::= LCURL list_5 RCURL

    argument ::= identifier EQ expression

    identifier ::= opt_8 identifierchain

    identifierchain ::= grp_9 opt_10 list_12
           | STAR list_14
           | inline_index list_16

    inline_index ::= NATURAL_NUMBER

    expression ::= section
           | expression operator_ expression
           | LPAREN expression RPAREN
           | expression QUESTION expression COLON expression
           | forloop

    forloop ::= FOR identifier IN expression COLON expression

    section ::= list_
           | map_
           | val

    val ::= NULL_
           | signed_number
           | string
           | identifier
           | BOOL
           | DESCRIPTION
           | filedecl
           | functioncall
           | _

    functioncall ::= functionname LPAREN functionarguments RPAREN
           | JSONENCODE LPAREN list_18 RPAREN

    functionname ::= IDENTIFIER

    functionarguments ::= expression list_20

    index ::= LBRACKET expression RBRACKET

    filedecl ::= FILE LPAREN expression RPAREN

    list_ ::= LBRACKET opt_25 RBRACKET

    map_ ::= LCURL list_28 RCURL

    string ::= STRING
           | MULTILINESTRING

    signed_number ::= opt_30 number

    operator_ ::= SLASH
           | STAR
           | PERCENT
           | PLUS
           | MINUS
           | GT
           | GTEQ
           | LT
           | LTEQ
           | EQEQ
           | NOTEQ
           | ANDAND
           | OROR

    number ::= NATURAL_NUMBER opt_32

    grp_1 ::= local | module | output | provider | variable | data | resource | terraform

    list_2 ::= grp_1 | list_2 grp_1

    list_3 ::= $empty | list_3 label

    grp_4 ::= argument | block

    list_5 ::= $empty | list_5 grp_4

    grp_7 ::= LOCAL | DATA | VAR | MODULE

    grp_6 ::= grp_7 DOT

    opt_8 ::= grp_6 | $empty

    grp_9 ::= IDENTIFIER | IN | VARIABLE | PROVIDER

    opt_10 ::= index | $empty

    seq_11 ::= DOT identifierchain

    list_12 ::= $empty | list_12 seq_11

    seq_13 ::= DOT identifierchain

    list_14 ::= $empty | list_14 seq_13

    seq_15 ::= DOT identifierchain

    list_16 ::= $empty | list_16 seq_15

    list_18 ::= $empty | list_18 empty_17

    seq_19 ::= COMMA expression

    list_20 ::= $empty | list_20 seq_19

    seq_21 ::= COMMA expression

    list_22 ::= $empty | list_22 seq_21

    opt_23 ::= COMMA | $empty

    seq_24 ::= expression list_22 opt_23

    opt_25 ::= seq_24 | $empty

    opt_26 ::= COMMA | $empty

    seq_27 ::= argument opt_26

    list_28 ::= $empty | list_28 seq_27

    grp_29 ::= PLUS | MINUS

    opt_30 ::= grp_29 | $empty

    seq_31 ::= DOT NATURAL_NUMBER

    opt_32 ::= seq_31 | $empty

%End
