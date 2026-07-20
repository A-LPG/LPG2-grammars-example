-- AUTO-GENERATED from antlr/grammars-v4 action by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=ActionParser
%options package=lpg.grammars.action
%options backtrack
%options template=btParserTemplateF.gi
%options import_terminals=ActionLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= opt_1

    program ::= list_5

    progmodule ::= list_6 routinelist

    systemdecls ::= definedecl
           | typedecl
           | vardecl

    definedecl ::= DEFINE deflist

    deflist ::= def list_8

    def ::= IDENTIFIER EQ STRCONST

    typedecl ::= TYPE typeerecidentlist

    typeerecidentlist ::= list_9

    typerecident ::= recname EQ list_10

    recname ::= IDENTIFIER

    fieldinit ::= funddecl

    vardecl ::= list_11

    basevardecl ::= funddecl
           | pointerdecl
           | arraydecl
           | recorddecl

    funddecl ::= list_12

    basefunddecl ::= fundtype fundidentlist

    fundtype ::= CARD
           | CHAR
           | BYTE
           | INT

    fundidentlist ::= fundident list_14

    fundident ::= IDENTIFIER opt_16

    initopts ::= addr
           | list_17

    addr ::= compconst

    value ::= NUMCONST

    pointerdecl ::= ptrtype POINTER ptridentlist

    ptrtype ::= fundtype
           | recname

    ptridentlist ::= ptrident list_19

    ptrident ::= IDENTIFIER opt_21

    arraydecl ::= fundtype ARRAY arridentlist

    arridentlist ::= arrident list_23

    arrident ::= IDENTIFIER opt_25 opt_27

    dim ::= arithexp

    arrinitopts ::= addr
           | list_28
           | STRCONST

    arrayvalue ::= compconst

    recorddecl ::= IDENTIFIER recidentlist

    recidentlist ::= recident list_30

    recident ::= IDENTIFIER opt_32

    address ::= compconst

    memreference ::= memcontents
           | AT IDENTIFIER

    memcontents ::= fundref
           | arrref
           | ptrref
           | recref

    fundref ::= IDENTIFIER

    arrref ::= IDENTIFIER LPAREN arithexp RPAREN

    ptrref ::= IDENTIFIER CARET

    recref ::= IDENTIFIER DOT IDENTIFIER

    routinelist ::= list_33

    routine ::= procroutine
           | funcroutine

    procroutine ::= procdecl opt_34 opt_35 opt_36

    procdecl ::= PROC IDENTIFIER opt_38 LPAREN opt_39 RPAREN

    funcroutine ::= funcdecl opt_40 opt_41 opt_43

    funcdecl ::= fundtype FUNC IDENTIFIER opt_45 LPAREN opt_46 RPAREN

    routinecall ::= IDENTIFIER LPAREN opt_47 RPAREN

    params ::= param list_49

    param ::= IDENTIFIER
           | compconst
           | STRCONST
           | NUMCONST
           | arithexp

    paramdecl ::= vardecl

    stmtlist ::= list_50

    stmt ::= simpstmt
           | strucstmt
           | codeblock

    simpstmt ::= assignstmt
           | exitstmt
           | routinecall

    strucstmt ::= ifstmt
           | doloop
           | whileloop
           | forloop

    assignstmt ::= memcontents grp_51 arithexp

    exitstmt ::= EXIT

    ifstmt ::= IF condexp THEN opt_52 list_53 opt_54 FI

    elseifexten ::= ELSEIF condexp THEN opt_55

    elseexten ::= ELSE opt_56

    doloop ::= DO opt_57 opt_58 OD

    untilstmt ::= UNTIL condexp

    whileloop ::= WHILE condexp doloop

    forloop ::= FOR IDENTIFIER EQ start_ TO finish_ opt_60 doloop

    start_ ::= arithexp

    finish_ ::= arithexp

    inc ::= arithexp

    codeblock ::= list_61

    compconstlist ::= list_62

    condexp ::= complexrel
           | simprelexp
           | arithexp
           | multexp

    complexrel ::= complexrel SPECIALOP simprelexp
           | simprelexp SPECIALOP simprelexp

    simprelexp ::= arithexp RELOP arithexp

    arithexp ::= arithexp ADDOP arithexp
           | multexp

    multexp ::= multexp MULTOP arithexp
           | valuevalue

    valuevalue ::= NUMCONST
           | memreference
           | LPAREN arithexp RPAREN

    compconst ::= list_63

    basecompconst ::= IDENTIFIER
           | NUMCONST
           | CARET
           | MUL

    opt_1 ::= program | $empty

    opt_2 ::= MODULE | $empty

    list_3 ::= progmodule | list_3 progmodule

    seq_4 ::= opt_2 list_3

    list_5 ::= seq_4 | list_5 seq_4

    list_6 ::= $empty | list_6 systemdecls

    seq_7 ::= COMMA def

    list_8 ::= $empty | list_8 seq_7

    list_9 ::= typerecident | list_9 typerecident

    list_10 ::= fieldinit | list_10 fieldinit

    list_11 ::= basevardecl | list_11 basevardecl

    list_12 ::= basefunddecl | list_12 basefunddecl

    seq_13 ::= COMMA fundident

    list_14 ::= $empty | list_14 seq_13

    seq_15 ::= EQ initopts

    opt_16 ::= seq_15 | $empty

    list_17 ::= value | list_17 value

    seq_18 ::= COMMA ptrident

    list_19 ::= $empty | list_19 seq_18

    seq_20 ::= EQ value

    opt_21 ::= seq_20 | $empty

    seq_22 ::= COMMA arrident

    list_23 ::= $empty | list_23 seq_22

    seq_24 ::= LPAREN dim RPAREN

    opt_25 ::= seq_24 | $empty

    seq_26 ::= EQ arrinitopts

    opt_27 ::= seq_26 | $empty

    list_28 ::= arrayvalue | list_28 arrayvalue

    seq_29 ::= COMMA recident

    list_30 ::= $empty | list_30 seq_29

    seq_31 ::= EQ address

    opt_32 ::= seq_31 | $empty

    list_33 ::= routine | list_33 routine

    opt_34 ::= systemdecls | $empty

    opt_35 ::= stmtlist | $empty

    opt_36 ::= RETURN | $empty

    seq_37 ::= EQ addr

    opt_38 ::= seq_37 | $empty

    opt_39 ::= paramdecl | $empty

    opt_40 ::= systemdecls | $empty

    opt_41 ::= stmtlist | $empty

    seq_42 ::= RETURN LPAREN arithexp RPAREN

    opt_43 ::= seq_42 | $empty

    seq_44 ::= DOT addr

    opt_45 ::= seq_44 | $empty

    opt_46 ::= paramdecl | $empty

    opt_47 ::= params | $empty

    seq_48 ::= COMMA param

    list_49 ::= $empty | list_49 seq_48

    list_50 ::= stmt | list_50 stmt

    grp_51 ::= EQ | AssignPlus | AssignMinus

    opt_52 ::= stmtlist | $empty

    list_53 ::= $empty | list_53 elseifexten

    opt_54 ::= elseexten | $empty

    opt_55 ::= stmtlist | $empty

    opt_56 ::= stmtlist | $empty

    opt_57 ::= stmtlist | $empty

    opt_58 ::= untilstmt | $empty

    seq_59 ::= STEP inc

    opt_60 ::= seq_59 | $empty

    list_61 ::= compconstlist | list_61 compconstlist

    list_62 ::= compconst | list_62 compconst

    list_63 ::= basecompconst | list_63 basecompconst

%End
