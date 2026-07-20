-- AUTO-GENERATED from antlr/grammars-v4 mumps by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=MumpsParser
%options package=lpg.grammars.mumps
%options template=dtParserTemplateF.gi
%options import_terminals=MumpsLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= list_1 eof

    eof ::= list_2 opt_3

    line ::= code
           | routinedecl
           | CR

    code ::= grp_4 opt_11 list_12 CR

    label ::= identifier list_13

    routinedecl ::= opt_14 identifier opt_17 list_18 CR

    paramlist ::= param list_20

    param ::= variable

    subproc ::= identifier opt_23 list_26

    command ::= set_
           | for_
           | write_
           | read_
           | quit_
           | halt_
           | hang_
           | new_
           | break_
           | do_
           | kill_
           | view_
           | merge_
           | xecute_
           | grp_27

    postcondition ::= COLON expression

    expression ::= term list_31

    term ::= variable
           | function_
           | NUMBER
           | LPAREN expression RPAREN

    condition ::= term
           | grp_32

    identifier ::= IDENTIFIER

    variable ::= list_35 identifier

    function_ ::= DOLLAR identifier opt_37

    break_ ::= BREAK opt_38

    do_ ::= DO opt_39 list_40 identifier opt_43

    for_ ::= FOR list_44 term EQUALS term COLON opt_46 term list_47 list_50 COLON list_51 condition

    halt_ ::= HALT opt_52

    hang_ ::= HANG opt_53 list_54 term

    if_ ::= IF list_55 condition list_56 command

    kill_ ::= KILL opt_57 list_58 arglist

    merge_ ::= MERGE opt_59 list_60 term EQUALS term list_62

    new_ ::= NEW opt_63 list_64 arglist

    quit_ ::= QUIT opt_65 opt_68

    read_ ::= READ opt_69 list_70 arglist

    set_ ::= SET opt_71 list_72 assign list_74

    view_ ::= VIEW opt_75 list_76 IDENTIFIER

    write_ ::= WRITE opt_77 list_78 arglist

    xecute_ ::= XECUTE opt_79 list_80 STRING

    assign ::= opt_84 list_85 EQUALS list_86 arg

    arglist ::= arg list_89

    arg ::= expression
           | grp_90

    list_1 ::= line
           | list_1 line

    list_2 ::= $empty
           | list_2 SPACE

    opt_3 ::= CR
           | $empty

    list_5 ::= SPACE
           | list_5 SPACE

    list_6 ::= DOT
           | list_6 DOT

    seq_7 ::= list_5 list_6

    list_8 ::= SPACE
           | list_8 SPACE

    grp_4 ::= label
           | seq_7
           | list_8

    list_10 ::= command
           | list_10 command

    grp_9 ::= list_10
           | if_
           | subproc

    opt_11 ::= grp_9
           | $empty

    list_12 ::= $empty
           | list_12 SPACE

    list_13 ::= SPACE
           | list_13 SPACE

    opt_14 ::= PERCENT
           | $empty

    opt_15 ::= paramlist
           | $empty

    seq_16 ::= LPAREN opt_15 RPAREN

    opt_17 ::= seq_16
           | $empty

    list_18 ::= $empty
           | list_18 SPACE

    seq_19 ::= COMMA param

    list_20 ::= $empty
           | list_20 seq_19

    opt_21 ::= paramlist
           | $empty

    seq_22 ::= LPAREN opt_21 RPAREN

    opt_23 ::= seq_22
           | $empty

    list_24 ::= $empty
           | list_24 SPACE

    seq_25 ::= list_24 command

    list_26 ::= seq_25
           | list_26 seq_25

    grp_27 ::= CLOSE
           | ELSE
           | GOTO
           | JOB
           | LOCK
           | OPEN
           | TCOMMIT
           | TRESTART
           | TROLLBACK
           | TSTART
           | USE

    list_29 ::= $empty
           | list_29 SPACE

    grp_30 ::= ADD
           | MULTIPLY
           | SUBTRACT
           | DIVIDE
           | INTDIVIDE
           | MODULO
           | EXPONENT

    grp_28 ::= list_29 grp_30 expression

    list_31 ::= $empty
           | list_31 grp_28

    grp_33 ::= NGT
           | NLT
           | LT
           | GT
           | EQUALS

    grp_32 ::= term grp_33 term

    grp_34 ::= CARAT
           | AMPERSAND

    list_35 ::= $empty
           | list_35 grp_34

    seq_36 ::= LPAREN arglist RPAREN

    opt_37 ::= seq_36
           | $empty

    opt_38 ::= postcondition
           | $empty

    opt_39 ::= postcondition
           | $empty

    list_40 ::= SPACE
           | list_40 SPACE

    opt_41 ::= paramlist
           | $empty

    seq_42 ::= LPAREN opt_41 RPAREN

    opt_43 ::= seq_42
           | $empty

    list_44 ::= SPACE
           | list_44 SPACE

    seq_45 ::= term COLON

    opt_46 ::= seq_45
           | $empty

    list_47 ::= SPACE
           | list_47 SPACE

    opt_48 ::= SPACE
           | $empty

    seq_49 ::= command opt_48

    list_50 ::= $empty
           | list_50 seq_49

    list_51 ::= $empty
           | list_51 SPACE

    opt_52 ::= postcondition
           | $empty

    opt_53 ::= postcondition
           | $empty

    list_54 ::= SPACE
           | list_54 SPACE

    list_55 ::= SPACE
           | list_55 SPACE

    list_56 ::= $empty
           | list_56 SPACE

    opt_57 ::= postcondition
           | $empty

    list_58 ::= SPACE
           | list_58 SPACE

    opt_59 ::= postcondition
           | $empty

    list_60 ::= SPACE
           | list_60 SPACE

    seq_61 ::= COMMA term EQUALS term

    list_62 ::= $empty
           | list_62 seq_61

    opt_63 ::= postcondition
           | $empty

    list_64 ::= SPACE
           | list_64 SPACE

    opt_65 ::= postcondition
           | $empty

    list_66 ::= SPACE
           | list_66 SPACE

    seq_67 ::= list_66 term

    opt_68 ::= seq_67
           | $empty

    opt_69 ::= postcondition
           | $empty

    list_70 ::= SPACE
           | list_70 SPACE

    opt_71 ::= postcondition
           | $empty

    list_72 ::= SPACE
           | list_72 SPACE

    seq_73 ::= COMMA assign

    list_74 ::= $empty
           | list_74 seq_73

    opt_75 ::= postcondition
           | $empty

    list_76 ::= SPACE
           | list_76 SPACE

    opt_77 ::= postcondition
           | $empty

    list_78 ::= SPACE
           | list_78 SPACE

    opt_79 ::= postcondition
           | $empty

    list_80 ::= SPACE
           | list_80 SPACE

    opt_81 ::= LPAREN
           | $empty

    opt_82 ::= RPAREN
           | $empty

    seq_83 ::= opt_81 arglist opt_82

    opt_84 ::= seq_83
           | $empty

    list_85 ::= $empty
           | list_85 SPACE

    list_86 ::= $empty
           | list_86 SPACE

    list_87 ::= $empty
           | list_87 SPACE

    seq_88 ::= list_87 COMMA arg

    list_89 ::= $empty
           | list_89 seq_88

    grp_90 ::= BANG
           | STRING

%End
