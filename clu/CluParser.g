-- AUTO-GENERATED from antlr/grammars-v4 clu by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=CluParser
%options package=lpg.grammars.clu
%options template=dtParserTemplateF.gi
%options import_terminals=CluLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    module
%End

%Rules
    module ::= list_1 grp_2

    procedure ::= idn EQ PROC opt_3 args opt_4 opt_5 opt_6 routine_body END idn

    iterator ::= idn EQ ITER opt_7 args opt_8 opt_9 opt_10 routine_body END idn

    cluster ::= idn EQ CLUSTER opt_11 IS idn_list opt_12 cluster_body END idn

    parms ::= param list_14

    param ::= idn_list COLON grp_15

    args ::= LPAREN opt_16 RPAREN

    decl_list ::= decl list_18

    decl ::= idn_list COLON type_spec

    returnz ::= RETURNS LPAREN type_spec_list RPAREN

    yields ::= YIELDS LPAREN type_spec_list RPAREN

    signals ::= SIGNALS LPAREN exception_ list_20 RPAREN

    exception_ ::= name opt_21

    type_spec_list ::= type_spec list_23

    where_ ::= WHERE restriction list_25

    restriction ::= idn grp_26

    type_set ::= list_29
           | idn

    oper_decl_list ::= oper_decl list_31

    oper_decl ::= op_name_list COLON type_spec

    op_name_list ::= op_name list_33

    op_name ::= name LBRACKET opt_34 RBRACKET

    constant_list ::= constant list_36

    constant ::= expression
           | type_spec

    routine_body ::= list_37 list_38 list_39

    cluster_body ::= list_40 REP EQ type_spec list_41 list_42 ROUTINE list_43

    routine ::= procedure
           | iterator

    equate ::= idn EQ grp_44

    own_var ::= OWN grp_45

    type_spec ::= NULL_LITERAL
           | BOOL
           | INT
           | REAL
           | CHAR
           | STRING
           | ANY
           | REP
           | CVT
           | ARRAY
           | SEQUENCE opt_46
           | grp_47 opt_48
           | grp_49 opt_50 opt_51 opt_52
           | idn opt_53

    field_spec_list ::= field_spec list_55

    field_spec ::= name_list COLON type_spec

    statement ::= decl
           | idn COLON type_spec COLONEQ expression
           | decl_list COLONEQ invocation
           | idn_list COLONEQ grp_56
           | primary DOT name COLONEQ expression
           | invocation
           | WHILE expression DO body END
           | FOR opt_58 IN invocation DO body END
           | IF expression THEN body list_60 opt_62 END
           | TAGCASE expression list_63 opt_65 END
           | grp_66 opt_67
           | SIGNAL name opt_68
           | EXIT name opt_69
           | BREAK
           | BEGIN body END
           | statement grp_70

    tag_arm ::= TAG name_list opt_74 COLON body

    when_handler ::= WHEN name_list grp_75 COLON body

    others_handler ::= OTHERS opt_78 COLON body

    body ::= list_79 list_80

    expression_list ::= expression list_82

    expression ::= primary
           | LPAREN expression RPAREN
           | grp_83 expression
           | expression STARSTAR expression
           | expression grp_84 expression
           | expression grp_85 expression
           | expression grp_86 expression
           | expression grp_87 expression
           | expression grp_88 expression

    primary ::= NIL
           | TRUE
           | FALSE
           | int_literal
           | real_literal
           | string_literal
           | idn opt_89
           | primary grp_90
           | type_spec DOLLAR grp_92
           | FORCE opt_96
           | grp_97 LPAREN expression RPAREN

    invocation ::= primary LPAREN expression_list RPAREN

    field_list ::= field list_99

    field ::= name_list COLON expression

    idn_list ::= idn list_101

    idn ::= IDENTIFIER

    name_list ::= name list_103

    name ::= IDENTIFIER

    int_literal ::= INT

    real_literal ::= FLOAT

    string_literal ::= STRINGLITERAL

    list_1 ::= $empty | list_1 equate

    grp_2 ::= procedure | iterator | cluster

    opt_3 ::= parms | $empty

    opt_4 ::= returnz | $empty

    opt_5 ::= signals | $empty

    opt_6 ::= where_ | $empty

    opt_7 ::= parms | $empty

    opt_8 ::= yields | $empty

    opt_9 ::= signals | $empty

    opt_10 ::= where_ | $empty

    opt_11 ::= parms | $empty

    opt_12 ::= where_ | $empty

    seq_13 ::= COMMA param

    list_14 ::= $empty | list_14 seq_13

    grp_15 ::= TYPE | type_spec

    opt_16 ::= decl_list | $empty

    seq_17 ::= COMMA decl

    list_18 ::= $empty | list_18 seq_17

    seq_19 ::= COMMA exception_

    list_20 ::= $empty | list_20 seq_19

    opt_21 ::= type_spec_list | $empty

    seq_22 ::= COMMA type_spec

    list_23 ::= $empty | list_23 seq_22

    seq_24 ::= COMMA restriction

    list_25 ::= $empty | list_25 seq_24

    grp_26 ::= HAS oper_decl_list | IN type_set

    list_28 ::= $empty | list_28 equate

    grp_27 ::= idn | idn HAS oper_decl_list list_28

    list_29 ::= $empty | list_29 grp_27

    seq_30 ::= COMMA oper_decl

    list_31 ::= $empty | list_31 seq_30

    seq_32 ::= COMMA op_name

    list_33 ::= $empty | list_33 seq_32

    opt_34 ::= constant_list | $empty

    seq_35 ::= COMMA constant

    list_36 ::= $empty | list_36 seq_35

    list_37 ::= $empty | list_37 equate

    list_38 ::= $empty | list_38 own_var

    list_39 ::= $empty | list_39 statement

    list_40 ::= $empty | list_40 equate

    list_41 ::= $empty | list_41 equate

    list_42 ::= $empty | list_42 own_var

    list_43 ::= $empty | list_43 routine

    grp_44 ::= constant | type_set

    grp_45 ::= decl | idn COLON type_spec COLONEQ expression | decl_list COLONEQ invocation

    opt_46 ::= type_spec | $empty

    grp_47 ::= RECORD | STRUCT | ONEOF | VARIANT

    opt_48 ::= field_spec_list | $empty

    grp_49 ::= PROCTYPE | ITERTYPE

    opt_50 ::= field_spec_list | $empty

    opt_51 ::= returnz | $empty

    opt_52 ::= signals | $empty

    opt_53 ::= constant_list | $empty

    seq_54 ::= COMMA field_spec

    list_55 ::= $empty | list_55 seq_54

    grp_56 ::= invocation | expression_list

    grp_57 ::= decl_list | idn_list

    opt_58 ::= grp_57 | $empty

    seq_59 ::= ELSEIF expression THEN body

    list_60 ::= $empty | list_60 seq_59

    seq_61 ::= ELSE body

    opt_62 ::= seq_61 | $empty

    list_63 ::= $empty | list_63 tag_arm

    seq_64 ::= OTHERS COLON body

    opt_65 ::= seq_64 | $empty

    grp_66 ::= RETURN | YIELD

    opt_67 ::= expression_list | $empty

    opt_68 ::= expression_list | $empty

    opt_69 ::= expression_list | $empty

    list_71 ::= $empty | list_71 when_handler

    opt_72 ::= others_handler | $empty

    grp_70 ::= RESIGNAL name_list | EXCEPT list_71 opt_72 END

    seq_73 ::= LPAREN idn COLON type_spec RPAREN

    opt_74 ::= seq_73 | $empty

    opt_76 ::= decl_list | $empty

    grp_75 ::= LPAREN STAR RPAREN | opt_76

    seq_77 ::= LPAREN idn COLON type_spec RPAREN

    opt_78 ::= seq_77 | $empty

    list_79 ::= $empty | list_79 equate

    list_80 ::= $empty | list_80 statement

    seq_81 ::= COMMA expression

    list_82 ::= $empty | list_82 seq_81

    grp_83 ::= TILDE | MINUS

    grp_84 ::= SLASHSLASH | SLASH | STAR

    grp_85 ::= OROR | PLUS | MINUS

    grp_86 ::= LT | LTEQ | EQ | GTEQ | GT | OP_75867 | OP_60876 | OP_88600 | OP_11840 | OP_61909

    grp_87 ::= AMP | CAND

    grp_88 ::= PIPE | COR

    opt_89 ::= constant_list | $empty

    opt_91 ::= expression_list | $empty

    grp_90 ::= DOT name | expression | LPAREN opt_91 RPAREN

    seq_93 ::= expression COLON

    opt_94 ::= seq_93 | $empty

    opt_95 ::= constant_list | $empty

    grp_92 ::= field_list | LBRACKET opt_94 expression_list RBRACKET | name opt_95

    opt_96 ::= type_spec | $empty

    grp_97 ::= UP | DOWN

    seq_98 ::= COMMA field

    list_99 ::= $empty | list_99 seq_98

    seq_100 ::= COMMA idn

    list_101 ::= $empty | list_101 seq_100

    seq_102 ::= COMMA name

    list_103 ::= $empty | list_103 seq_102

%End
