-- AUTO-GENERATED from antlr/grammars-v4 iri by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=IriParser
%options package=lpg.grammars.iri
%options template=dtParserTemplateF.gi
%options import_terminals=IriLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    parse
%End

%Rules
    parse ::= iri

    iri ::= scheme COLON ihier_part opt_2 opt_4

    ihier_part ::= SLASHSLASH iauthority ipath_abempty
           | ipath_absolute
           | ipath_rootless
           | ipath_empty

    iri_reference ::= iri
           | irelative_ref

    absolute_iri ::= scheme COLON ihier_part opt_6

    irelative_ref ::= irelative_part opt_8 opt_10

    irelative_part ::= SLASHSLASH iauthority ipath_abempty
           | ipath_absolute
           | ipath_noscheme
           | ipath_empty

    iauthority ::= opt_12 ihost opt_14

    iuserinfo ::= list_16

    ihost ::= ip_literal
           | ip_v4_address
           | ireg_name

    ireg_name ::= list_18

    ipath ::= ipath_abempty
           | ipath_absolute
           | ipath_noscheme
           | ipath_rootless
           | ipath_empty

    ipath_abempty ::= list_20

    ipath_absolute ::= SLASH opt_24

    ipath_noscheme ::= isegment_nz_nc list_26

    ipath_rootless ::= isegment_nz list_28

    ipath_empty ::= $empty

    isegment ::= list_29

    isegment_nz ::= list_30

    isegment_nz_nc ::= list_32

    ipchar ::= iunreserved
           | pct_encoded
           | sub_delims
           | grp_33

    iquery ::= list_36

    ifragment ::= list_39

    iunreserved ::= alpha
           | digit
           | grp_40

    scheme ::= alpha list_43

    port ::= list_44

    ip_literal ::= LBRACKET grp_45 RBRACKET

    ip_v_future ::= V list_46 DOT list_48

    ip_v6_address ::= h16 COLON h16 COLON h16 COLON h16 COLON h16 COLON h16 COLON ls32
           | COLONCOLON h16 COLON h16 COLON h16 COLON h16 COLON h16 COLON ls32
           | opt_49 COLONCOLON h16 COLON h16 COLON h16 COLON h16 COLON ls32
           | opt_53 COLONCOLON h16 COLON h16 COLON h16 COLON ls32
           | opt_59 COLONCOLON h16 COLON h16 COLON ls32
           | opt_67 COLONCOLON h16 COLON ls32
           | opt_77 COLONCOLON ls32
           | opt_89 COLONCOLON h16
           | opt_103 COLONCOLON

    h16 ::= hexdig hexdig hexdig hexdig
           | hexdig hexdig hexdig
           | hexdig hexdig
           | hexdig

    ls32 ::= h16 COLON h16
           | ip_v4_address

    ip_v4_address ::= dec_octet DOT dec_octet DOT dec_octet DOT dec_octet

    dec_octet ::= digit
           | non_zero_digit digit
           | D1 digit digit
           | D2 grp_104 digit
           | D2 D5 grp_105

    pct_encoded ::= PERCENT hexdig hexdig

    unreserved ::= alpha
           | digit
           | grp_106

    reserved ::= gen_delims
           | sub_delims

    gen_delims ::= COLON
           | SLASH
           | QUESTION
           | HASH
           | LBRACKET
           | RBRACKET
           | AT

    sub_delims ::= BANG
           | DOLLAR
           | AMP
           | SQUOTE
           | LPAREN
           | RPAREN
           | STAR
           | PLUS
           | COMMA
           | SEMI
           | EQ

    alpha ::= A
           | B
           | C
           | D
           | E
           | F
           | G
           | H
           | I
           | J
           | K
           | L
           | M
           | N
           | O
           | P
           | Q
           | R
           | S
           | T
           | U
           | V
           | W
           | X
           | Y
           | Z

    hexdig ::= digit
           | grp_107

    digit ::= D0
           | non_zero_digit

    non_zero_digit ::= D1
           | D2
           | D3
           | D4
           | D5
           | D6
           | D7
           | D8
           | D9

    seq_1 ::= QUESTION iquery

    opt_2 ::= seq_1
           | $empty

    seq_3 ::= HASH ifragment

    opt_4 ::= seq_3
           | $empty

    seq_5 ::= QUESTION iquery

    opt_6 ::= seq_5
           | $empty

    seq_7 ::= QUESTION iquery

    opt_8 ::= seq_7
           | $empty

    seq_9 ::= HASH ifragment

    opt_10 ::= seq_9
           | $empty

    seq_11 ::= iuserinfo AT

    opt_12 ::= seq_11
           | $empty

    seq_13 ::= COLON port

    opt_14 ::= seq_13
           | $empty

    grp_15 ::= iunreserved
           | pct_encoded
           | sub_delims
           | COLON

    list_16 ::= $empty
           | list_16 grp_15

    grp_17 ::= iunreserved
           | pct_encoded
           | sub_delims

    list_18 ::= $empty
           | list_18 grp_17

    seq_19 ::= SLASH isegment

    list_20 ::= $empty
           | list_20 seq_19

    seq_21 ::= SLASH isegment

    list_22 ::= $empty
           | list_22 seq_21

    seq_23 ::= isegment_nz list_22

    opt_24 ::= seq_23
           | $empty

    seq_25 ::= SLASH isegment

    list_26 ::= $empty
           | list_26 seq_25

    seq_27 ::= SLASH isegment

    list_28 ::= $empty
           | list_28 seq_27

    list_29 ::= $empty
           | list_29 ipchar

    list_30 ::= ipchar
           | list_30 ipchar

    grp_31 ::= iunreserved
           | pct_encoded
           | sub_delims
           | AT

    list_32 ::= grp_31
           | list_32 grp_31

    grp_33 ::= COLON
           | AT

    grp_35 ::= IPRIVATE
           | SLASH
           | QUESTION

    grp_34 ::= ipchar
           | grp_35

    list_36 ::= $empty
           | list_36 grp_34

    grp_38 ::= SLASH
           | QUESTION

    grp_37 ::= ipchar
           | grp_38

    list_39 ::= $empty
           | list_39 grp_37

    grp_40 ::= MINUS
           | DOT
           | UNDERSCORE
           | TILDE
           | UCSCHAR

    grp_42 ::= PLUS
           | MINUS
           | DOT

    grp_41 ::= alpha
           | digit
           | grp_42

    list_43 ::= $empty
           | list_43 grp_41

    list_44 ::= $empty
           | list_44 digit

    grp_45 ::= ip_v6_address
           | ip_v_future

    list_46 ::= hexdig
           | list_46 hexdig

    grp_47 ::= unreserved
           | sub_delims
           | COLON

    list_48 ::= grp_47
           | list_48 grp_47

    opt_49 ::= h16
           | $empty

    seq_50 ::= h16 COLON

    opt_51 ::= seq_50
           | $empty

    seq_52 ::= opt_51 h16

    opt_53 ::= seq_52
           | $empty

    seq_54 ::= h16 COLON

    opt_55 ::= seq_54
           | $empty

    seq_56 ::= opt_55 h16 COLON

    opt_57 ::= seq_56
           | $empty

    seq_58 ::= opt_57 h16

    opt_59 ::= seq_58
           | $empty

    seq_60 ::= h16 COLON

    opt_61 ::= seq_60
           | $empty

    seq_62 ::= opt_61 h16 COLON

    opt_63 ::= seq_62
           | $empty

    seq_64 ::= opt_63 h16 COLON

    opt_65 ::= seq_64
           | $empty

    seq_66 ::= opt_65 h16

    opt_67 ::= seq_66
           | $empty

    seq_68 ::= h16 COLON

    opt_69 ::= seq_68
           | $empty

    seq_70 ::= opt_69 h16 COLON

    opt_71 ::= seq_70
           | $empty

    seq_72 ::= opt_71 h16 COLON

    opt_73 ::= seq_72
           | $empty

    seq_74 ::= opt_73 h16 COLON

    opt_75 ::= seq_74
           | $empty

    seq_76 ::= opt_75 h16

    opt_77 ::= seq_76
           | $empty

    seq_78 ::= h16 COLON

    opt_79 ::= seq_78
           | $empty

    seq_80 ::= opt_79 h16 COLON

    opt_81 ::= seq_80
           | $empty

    seq_82 ::= opt_81 h16 COLON

    opt_83 ::= seq_82
           | $empty

    seq_84 ::= opt_83 h16 COLON

    opt_85 ::= seq_84
           | $empty

    seq_86 ::= opt_85 h16 COLON

    opt_87 ::= seq_86
           | $empty

    seq_88 ::= opt_87 h16

    opt_89 ::= seq_88
           | $empty

    seq_90 ::= h16 COLON

    opt_91 ::= seq_90
           | $empty

    seq_92 ::= opt_91 h16 COLON

    opt_93 ::= seq_92
           | $empty

    seq_94 ::= opt_93 h16 COLON

    opt_95 ::= seq_94
           | $empty

    seq_96 ::= opt_95 h16 COLON

    opt_97 ::= seq_96
           | $empty

    seq_98 ::= opt_97 h16 COLON

    opt_99 ::= seq_98
           | $empty

    seq_100 ::= opt_99 h16 COLON

    opt_101 ::= seq_100
           | $empty

    seq_102 ::= opt_101 h16

    opt_103 ::= seq_102
           | $empty

    grp_104 ::= D0
           | D1
           | D2
           | D3
           | D4

    grp_105 ::= D0
           | D1
           | D2
           | D3
           | D4
           | D5

    grp_106 ::= MINUS
           | DOT
           | UNDERSCORE
           | TILDE

    grp_107 ::= A
           | B
           | C
           | D
           | E
           | F

%End
