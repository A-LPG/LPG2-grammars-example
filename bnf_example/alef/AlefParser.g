-- AUTO-GENERATED from antlr/grammars-v4 alef by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AlefParser
%options package=lpg.grammars.alef
%options template=dtParserTemplateF.gi
%options import_terminals=AlefLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= opt_1

    decllist ::= list_2

    decl ::= tname opt_3 SEMI
           | tname vardecl LPAREN opt_4 RPAREN block
           | tname adtfunc LPAREN opt_5 RPAREN block
           | tname vardecl LPAREN opt_6 RPAREN SEMI
           | typespec SEMI
           | TYPEDEF ztname vardecl opt_7 SEMI
           | TYPEDEF IDENTIFIER SEMI

    zargs ::= LPAREN opt_8 RPAREN

    ztname ::= tname
           | AGGR
           | ADT
           | UNION

    adtfunc ::= typename DOT name
           | indsp_rule typename DOT name

    typespec ::= AGGR opt_9 LBRACE memberlist RBRACE opt_10
           | UNION opt_11 LBRACE memberlist RBRACE opt_12
           | ADT opt_13 opt_14 LBRACE memberlist RBRACE opt_15
           | ENUM opt_16 LBRACE setlist RBRACE

    ztag ::= name
           | typename

    zpolytype ::= LBRACKET polytype RBRACKET

    polytype ::= name
           | name COMMA polytype

    setlist ::= opt_17
           | setlist COMMA setlist

    sname ::= name opt_19

    name ::= IDENTIFIER

    memberlist ::= decl
           | memberlist decl

    vardecllist ::= ivardecl_rule list_21

    ivardecl_rule ::= vardecl opt_22

    zinit ::= EQ zelist

    zelist ::= opt_23
           | LBRACKET expr_ RBRACKET expr_
           | DOT stag expr_
           | LBRACE zelist RBRACE
           | LBRACKET expr_ RBRACKET LBRACE zelist RBRACE
           | zelist COMMA zelist

    vardecl ::= IDENTIFIER opt_24
           | indsp_rule IDENTIFIER opt_25
           | LPAREN indsp_rule IDENTIFIER opt_26 RPAREN LPAREN opt_27 RPAREN
           | indsp_rule LPAREN indsp_rule IDENTIFIER opt_28 RPAREN LPAREN opt_29 RPAREN

    arrayspec ::= list_32

    indsp_rule ::= list_33

    arglist ::= list_34 COMMA arg

    arglistp ::= arg
           | STAR xtname
           | DOT xtname

    arg ::= xtname
           | xtname indsp_rule opt_35
           | xtname LPAREN indsp_rule RPAREN LPAREN opt_36 RPAREN
           | xtname indsp_rule LPAREN indsp_rule RPAREN LPAREN opt_37 RPAREN
           | TUPLE tuplearg
           | xtname vardecl
           | DOT DOT DOT

    tuplearg ::= tname
           | tname LPAREN indsp_rule RPAREN LPAREN opt_38 RPAREN
           | tname vardecl

    autolist ::= list_39

    autodecl ::= xtname opt_40 SEMI
           | TUPLE tname opt_41 SEMI

    block ::= LBRACE opt_42 opt_43 RBRACE
           | BANG LBRACE opt_44 opt_45 RBRACE

    slist ::= list_46

    tbody ::= LBRACE opt_47 RBRACE
           | BANG LBRACE opt_48 RBRACE

    ctlist ::= list_49

    tcase ::= CASE typecast COLON opt_50
           | DEFAULT COLON opt_51

    cbody ::= LBRACE opt_52 RBRACE
           | BANG LBRACE opt_53 RBRACE

    clist ::= list_54

    case_ ::= CASE expr_ COLON opt_55
           | DEFAULT COLON opt_56

    rbody ::= stmnt
           | IDENTIFIER block

    zlab ::= IDENTIFIER

    stmnt ::= nlstmnt
           | IDENTIFIER COLON stmnt

    info_rule ::= COMMA STRING_CONST

    nlstmnt ::= opt_57 SEMI
           | block
           | CHECK expr_ opt_58 SEMI
           | ALLOC elist SEMI
           | UNALLOC elist SEMI
           | RESCUE rbody
           | RAISE opt_59 SEMI
           | GOTO IDENTIFIER SEMI
           | PROC elist SEMI
           | TASK elist SEMI
           | BECOME expr_ SEMI
           | ALT cbody
           | RETURN opt_60 SEMI
           | FOR LPAREN opt_61 SEMI opt_62 SEMI opt_63 RPAREN stmnt
           | WHILE LPAREN expr_ RPAREN stmnt
           | DO stmnt WHILE LPAREN expr_ RPAREN
           | IF LPAREN expr_ RPAREN stmnt
           | IF LPAREN expr_ RPAREN stmnt ELSE stmnt
           | PAR block
           | SWITCH expr_ cbody
           | TYPEOF expr_ tbody
           | CONTINUE opt_64 SEMI
           | BREAK opt_65 SEMI

    zconst ::= CONSTANT

    zexpr ::= expr_

    expr_ ::= castexpr
           | expr_ STAR expr_
           | expr_ SLASH expr_
           | expr_ PERCENT expr_
           | expr_ PLUS expr_
           | expr_ MINUS expr_
           | expr_ RSHIFT expr_
           | expr_ LSHIFT expr_
           | expr_ LT expr_
           | expr_ GT expr_
           | expr_ LTEQ expr_
           | expr_ GTEQ expr_
           | expr_ EQEQ expr_
           | expr_ NOTEQ expr_
           | expr_ AMP expr_
           | expr_ CARET expr_
           | expr_ PIPE expr_
           | expr_ ANDAND expr_
           | expr_ OROR expr_
           | expr_ EQ expr_
           | expr_ COLONEQ expr_
           | expr_ RECEIVE EQ expr_
           | expr_ PLUSEQ expr_
           | expr_ MINUSEQ expr_
           | expr_ STAREQ expr_
           | expr_ SLASHEQ expr_
           | expr_ PERCENTEQ expr_
           | expr_ RSHIFTEQ expr_
           | expr_ LSHIFTEQ expr_
           | expr_ AMPEQ expr_
           | expr_ PIPEEQ expr_
           | expr_ CARETEQ expr_
           | expr_ COLONCOLON expr_

    castexpr ::= monexpr
           | LPAREN typecast RPAREN castexpr
           | LPAREN ALLOC typecast RPAREN castexpr

    typecast ::= xtname
           | xtname indsp_rule
           | xtname LPAREN indsp_rule RPAREN LPAREN opt_66 RPAREN
           | TUPLE tname

    monexpr ::= term_
           | STAR castexpr
           | AMP castexpr
           | PLUS castexpr
           | MINUS castexpr
           | MINUSMINUS castexpr
           | ZEROX castexpr
           | PLUSPLUS castexpr
           | BANG castexpr
           | TILDE castexpr
           | SIZEOF monexpr
           | RECEIVE castexpr
           | QUESTION castexpr

    ztelist ::= telist

    telist ::= tcomp list_68

    tcomp ::= expr_
           | LBRACE opt_69 RBRACE

    term_ ::= LPAREN telist RPAREN
           | SIZEOF LPAREN typecast RPAREN
           | term_ LPAREN opt_70 RPAREN
           | term_ LBRACKET expr_ RBRACKET
           | term_ DOT stag
           | DOT typename DOT stag
           | term_ ARROW stag
           | term_ MINUSMINUS
           | term_ PLUSPLUS
           | term_ QUESTION
           | name
           | DOT DOT DOT
           | ARITHMETIC_CONST
           | NIL
           | CONSTANT
           | enum_member
           | STRING_CONST
           | DOLLAR STRING_CONST

    stag ::= IDENTIFIER
           | typename

    zarlist ::= elist

    elist ::= expr_
           | elist COMMA expr_

    tlist ::= typecast
           | typecast COMMA tlist

    tname ::= opt_71 xtname
           | opt_72 TUPLE LPAREN tlist RPAREN
           | opt_73 LPAREN tlist RPAREN

    variant ::= typecast
           | typecast COMMA variant

    xtname ::= INT
           | UINT
           | SINT
           | USINT
           | BYTE
           | FLOAT
           | VOID
           | typename
           | typename LBRACKET variant RBRACKET
           | CHAN LPAREN variant RPAREN opt_74

    bufdim ::= LBRACKET expr_ RBRACKET

    sclass ::= EXTERN
           | INTERN
           | PRIVATE

    typename ::= IDENTIFIER

    enum_member ::= IDENTIFIER

    opt_1 ::= decllist | $empty

    list_2 ::= decl | list_2 decl

    opt_3 ::= vardecllist | $empty

    opt_4 ::= arglist | $empty

    opt_5 ::= arglist | $empty

    opt_6 ::= arglist | $empty

    opt_7 ::= zargs | $empty

    opt_8 ::= arglist | $empty

    opt_9 ::= ztag | $empty

    opt_10 ::= ztag | $empty

    opt_11 ::= ztag | $empty

    opt_12 ::= ztag | $empty

    opt_13 ::= ztag | $empty

    opt_14 ::= zpolytype | $empty

    opt_15 ::= ztag | $empty

    opt_16 ::= ztag | $empty

    opt_17 ::= sname | $empty

    seq_18 ::= EQ expr_

    opt_19 ::= seq_18 | $empty

    seq_20 ::= COMMA ivardecl_rule

    list_21 ::= $empty | list_21 seq_20

    opt_22 ::= zinit | $empty

    opt_23 ::= zexpr | $empty

    opt_24 ::= arrayspec | $empty

    opt_25 ::= arrayspec | $empty

    opt_26 ::= arrayspec | $empty

    opt_27 ::= arglist | $empty

    opt_28 ::= arrayspec | $empty

    opt_29 ::= arglist | $empty

    opt_30 ::= zexpr | $empty

    seq_31 ::= LBRACKET opt_30 RBRACKET

    list_32 ::= seq_31 | list_32 seq_31

    list_33 ::= STAR | list_33 STAR

    list_34 ::= $empty | list_34 arglistp

    opt_35 ::= arrayspec | $empty

    opt_36 ::= arglist | $empty

    opt_37 ::= arglist | $empty

    opt_38 ::= arglist | $empty

    list_39 ::= autodecl | list_39 autodecl

    opt_40 ::= vardecllist | $empty

    opt_41 ::= vardecllist | $empty

    opt_42 ::= autolist | $empty

    opt_43 ::= slist | $empty

    opt_44 ::= autolist | $empty

    opt_45 ::= slist | $empty

    list_46 ::= stmnt | list_46 stmnt

    opt_47 ::= ctlist | $empty

    opt_48 ::= clist | $empty

    list_49 ::= tcase | list_49 tcase

    opt_50 ::= slist | $empty

    opt_51 ::= slist | $empty

    opt_52 ::= clist | $empty

    opt_53 ::= clist | $empty

    list_54 ::= case_ | list_54 case_

    opt_55 ::= slist | $empty

    opt_56 ::= slist | $empty

    opt_57 ::= zexpr | $empty

    opt_58 ::= info_rule | $empty

    opt_59 ::= zlab | $empty

    opt_60 ::= zexpr | $empty

    opt_61 ::= zexpr | $empty

    opt_62 ::= zexpr | $empty

    opt_63 ::= zexpr | $empty

    opt_64 ::= zconst | $empty

    opt_65 ::= zconst | $empty

    opt_66 ::= arglist | $empty

    seq_67 ::= COMMA tcomp

    list_68 ::= $empty | list_68 seq_67

    opt_69 ::= ztelist | $empty

    opt_70 ::= zarlist | $empty

    opt_71 ::= sclass | $empty

    opt_72 ::= sclass | $empty

    opt_73 ::= sclass | $empty

    opt_74 ::= bufdim | $empty

%End
