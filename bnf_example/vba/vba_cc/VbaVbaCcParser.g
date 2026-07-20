-- AUTO-GENERATED from antlr/grammars-v4 vba/vba_cc by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=VbaVbaCcParser
%options package=lpg.grammars.vba.vba_cc
%options template=dtParserTemplateF.gi
%options import_terminals=VbaVbaCcLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    startRule
%End

%Rules
    startRule ::= grp_1 conditionalModuleBody list_2
           | $empty
           | NEWLINE

    proceduralModuleHeader ::= IDENTIFIER STRING

    classFileHeader ::= VERSION NUMBER opt_3

    logicalLine ::= NEWLINE opt_4 opt_8

    conditionalModuleBody ::= ccBlock

    ccBlock ::= list_10

    ccConst ::= NEWLINE CONST ccVarLhs EQ ccExpression opt_11

    ccVarLhs ::= name

    ccIfBlock ::= ccIf opt_12 list_13 opt_14 ccEndif

    ccIf ::= list_15 IF ccExpression THEN opt_16

    ccElseifBlock ::= ccElseif opt_17

    ccElseif ::= list_18 ELSEIF ccExpression THEN opt_19

    ccElseBlock ::= ccElse opt_20

    ccElse ::= list_21 ELSE opt_22

    ccEndif ::= list_23 ENDIF opt_24

    name ::= untypedName
           | typedName

    untypedName ::= IDENTIFIER
           | FOREIGN_NAME

    typedName ::= IDENTIFIER typeSuffix

    typeSuffix ::= AMP
           | PERCENT
           | HASH
           | BANG
           | AT
           | DOLLAR
           | CARET

    ccExpression ::= literalExpression
           | reservedKeywords
           | IDENTIFIER
           | LPAREN ccExpression RPAREN
           | ccExpression CARET ccExpression
           | MINUS ccExpression
           | ccExpression grp_25 ccExpression
           | ccExpression BACKSLASH ccExpression
           | ccExpression MOD ccExpression
           | ccExpression grp_26 ccExpression
           | ccExpression AMP ccExpression
           | ccExpression grp_27 ccExpression
           | ccFunc LPAREN ccExpression RPAREN
           | NOT ccExpression
           | ccExpression AND ccExpression
           | ccExpression OR ccExpression
           | ccExpression XOR ccExpression
           | ccExpression EQV ccExpression
           | ccExpression IMP ccExpression

    literalExpression ::= BOOLEANLITERAL
           | NUMBER
           | INTEGERLITERAL
           | STRING
           | DATELITERAL
           | EMPTY_
           | NULL_
           | NOTHING

    ccFunc ::= INT
           | FIX
           | ABS
           | SGN
           | LEN
           | LENB
           | CBOOL
           | CBYTE
           | CCUR
           | CDATE
           | CDBL
           | CINT
           | CLNG
           | CLNGLNG
           | CLNGPTR
           | CSNG
           | CSTR
           | CVAR

    reservedKeywords ::= WIN16_
           | WIN32_
           | WIN64_
           | VBA6
           | VBA7
           | MAC

    grp_1 ::= proceduralModuleHeader | classFileHeader

    list_2 ::= $empty | list_2 NEWLINE

    opt_3 ::= CLASS | $empty

    opt_4 ::= WS | $empty

    grp_6 ::= CONST | IF | ELSEIF | ELSE | NEWLINE

    list_7 ::= $empty | list_7 NEWLINE

    grp_5 ::= grp_6 list_7

    opt_8 ::= grp_5 | $empty

    grp_9 ::= ccConst | ccIfBlock | logicalLine

    list_10 ::= grp_9 | list_10 grp_9

    opt_11 ::= comment_tok | $empty

    opt_12 ::= ccBlock | $empty

    list_13 ::= $empty | list_13 ccElseifBlock

    opt_14 ::= ccElseBlock | $empty

    list_15 ::= NEWLINE | list_15 NEWLINE

    opt_16 ::= comment_tok | $empty

    opt_17 ::= ccBlock | $empty

    list_18 ::= NEWLINE | list_18 NEWLINE

    opt_19 ::= comment_tok | $empty

    opt_20 ::= ccBlock | $empty

    list_21 ::= NEWLINE | list_21 NEWLINE

    opt_22 ::= comment_tok | $empty

    list_23 ::= NEWLINE | list_23 NEWLINE

    opt_24 ::= comment_tok | $empty

    grp_25 ::= STAR | SLASH

    grp_26 ::= PLUS | MINUS

    grp_27 ::= EQ | NEQ | GT | GEQ | LEQ | LT | LIKE

    comment_tok ::= $empty

%End
