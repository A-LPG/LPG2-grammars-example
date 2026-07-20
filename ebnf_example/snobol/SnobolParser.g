-- AUTO-GENERATED from antlr/grammars-v4 snobol by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=SnobolParser
%options package=lpg.grammars.snobol
%options template=dtParserTemplateF.gi
%options import_terminals=SnobolLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= list_1

    lin ::= opt_2 EOL

    line ::= seq_10
            | seq_11
            | grp_12

    label ::= STRING

    subject ::= seq_18

    pattern ::= STRINGLITERAL1
               | STRINGLITERAL2

    expression ::= multiplyingExpression list_21

    multiplyingExpression ::= powExpression list_24

    powExpression ::= atom opt_26

    atom ::= grp_27
            | subject
            | command
            | LBRACKET expression list_29 RBRACKET
            | LPAREN expression RPAREN

    command ::= ident
               | differ
               | eq
               | ne
               | ge
               | le
               | lt
               | integer
               | lgt
               | atan
               | chop
               | cos
               | exp
               | ln
               | remdr
               | sin
               | tan
               | date
               | dupl
               | reverse
               | replace
               | size
               | trim
               | array_
               | sort
               | table
               | break_

    ident ::= IDENT LPAREN expression RPAREN

    differ ::= DIFFER LPAREN expression RPAREN

    eq ::= EQ LPAREN expression RPAREN

    ne ::= NE LPAREN expression RPAREN

    ge ::= GE LPAREN expression RPAREN

    gt ::= GT LPAREN expression RPAREN

    le ::= LE LPAREN expression RPAREN

    lt ::= LT LPAREN expression RPAREN

    integer ::= INTEGER LPAREN expression RPAREN

    lgt ::= LGT LPAREN expression RPAREN

    atan ::= ATAN LPAREN expression RPAREN

    chop ::= CHOP LPAREN expression RPAREN

    cos ::= COS LPAREN expression RPAREN

    exp ::= EXP LPAREN expression RPAREN

    ln ::= LN LPAREN expression RPAREN

    remdr ::= REMDR LPAREN expression RPAREN

    sin ::= SIN LPAREN expression RPAREN

    tan ::= TAN LPAREN expression RPAREN

    dupl ::= DUPL LPAREN expression COMMA expression RPAREN

    reverse ::= REVERSE LPAREN expression RPAREN

    date ::= DATE LPAREN RPAREN

    replace ::= REPLACE LPAREN expression COMMA expression COMMA expression RPAREN

    size ::= SIZE LPAREN expression RPAREN

    trim ::= TRIM LPAREN expression RPAREN

    array_ ::= ARRAY LPAREN expression COMMA expression RPAREN

    convert ::= CONVERT LPAREN expression COMMA expression RPAREN

    table ::= TABLE LPAREN expression RPAREN

    sort ::= SORT LPAREN expression RPAREN

    break_ ::= BREAK LPAREN expression RPAREN

    transfer ::= opt_33

    transferpre ::= grp_34

    list_1 ::= lin+

    opt_2 ::= line?

    opt_3 ::= label?

    opt_4 ::= pattern?

    list_5 ::= expression+

    seq_6 ::= EQ list_5

    opt_7 ::= seq_6?

    seq_8 ::= COLON transfer

    opt_9 ::= seq_8?

    seq_10 ::= opt_3 subject opt_4 opt_7 opt_9

    seq_11 ::= COLON transfer

    grp_12 ::= COMMENT
              | END

    opt_13 ::= AMP?

    seq_14 ::= COMMA STRING

    list_15 ::= (list_15 seq_14)?

    seq_16 ::= LBRACKET STRING list_15 RBRACKET

    opt_17 ::= seq_16?

    seq_18 ::= opt_13 STRING opt_17

    grp_20 ::= PLUS
              | MINUS

    grp_19 ::= grp_20 multiplyingExpression

    list_21 ::= (list_21 grp_19)?

    grp_23 ::= STAR
              | SLASH

    grp_22 ::= grp_23 powExpression

    list_24 ::= (list_24 grp_22)?

    seq_25 ::= CARET expression

    opt_26 ::= seq_25?

    grp_27 ::= STRINGLITERAL1
              | STRINGLITERAL2
              | INTEGER

    seq_28 ::= COMMA expression

    list_29 ::= (list_29 seq_28)?

    opt_31 ::= transferpre?

    grp_32 ::= label
              | END

    grp_30 ::= opt_31 LPAREN grp_32 RPAREN

    opt_33 ::= grp_30?

    grp_34 ::= F
              | S
%End
