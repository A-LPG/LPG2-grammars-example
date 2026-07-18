-- AUTO-GENERATED from antlr/grammars-v4 erlang by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=ErlangParser
%options package=lpg.grammars.erlang
%options template=dtParserTemplateF.gi
%options import_terminals=ErlangLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    forms
%End

%Rules
    forms ::= list_1

    form ::= grp_2 DOT

    tokAtom ::= TokAtom

    attribute ::= OP_14388 tokAtom attrVal
           | OP_14388 tokAtom typedAttrVal
           | OP_14388 tokAtom OP_78631 typedAttrVal OP_15196
           | AttrName typeSpec

    typeSpec ::= specFun typeSigs
           | OP_78631 specFun typeSigs OP_15196

    specFun ::= tokAtom
           | tokAtom OP_92052 tokAtom

    typedAttrVal ::= expr OP_37507 typedRecordFields
           | expr OP_94364 topType

    typedRecordFields ::= LIT_74881

    typedExprs ::= typedExpr
           | typedExpr OP_37507 typedExprs
           | expr OP_37507 typedExprs
           | typedExpr OP_37507 exprs

    typedExpr ::= expr OP_94364 topType

    typeSigs ::= typeSig list_4

    typeSig ::= funType opt_6

    typeGuards ::= typeGuard list_8

    typeGuard ::= tokAtom OP_78631 topTypes OP_15196
           | tokVar OP_94364 topType

    topTypes ::= topType list_10

    topType ::= opt_12 topType100

    topType100 ::= type200 opt_14

    type200 ::= type300 opt_16

    type300 ::= type300 addOp type400
           | type400

    type400 ::= type400 multOp type500
           | type500

    type500 ::= opt_17 type_

    type_ ::= OP_78631 topType OP_15196
           | tokVar
           | tokAtom
           | tokAtom OP_78631 OP_15196
           | tokAtom OP_78631 topTypes OP_15196
           | tokAtom OP_92052 tokAtom OP_78631 OP_15196
           | tokAtom OP_92052 tokAtom OP_78631 topTypes OP_15196
           | OP_57400 OP_16823
           | OP_57400 topType OP_16823
           | OP_57400 topType OP_37507 OP_88238 OP_16823
           | OP_67076 LIT_74881
           | LIT_74881
           | OP_67076 tokAtom LIT_74881
           | binaryType
           | tokInteger
           | tokChar
           | _FUN_ OP_78631 OP_15196
           | _FUN_ OP_78631 funType100 OP_15196

    funType100 ::= OP_78631 OP_88238 OP_15196 OP_2927 topType
           | funType

    funType ::= OP_78631 opt_18 OP_15196 OP_2927 topType

    mapPairTypes ::= mapPairType list_20

    mapPairType ::= topType grp_21 topType

    fieldTypes ::= fieldType list_23

    fieldType ::= tokAtom OP_94364 topType

    binaryType ::= OP_5120 OP_99546
           | OP_5120 binBaseType OP_99546
           | OP_5120 binUnitType OP_99546
           | OP_5120 binBaseType OP_37507 binUnitType OP_99546

    binBaseType ::= tokVar OP_92052 type_

    binUnitType ::= tokVar OP_92052 tokVar OP_74204 type_

    attrVal ::= expr
           | OP_78631 expr OP_15196
           | expr OP_37507 exprs
           | OP_78631 expr OP_37507 exprs OP_15196

    function_ ::= functionClause list_25

    functionClause ::= tokAtom clauseArgs clauseGuard clauseBody

    clauseArgs ::= patArgumentList

    clauseGuard ::= opt_27

    clauseBody ::= OP_2927 exprs

    expr ::= _CATCH_ expr
           | expr100

    expr100 ::= expr150 list_30

    expr150 ::= expr160 list_32

    expr160 ::= expr200 list_34

    expr200 ::= expr300 opt_36

    expr300 ::= expr400 list_38

    expr400 ::= expr500 list_40

    expr500 ::= expr600 list_42

    expr600 ::= prefixOp expr600
           | expr650

    expr650 ::= mapExpr
           | expr700

    expr700 ::= functionCall
           | recordExpr
           | expr800

    expr800 ::= exprMax opt_44

    exprMax ::= tokVar
           | atomic
           | list_
           | binary
           | listComprehension
           | binaryComprehension
           | tuple_
           | OP_78631 expr OP_15196
           | _BEGIN_ exprs _END_
           | ifExpr
           | caseExpr
           | receiveExpr
           | funExpr
           | tryExpr

    patExpr ::= patExpr200 opt_46

    patExpr200 ::= patExpr300 opt_48

    patExpr300 ::= patExpr400 opt_50

    patExpr400 ::= patExpr400 addOp patExpr500
           | patExpr500

    patExpr500 ::= patExpr500 multOp patExpr600
           | patExpr600

    patExpr600 ::= prefixOp patExpr600
           | patExpr650

    patExpr650 ::= mapPatExpr
           | patExpr700

    patExpr700 ::= recordPatExpr
           | patExpr800

    patExpr800 ::= patExprMax

    patExprMax ::= tokVar
           | atomic
           | list_
           | binary
           | tuple_
           | OP_78631 patExpr OP_15196

    mapPatExpr ::= opt_51 OP_67076 mapTuple
           | mapPatExpr OP_67076 mapTuple

    recordPatExpr ::= OP_67076 tokAtom grp_52

    list_ ::= OP_57400 OP_16823
           | OP_57400 expr tail

    tail ::= OP_16823
           | OP_92203 expr OP_16823
           | OP_37507 expr tail

    binary ::= OP_5120 OP_99546
           | OP_5120 binElements OP_99546

    binElements ::= binElement list_54

    binElement ::= bitExpr optBitSizeExpr optBitTypeList

    bitExpr ::= opt_55 exprMax

    optBitSizeExpr ::= opt_57

    optBitTypeList ::= opt_59

    bitTypeList ::= bitType list_61

    bitType ::= tokAtom opt_63

    bitSizeExpr ::= exprMax

    listComprehension ::= OP_57400 expr OP_68351 lcExprs OP_16823

    binaryComprehension ::= OP_5120 exprMax OP_68351 lcExprs OP_99546

    lcExprs ::= lcExpr list_65

    lcExpr ::= expr
           | expr OP_33411 expr
           | binary OP_96964 expr

    tuple_ ::= LIT_74881

    mapExpr ::= opt_66 OP_67076 mapTuple
           | mapExpr OP_67076 mapTuple

    mapTuple ::= LIT_74881

    mapField ::= mapFieldAssoc
           | mapFieldExact

    mapFieldAssoc ::= mapKey OP_41591 expr

    mapFieldExact ::= mapKey OP_15531 expr

    mapKey ::= expr

    recordExpr ::= opt_67 OP_67076 tokAtom grp_68
           | recordExpr OP_67076 tokAtom grp_69

    recordTuple ::= LIT_74881

    recordFields ::= recordField list_71

    recordField ::= grp_72 OP_66055 expr

    functionCall ::= expr800 argumentList

    ifExpr ::= _IF_ ifClauses _END_

    ifClauses ::= ifClause list_74

    ifClause ::= guard_ clauseBody

    caseExpr ::= _CASE_ expr _OF_ crClauses _END_

    crClauses ::= crClause list_76

    crClause ::= expr clauseGuard clauseBody

    receiveExpr ::= _RECEIVE_ crClauses _END_
           | _RECEIVE_ _AFTER_ expr clauseBody _END_
           | _RECEIVE_ crClauses _AFTER_ expr clauseBody _END_

    funExpr ::= _FUN_ tokAtom OP_72720 tokInteger
           | _FUN_ atomOrVar OP_92052 atomOrVar OP_72720 integerOrVar
           | _FUN_ funClauses _END_

    atomOrVar ::= tokAtom
           | tokVar

    integerOrVar ::= tokInteger
           | tokVar

    funClauses ::= funClause list_78

    funClause ::= patArgumentList clauseGuard clauseBody
           | tokVar patArgumentList clauseGuard clauseBody

    tryExpr ::= _TRY_ exprs opt_80 tryCatch

    tryCatch ::= _CATCH_ tryClauses _END_
           | _CATCH_ tryClauses _AFTER_ exprs _END_
           | _AFTER_ exprs _END_

    tryClauses ::= tryClause list_82

    tryClause ::= expr clauseGuard clauseBody
           | opt_84 patExpr tryOptStackTrace clauseGuard clauseBody

    tryOptStackTrace ::= opt_86

    argumentList ::= OP_78631 opt_87 OP_15196

    patArgumentList ::= OP_78631 opt_88 OP_15196

    exprs ::= expr list_90

    patExprs ::= patExpr list_92

    guard_ ::= exprs list_94

    atomic ::= tokChar
           | tokInteger
           | tokFloat
           | tokAtom
           | list_95

    prefixOp ::= OP_35286
           | OP_14388
           | _BNOT_
           | _NOT_

    multOp ::= OP_72720
           | OP_74204
           | _DIV_
           | _REM_
           | _BAND_
           | _AND_

    addOp ::= OP_35286
           | OP_14388
           | _BOR_
           | _BXOR_
           | _BSL_
           | _BSR_
           | _OR_
           | _XOR_

    listOp ::= OP_14786
           | OP_51465

    compOp ::= OP_70453
           | OP_59605
           | OP_73821
           | OP_15180
           | OP_91363
           | OP_77485
           | OP_82187
           | OP_33421

    list_1 ::= form | list_1 form

    grp_2 ::= attribute | function_

    seq_3 ::= OP_95077 typeSig

    list_4 ::= $empty | list_4 seq_3

    seq_5 ::= _WHEN_ typeGuards

    opt_6 ::= seq_5 | $empty

    seq_7 ::= OP_37507 typeGuard

    list_8 ::= $empty | list_8 seq_7

    seq_9 ::= OP_37507 topType

    list_10 ::= $empty | list_10 seq_9

    seq_11 ::= tokVar OP_94364

    opt_12 ::= seq_11 | $empty

    grp_13 ::= OP_92203 topType100

    opt_14 ::= grp_13 | $empty

    seq_15 ::= OP_7024 type300

    opt_16 ::= seq_15 | $empty

    opt_17 ::= prefixOp | $empty

    opt_18 ::= topTypes | $empty

    seq_19 ::= OP_37507 mapPairType

    list_20 ::= $empty | list_20 seq_19

    grp_21 ::= OP_41591 | OP_15531

    seq_22 ::= OP_37507 fieldType

    list_23 ::= $empty | list_23 seq_22

    seq_24 ::= OP_95077 functionClause

    list_25 ::= $empty | list_25 seq_24

    seq_26 ::= _WHEN_ guard_

    opt_27 ::= seq_26 | $empty

    grp_29 ::= OP_66055 | OP_59432

    grp_28 ::= grp_29 expr150

    list_30 ::= $empty | list_30 grp_28

    seq_31 ::= _ORELSE_ expr160

    list_32 ::= $empty | list_32 seq_31

    seq_33 ::= _ANDALSO_ expr200

    list_34 ::= $empty | list_34 seq_33

    seq_35 ::= compOp expr300

    opt_36 ::= seq_35 | $empty

    seq_37 ::= listOp expr400

    list_38 ::= $empty | list_38 seq_37

    seq_39 ::= addOp expr500

    list_40 ::= $empty | list_40 seq_39

    seq_41 ::= multOp expr600

    list_42 ::= $empty | list_42 seq_41

    seq_43 ::= OP_92052 exprMax

    opt_44 ::= seq_43 | $empty

    seq_45 ::= OP_66055 patExpr

    opt_46 ::= seq_45 | $empty

    seq_47 ::= compOp patExpr300

    opt_48 ::= seq_47 | $empty

    seq_49 ::= listOp patExpr300

    opt_50 ::= seq_49 | $empty

    opt_51 ::= patExprMax | $empty

    grp_52 ::= OP_22102 tokAtom | recordTuple

    seq_53 ::= OP_37507 binElement

    list_54 ::= $empty | list_54 seq_53

    opt_55 ::= prefixOp | $empty

    seq_56 ::= OP_92052 bitSizeExpr

    opt_57 ::= seq_56 | $empty

    seq_58 ::= OP_72720 bitTypeList

    opt_59 ::= seq_58 | $empty

    seq_60 ::= OP_14388 bitType

    list_61 ::= $empty | list_61 seq_60

    seq_62 ::= OP_92052 tokInteger

    opt_63 ::= seq_62 | $empty

    seq_64 ::= OP_37507 lcExpr

    list_65 ::= $empty | list_65 seq_64

    opt_66 ::= exprMax | $empty

    opt_67 ::= exprMax | $empty

    grp_68 ::= OP_22102 tokAtom | recordTuple

    grp_69 ::= OP_22102 tokAtom | recordTuple

    seq_70 ::= OP_37507 recordField

    list_71 ::= $empty | list_71 seq_70

    grp_72 ::= tokVar | tokAtom

    seq_73 ::= OP_95077 ifClause

    list_74 ::= $empty | list_74 seq_73

    seq_75 ::= OP_95077 crClause

    list_76 ::= $empty | list_76 seq_75

    seq_77 ::= OP_95077 funClause

    list_78 ::= $empty | list_78 seq_77

    seq_79 ::= _OF_ crClauses

    opt_80 ::= seq_79 | $empty

    seq_81 ::= OP_95077 tryClause

    list_82 ::= $empty | list_82 seq_81

    seq_83 ::= atomOrVar OP_92052

    opt_84 ::= seq_83 | $empty

    seq_85 ::= OP_92052 tokVar

    opt_86 ::= seq_85 | $empty

    opt_87 ::= exprs | $empty

    opt_88 ::= patExprs | $empty

    seq_89 ::= OP_37507 expr

    list_90 ::= $empty | list_90 seq_89

    seq_91 ::= OP_37507 patExpr

    list_92 ::= $empty | list_92 seq_91

    seq_93 ::= OP_95077 exprs

    list_94 ::= $empty | list_94 seq_93

    list_95 ::= tokString | list_95 tokString

%End
