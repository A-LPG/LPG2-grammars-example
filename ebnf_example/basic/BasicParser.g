-- AUTO-GENERATED from antlr/grammars-v4 basic by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=BasicParser
%options package=lpg.grammars.basic
%options template=dtParserTemplateF.gi
%options import_terminals=BasicLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= list_1

    line ::= linenumber grp_2

    amperoper ::= AMP

    linenumber ::= NUMBER

    amprstmt ::= opt_6 statement
           | IDENTIFIER
           | REM

    statement ::= CLS
           | LOAD
           | SAVE
           | TRACE
           | NOTRACE
           | FLASH
           | INVERSE
           | GR
           | NORMAL
           | SHLOAD
           | CLEAR
           | RUN
           | STOP
           | TEXT
           | HOME
           | HGR
           | IDENTIFIER
           | endstmt
           | returnstmt
           | restorestmt
           | amptstmt
           | popstmt
           | liststmt
           | storestmt
           | getstmt
           | recallstmt
           | nextstmt
           | instmt
           | prstmt
           | onerrstmt
           | hlinstmt
           | vlinstmt
           | colorstmt
           | speedstmt
           | scalestmt
           | rotstmt
           | hcolorstmt
           | himemstmt
           | lomemstmt
           | printstmt1
           | pokestmt
           | plotstmt
           | ongotostmt
           | ongosubstmt
           | ifstmt
           | forstmt1
           | forstmt2
           | inputstmt
           | tabstmt
           | dimstmt
           | gotostmt
           | gosubstmt
           | callstmt
           | readstmt
           | hplotstmt
           | vplotstmt
           | vtabstmnt
           | htabstmnt
           | waitstmt
           | datastmt
           | xdrawstmt
           | drawstmt
           | defstmt
           | letstmt
           | includestmt

    vardecl ::= var_ list_8

    printstmt1 ::= grp_9 opt_10

    printlist ::= expression list_14

    getstmt ::= GET exprlist

    letstmt ::= opt_15 variableassignment

    variableassignment ::= vardecl EQ exprlist

    relop ::= GTEQ
           | GT EQ
           | EQ GT
           | LTEQ
           | LT EQ
           | EQ LT
           | neq
           | EQ
           | GT
           | LT

    neq ::= LT GT

    ifstmt ::= IF expression opt_16 grp_17

    forstmt1 ::= FOR vardecl EQ expression TO expression opt_19 opt_22

    forstmt2 ::= FOR vardecl EQ expression TO expression opt_24

    nextstmt ::= NEXT opt_28

    inputstmt ::= INPUT opt_31 varlist

    readstmt ::= READ varlist

    dimstmt ::= DIM varlist

    gotostmt ::= GOTO linenumber

    gosubstmt ::= GOSUB expression

    pokestmt ::= POKE expression COMMA expression

    callstmt ::= CALL exprlist

    hplotstmt ::= HPLOT opt_33 list_35

    vplotstmt ::= VPLOT opt_37 list_39

    plotstmt ::= PLOT expression COMMA expression

    ongotostmt ::= ON expression GOTO linenumber list_41

    ongosubstmt ::= ON expression GOSUB linenumber list_43

    vtabstmnt ::= VTAB expression

    htabstmnt ::= HTAB expression

    himemstmt ::= HIMEM COLON expression

    lomemstmt ::= LOMEM COLON expression

    datastmt ::= DATA datum list_46

    datum ::= number
           | STRING

    waitstmt ::= WAIT expression COMMA expression opt_48

    xdrawstmt ::= XDRAW expression opt_50

    drawstmt ::= DRAW expression opt_52

    defstmt ::= DEF opt_53 var_ LPAREN var_ RPAREN EQ expression

    tabstmt ::= TAB LPAREN expression RPAREN

    speedstmt ::= SPEED EQ expression

    rotstmt ::= ROT EQ expression

    scalestmt ::= SCALE EQ expression

    colorstmt ::= COLOR EQ expression

    hcolorstmt ::= HCOLOR EQ expression

    hlinstmt ::= HLIN expression COMMA expression AT expression

    vlinstmt ::= VLIN expression COMMA expression AT expression

    onerrstmt ::= ONERR GOTO linenumber

    prstmt ::= NUMBER NUMBER

    instmt ::= NUMBER NUMBER

    storestmt ::= STORE vardecl

    recallstmt ::= RECALL vardecl

    liststmt ::= LIST opt_54

    popstmt ::= POP opt_56

    amptstmt ::= AMP expression

    includestmt ::= INCLUDE expression

    endstmt ::= END

    returnstmt ::= RETURN

    restorestmt ::= RESTORE

    number ::= opt_58 grp_59

    func_ ::= STRING
           | number
           | tabfunc
           | vardecl
           | chrfunc
           | sqrfunc
           | lenfunc
           | strfunc
           | ascfunc
           | scrnfunc
           | midfunc
           | pdlfunc
           | peekfunc
           | intfunc
           | spcfunc
           | frefunc
           | posfunc
           | usrfunc
           | leftfunc
           | valfunc
           | rightfunc
           | fnfunc
           | sinfunc
           | cosfunc
           | tanfunc
           | atnfunc
           | rndfunc
           | sgnfunc
           | expfunc
           | logfunc
           | absfunc
           | LPAREN expression RPAREN

    signExpression ::= opt_60 opt_62 func_

    exponentExpression ::= signExpression list_64

    multiplyingExpression ::= exponentExpression list_67

    addingExpression ::= multiplyingExpression list_70

    relationalExpression ::= addingExpression opt_72

    expression ::= func_
           | relationalExpression list_75

    var_ ::= varname opt_76

    varname ::= IDENTIFIER list_78

    varsuffix ::= IDENTIFIER
           | PERCENT

    varlist ::= vardecl list_80

    exprlist ::= expression list_82

    sqrfunc ::= SQR LPAREN expression RPAREN

    chrfunc ::= IDENTIFIER LPAREN expression RPAREN

    lenfunc ::= LEN LPAREN expression RPAREN

    ascfunc ::= ASC LPAREN expression RPAREN

    midfunc ::= IDENTIFIER LPAREN expression COMMA expression COMMA expression RPAREN

    pdlfunc ::= PDL LPAREN expression RPAREN

    peekfunc ::= PEEK LPAREN expression RPAREN

    intfunc ::= INTF LPAREN expression RPAREN

    spcfunc ::= SPC LPAREN expression RPAREN

    frefunc ::= FRE LPAREN expression RPAREN

    posfunc ::= POS LPAREN expression RPAREN

    usrfunc ::= USR LPAREN expression RPAREN

    leftfunc ::= IDENTIFIER LPAREN expression COMMA expression RPAREN

    rightfunc ::= IDENTIFIER LPAREN expression COMMA expression RPAREN

    strfunc ::= IDENTIFIER LPAREN expression RPAREN

    fnfunc ::= FN var_ LPAREN expression RPAREN

    valfunc ::= VAL LPAREN expression RPAREN

    scrnfunc ::= SCRN LPAREN expression COMMA expression RPAREN

    sinfunc ::= SIN LPAREN expression RPAREN

    cosfunc ::= COS LPAREN expression RPAREN

    tanfunc ::= TAN LPAREN expression RPAREN

    atnfunc ::= ATN LPAREN expression RPAREN

    rndfunc ::= RND LPAREN expression RPAREN

    sgnfunc ::= SGN LPAREN expression RPAREN

    expfunc ::= EXP LPAREN expression RPAREN

    logfunc ::= LOG LPAREN expression RPAREN

    absfunc ::= ABS LPAREN expression RPAREN

    tabfunc ::= TAB LPAREN expression RPAREN

    list_1 ::= line | list_1 line

    opt_3 ::= amprstmt | $empty

    seq_4 ::= COLON opt_3

    list_5 ::= $empty | list_5 seq_4

    grp_2 ::= amprstmt list_5 | IDENTIFIER | REM

    opt_6 ::= amperoper | $empty

    seq_7 ::= LPAREN exprlist RPAREN

    list_8 ::= $empty | list_8 seq_7

    grp_9 ::= PRINT | QUESTION

    opt_10 ::= printlist | $empty

    grp_12 ::= COMMA | SEMI

    opt_13 ::= expression | $empty

    grp_11 ::= grp_12 opt_13

    list_14 ::= $empty | list_14 grp_11

    opt_15 ::= LET | $empty

    opt_16 ::= THEN | $empty

    grp_17 ::= statement | linenumber

    seq_18 ::= STEP expression

    opt_19 ::= seq_18 | $empty

    opt_20 ::= vardecl | $empty

    seq_21 ::= statement NEXT opt_20

    opt_22 ::= seq_21 | $empty

    seq_23 ::= STEP expression

    opt_24 ::= seq_23 | $empty

    seq_25 ::= COMMA vardecl

    list_26 ::= $empty | list_26 seq_25

    seq_27 ::= vardecl list_26

    opt_28 ::= seq_27 | $empty

    grp_30 ::= COMMA | SEMI

    grp_29 ::= STRING grp_30

    opt_31 ::= grp_29 | $empty

    seq_32 ::= expression COMMA expression

    opt_33 ::= seq_32 | $empty

    seq_34 ::= TO expression COMMA expression

    list_35 ::= $empty | list_35 seq_34

    seq_36 ::= expression COMMA expression

    opt_37 ::= seq_36 | $empty

    seq_38 ::= TO expression COMMA expression

    list_39 ::= $empty | list_39 seq_38

    seq_40 ::= COMMA linenumber

    list_41 ::= $empty | list_41 seq_40

    seq_42 ::= COMMA linenumber

    list_43 ::= $empty | list_43 seq_42

    opt_44 ::= datum | $empty

    seq_45 ::= COMMA opt_44

    list_46 ::= $empty | list_46 seq_45

    seq_47 ::= COMMA expression

    opt_48 ::= seq_47 | $empty

    seq_49 ::= AT expression COMMA expression

    opt_50 ::= seq_49 | $empty

    seq_51 ::= AT expression COMMA expression

    opt_52 ::= seq_51 | $empty

    opt_53 ::= FN | $empty

    opt_54 ::= expression | $empty

    seq_55 ::= expression COMMA expression

    opt_56 ::= seq_55 | $empty

    grp_57 ::= PLUS | MINUS

    opt_58 ::= grp_57 | $empty

    grp_59 ::= NUMBER

    opt_60 ::= NOT | $empty

    grp_61 ::= PLUS | MINUS

    opt_62 ::= grp_61 | $empty

    seq_63 ::= IDENTIFIER signExpression

    list_64 ::= $empty | list_64 seq_63

    grp_66 ::= STAR | SLASH

    grp_65 ::= grp_66 exponentExpression

    list_67 ::= $empty | list_67 grp_65

    grp_69 ::= PLUS | MINUS

    grp_68 ::= grp_69 multiplyingExpression

    list_70 ::= $empty | list_70 grp_68

    seq_71 ::= relop addingExpression

    opt_72 ::= seq_71 | $empty

    grp_74 ::= AND | OR

    grp_73 ::= grp_74 relationalExpression

    list_75 ::= $empty | list_75 grp_73

    opt_76 ::= varsuffix | $empty

    grp_77 ::= IDENTIFIER | NUMBER

    list_78 ::= $empty | list_78 grp_77

    seq_79 ::= COMMA vardecl

    list_80 ::= $empty | list_80 seq_79

    seq_81 ::= COMMA expression

    list_82 ::= $empty | list_82 seq_81

%End
