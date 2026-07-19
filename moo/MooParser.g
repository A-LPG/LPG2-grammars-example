-- AUTO-GENERATED from antlr/grammars-v4 moo by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=MooParser
%options package=lpg.grammars.moo
%options template=btParserTemplateF.gi
%options import_terminals=MooLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End


%Define
    $ast_class /.Object./
    $ast_type /.Object./
%End

%Start
    prog
%End

%Rules
    prog ::= list_1

    declaration ::= programdecl
           | verbdecl
           | propertydecl
           | rmpropertydecl
           | setpropertydecl
           | displaypropertydecl
           | kidsdecl
           | parentdecl
           | describedecl
           | contentsdecl
           | noteditdecl
           | createdecl
           | editdecl
           | addaliasdecl

    programdecl ::= AT_PROGRAM programname COLON name list_2 DOT

    programname ::= name
           | stringliteral

    verbdecl ::= AT_VERB seq_3 list_4 opt_5

    verbname ::= name
           | stringliteral

    propertydecl ::= grp_6 property_ opt_7 opt_8 opt_9

    rmpropertydecl ::= grp_10 name

    setpropertydecl ::= AT_SET property_ TO expression

    displaypropertydecl ::= grp_11 property_

    kidsdecl ::= AT_KIDS name

    parentdecl ::= AT_PARENT name

    describedecl ::= AT_DESCRIBE property_ AS expression

    contentsdecl ::= AT_CONTENTS name

    noteditdecl ::= AT_NOTEDIT property_

    createdecl ::= AT_CREATE sysname CALLED expressionlist

    editdecl ::= AT_EDIT property_

    addaliasdecl ::= AT_ADDALIAS name list_13 TO expression

    statement ::= ifblock
           | whileblock
           | doblock
           | forblock
           | assignblock
           | tryblock
           | command SEMI

    ifblock ::= IF condition list_14 opt_17 opt_20 ENDIF opt_21

    whileblock ::= WHILE condition list_22

    doblock ::= DO list_23 WHILE condition

    forblock ::= FOR name IN expression list_24 ENDFOR

    tryblock ::= TRY list_25 EXCEPT property_ list_26 ENDTRY

    assignblock ::= property_ ASSIGN expression SEMI

    condition ::= LPAREN expression list_28 RPAREN

    relop ::= EQ
           | NEQ
           | GT
           | GTE
           | LT
           | LTE
           | AND
           | OR

    expressionlist ::= expression list_30

    expression ::= term list_33

    term ::= factor list_36

    factor ::= signedAtom list_38

    signedAtom ::= PLUS signedAtom
           | MINUS signedAtom
           | atom

    atom ::= stringliteral
           | functioninvocation
           | verbinvocation
           | property_
           | integer
           | real
           | list_
           | objref
           | LPAREN expression RPAREN
           | seq_39

    objref ::= OBJREF

    functioninvocation ::= name LPAREN expressionlist RPAREN

    command ::= verbinvocation
           | returncommand

    returncommand ::= RETURN opt_40

    verbinvocation ::= property_ COLON verb

    verb ::= name opt_43

    property_ ::= propertyname list_46

    propertyname ::= name
           | stringliteral

    list_ ::= LBRACE opt_47 RBRACE

    stringliteral ::= STRINGLITERAL

    integer ::= INTEGER

    real ::= REAL

    name ::= username
           | sysname

    sysname ::= DOLLAR opt_48

    username ::= STRING

    permissions ::= PERMISSIONS

    list_1 ::= declaration | list_1 declaration

    list_2 ::= statement | list_2 statement

    seq_3 ::= verbname COLON name

    list_4 ::= name | list_4 name

    opt_5 ::= permissions | $empty

    grp_6 ::= AT_PROPERTY | AT_PROP

    opt_7 ::= ASSIGN | $empty

    opt_8 ::= expression | $empty

    opt_9 ::= permissions | $empty

    grp_10 ::= AT_RMPROPERTY | AT_RMPROP

    grp_11 ::= AT_DISPLAY | AT_DISP

    seq_12 ::= COMMA name

    list_13 ::= $empty | list_13 seq_12

    list_14 ::= statement | list_14 statement

    list_15 ::= statement | list_15 statement

    seq_16 ::= ELSEIF condition list_15

    opt_17 ::= seq_16 | $empty

    list_18 ::= statement | list_18 statement

    seq_19 ::= ELSE list_18

    opt_20 ::= seq_19 | $empty

    opt_21 ::= SEMI | $empty

    list_22 ::= statement | list_22 statement

    list_23 ::= statement | list_23 statement

    list_24 ::= statement | list_24 statement

    list_25 ::= statement | list_25 statement

    list_26 ::= statement | list_26 statement

    seq_27 ::= relop expression

    list_28 ::= $empty | list_28 seq_27

    seq_29 ::= COMMA expression

    list_30 ::= $empty | list_30 seq_29

    grp_32 ::= PLUS | MINUS

    grp_31 ::= grp_32 term

    list_33 ::= $empty | list_33 grp_31

    grp_35 ::= TIMES | DIV | MOD

    grp_34 ::= grp_35 factor

    list_36 ::= $empty | list_36 grp_34

    seq_37 ::= POW signedAtom

    list_38 ::= $empty | list_38 seq_37

    seq_39 ::= BANG expression

    opt_40 ::= expression | $empty

    opt_41 ::= expressionlist | $empty

    seq_42 ::= LPAREN opt_41 RPAREN

    opt_43 ::= seq_42 | $empty

    seq_45 ::= DOT name

    grp_44 ::= seq_45 | LBRACKET expression RBRACKET

    list_46 ::= $empty | list_46 grp_44

    opt_47 ::= expressionlist | $empty

    opt_48 ::= STRING | $empty

%End
