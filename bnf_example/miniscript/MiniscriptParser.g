-- AUTO-GENERATED from antlr/grammars-v4 miniscript by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=MiniscriptParser
%options package=lpg.grammars.miniscript
%options template=dtParserTemplateF.gi
%options import_terminals=MiniscriptLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    miniscript
%End

%Rules
    miniscript ::= expression

    expression ::= wrappedExpression
           | baseExpression

    baseExpression ::= constant
           | keyExpression
           | timeExpression
           | hashExpression
           | multisigExpression
           | binaryExpression
           | ternaryExpression
           | thresholdExpression

    constant ::= ZERO
           | ONE

    keyExpression ::= PK LPAREN key RPAREN
           | PKH LPAREN key RPAREN
           | PK_K LPAREN key RPAREN
           | PK_H LPAREN key RPAREN

    timeExpression ::= OLDER LPAREN positiveInteger RPAREN
           | AFTER LPAREN positiveInteger RPAREN

    hashExpression ::= SHA256 LPAREN hash32 RPAREN
           | HASH256 LPAREN hash32 RPAREN
           | HASH160 LPAREN hash20 RPAREN
           | RIPEMD160 LPAREN hash20 RPAREN

    multisigExpression ::= MULTI LPAREN positiveInteger COMMA keyList1To20 RPAREN
           | MULTI_A LPAREN positiveInteger COMMA keyList RPAREN

    binaryExpression ::= AND_V LPAREN expression COMMA expression RPAREN
           | AND_B LPAREN expression COMMA expression RPAREN
           | AND_N LPAREN expression COMMA expression RPAREN
           | OR_B LPAREN expression COMMA expression RPAREN
           | OR_C LPAREN expression COMMA expression RPAREN
           | OR_D LPAREN expression COMMA expression RPAREN
           | OR_I LPAREN expression COMMA expression RPAREN

    ternaryExpression ::= ANDOR LPAREN expression COMMA expression COMMA expression RPAREN

    thresholdExpression ::= THRESH LPAREN positiveInteger COMMA expression list_2 RPAREN

    wrappedExpression ::= WRAPPER_SEQUENCE baseExpression

    hash32 ::= HEX32_BYTES
           | DIGITS_64

    hash20 ::= HEX20_BYTES
           | DIGITS_40

    keyList ::= key list_4

    keyList1To20 ::= key opt_42

    key ::= COMPRESSED_PUBLIC_KEY
           | HEX32_BYTES
           | HEX20_BYTES
           | DIGITS_64
           | DIGITS_40
           | KEY
           | ZERO
           | ONE
           | POSITIVE_INTEGER
           | reservedKeyWord

    reservedKeyWord ::= PK
           | PKH
           | PK_K
           | PK_H
           | OLDER
           | AFTER
           | SHA256
           | HASH256
           | HASH160
           | RIPEMD160
           | MULTI
           | MULTI_A
           | AND_V
           | AND_B
           | AND_N
           | OR_B
           | OR_C
           | OR_D
           | OR_I
           | ANDOR
           | THRESH

    positiveInteger ::= ONE
           | DIGITS_64
           | DIGITS_40
           | POSITIVE_INTEGER

    seq_1 ::= COMMA expression

    list_2 ::= $empty | list_2 seq_1

    seq_3 ::= COMMA key

    list_4 ::= $empty | list_4 seq_3

    seq_5 ::= COMMA key

    opt_6 ::= seq_5 | $empty

    seq_7 ::= COMMA key opt_6

    opt_8 ::= seq_7 | $empty

    seq_9 ::= COMMA key opt_8

    opt_10 ::= seq_9 | $empty

    seq_11 ::= COMMA key opt_10

    opt_12 ::= seq_11 | $empty

    seq_13 ::= COMMA key opt_12

    opt_14 ::= seq_13 | $empty

    seq_15 ::= COMMA key opt_14

    opt_16 ::= seq_15 | $empty

    seq_17 ::= COMMA key opt_16

    opt_18 ::= seq_17 | $empty

    seq_19 ::= COMMA key opt_18

    opt_20 ::= seq_19 | $empty

    seq_21 ::= COMMA key opt_20

    opt_22 ::= seq_21 | $empty

    seq_23 ::= COMMA key opt_22

    opt_24 ::= seq_23 | $empty

    seq_25 ::= COMMA key opt_24

    opt_26 ::= seq_25 | $empty

    seq_27 ::= COMMA key opt_26

    opt_28 ::= seq_27 | $empty

    seq_29 ::= COMMA key opt_28

    opt_30 ::= seq_29 | $empty

    seq_31 ::= COMMA key opt_30

    opt_32 ::= seq_31 | $empty

    seq_33 ::= COMMA key opt_32

    opt_34 ::= seq_33 | $empty

    seq_35 ::= COMMA key opt_34

    opt_36 ::= seq_35 | $empty

    seq_37 ::= COMMA key opt_36

    opt_38 ::= seq_37 | $empty

    seq_39 ::= COMMA key opt_38

    opt_40 ::= seq_39 | $empty

    seq_41 ::= COMMA key opt_40

    opt_42 ::= seq_41 | $empty

%End
