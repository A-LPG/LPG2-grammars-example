-- AUTO-GENERATED from antlr/grammars-v4 erlang by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack,ebnf
%Options fp=ErlangParser
%options package=lpg.grammars.erlang
%options template=btParserTemplateF.gi
%options import_terminals=ErlangLexer.gi
%options automatic_ast=none
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

    attribute ::= OP_25307 tokAtom attrVal
                 | OP_25307 tokAtom typedAttrVal
                 | OP_25307 tokAtom OP_2848 typedAttrVal OP_71962
                 | AttrName typeSpec

    typeSpec ::= specFun typeSigs
                | OP_2848 specFun typeSigs OP_71962

    specFun ::= tokAtom
               | tokAtom OP_88026 tokAtom

    typedAttrVal ::= expr OP_81532 typedRecordFields
                    | expr OP_48394 topType

    typedRecordFields ::= LIT_18848

    typedExprs ::= typedExpr
                  | typedExpr OP_81532 typedExprs
                  | expr OP_81532 typedExprs
                  | typedExpr OP_81532 exprs

    typedExpr ::= expr OP_48394 topType

    typeSigs ::= typeSig list_4

    typeSig ::= funType opt_6

    typeGuards ::= typeGuard list_8

    typeGuard ::= tokAtom OP_2848 topTypes OP_71962
                 | tokVar OP_48394 topType

    topTypes ::= topType list_10

    topType ::= opt_12 topType100

    topType100 ::= type200 opt_14

    type200 ::= type300 opt_16

    type300 ::= type300 addOp type400
               | type400

    type400 ::= type400 multOp type500
               | type500

    type500 ::= opt_17 type_

    type_ ::= OP_2848 topType OP_71962
             | tokVar
             | tokAtom
             | tokAtom OP_2848 OP_71962
             | tokAtom OP_2848 topTypes OP_71962
             | tokAtom OP_88026 tokAtom OP_2848 OP_71962
             | tokAtom OP_88026 tokAtom OP_2848 topTypes OP_71962
             | OP_21954 OP_2262
             | OP_21954 topType OP_2262
             | OP_21954 topType OP_81532 OP_23331 OP_2262
             | OP_63260 LIT_18848
             | LIT_18848
             | OP_63260 tokAtom LIT_18848
             | binaryType
             | tokInteger
             | tokChar
             | _FUN_ OP_2848 OP_71962
             | _FUN_ OP_2848 funType100 OP_71962

    funType100 ::= OP_2848 OP_23331 OP_71962 OP_65056 topType
                  | funType

    funType ::= OP_2848 opt_18 OP_71962 OP_65056 topType

    mapPairTypes ::= mapPairType list_20

    mapPairType ::= topType grp_21 topType

    fieldTypes ::= fieldType list_23

    fieldType ::= tokAtom OP_48394 topType

    binaryType ::= OP_29819 OP_76267
                  | OP_29819 binBaseType OP_76267
                  | OP_29819 binUnitType OP_76267
                  | OP_29819 binBaseType OP_81532 binUnitType OP_76267

    binBaseType ::= tokVar OP_88026 type_

    binUnitType ::= tokVar OP_88026 tokVar OP_32002 type_

    attrVal ::= expr
               | OP_2848 expr OP_71962
               | expr OP_81532 exprs
               | OP_2848 expr OP_81532 exprs OP_71962

    function_ ::= functionClause list_25

    functionClause ::= tokAtom clauseArgs clauseGuard clauseBody

    clauseArgs ::= patArgumentList

    clauseGuard ::= opt_27

    clauseBody ::= OP_65056 exprs

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
               | OP_2848 expr OP_71962
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
                  | OP_2848 patExpr OP_71962

    mapPatExpr ::= opt_51 OP_63260 mapTuple
                  | mapPatExpr OP_63260 mapTuple

    recordPatExpr ::= OP_63260 tokAtom grp_52

    list_ ::= OP_21954 OP_2262
             | OP_21954 expr tail

    tail ::= OP_2262
            | OP_23639 expr OP_2262
            | OP_81532 expr tail

    binary ::= OP_29819 OP_76267
              | OP_29819 binElements OP_76267

    binElements ::= binElement list_54

    binElement ::= bitExpr optBitSizeExpr optBitTypeList

    bitExpr ::= opt_55 exprMax

    optBitSizeExpr ::= opt_57

    optBitTypeList ::= opt_59

    bitTypeList ::= bitType list_61

    bitType ::= tokAtom opt_63

    bitSizeExpr ::= exprMax

    listComprehension ::= OP_21954 expr OP_96523 lcExprs OP_2262

    binaryComprehension ::= OP_29819 exprMax OP_96523 lcExprs OP_76267

    lcExprs ::= lcExpr list_65

    lcExpr ::= expr
              | expr OP_6035 expr
              | binary OP_43392 expr

    tuple_ ::= LIT_18848

    mapExpr ::= opt_66 OP_63260 mapTuple
               | mapExpr OP_63260 mapTuple

    mapTuple ::= LIT_18848

    mapField ::= mapFieldAssoc
                | mapFieldExact

    mapFieldAssoc ::= mapKey OP_62053 expr

    mapFieldExact ::= mapKey OP_8930 expr

    mapKey ::= expr

    recordExpr ::= opt_67 OP_63260 tokAtom grp_68
                  | recordExpr OP_63260 tokAtom grp_69

    recordTuple ::= LIT_18848

    recordFields ::= recordField list_71

    recordField ::= grp_72 OP_27640 expr

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

    funExpr ::= _FUN_ tokAtom OP_21159 tokInteger
               | _FUN_ atomOrVar OP_88026 atomOrVar OP_21159 integerOrVar
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

    argumentList ::= OP_2848 opt_87 OP_71962

    patArgumentList ::= OP_2848 opt_88 OP_71962

    exprs ::= expr list_90

    patExprs ::= patExpr list_92

    guard_ ::= exprs list_94

    atomic ::= tokChar
              | tokInteger
              | tokFloat
              | tokAtom
              | list_95

    prefixOp ::= OP_22480
                | OP_25307
                | _BNOT_
                | _NOT_

    multOp ::= OP_21159
              | OP_32002
              | _DIV_
              | _REM_
              | _BAND_
              | _AND_

    addOp ::= OP_22480
             | OP_25307
             | _BOR_
             | _BXOR_
             | _BSL_
             | _BSR_
             | _OR_
             | _XOR_

    listOp ::= OP_61737
              | OP_42949

    compOp ::= OP_92008
              | OP_55804
              | OP_90285
              | OP_53922
              | OP_38875
              | OP_36969
              | OP_881
              | OP_23772

    list_1 ::= form+

    grp_2 ::= attribute
             | function_

    seq_3 ::= OP_90847 typeSig

    list_4 ::= (list_4 seq_3)?

    seq_5 ::= _WHEN_ typeGuards

    opt_6 ::= seq_5?

    seq_7 ::= OP_81532 typeGuard

    list_8 ::= (list_8 seq_7)?

    seq_9 ::= OP_81532 topType

    list_10 ::= (list_10 seq_9)?

    seq_11 ::= tokVar OP_48394

    opt_12 ::= seq_11?

    grp_13 ::= OP_23639 topType100

    opt_14 ::= grp_13?

    seq_15 ::= OP_68038 type300

    opt_16 ::= seq_15?

    opt_17 ::= prefixOp?

    opt_18 ::= topTypes?

    seq_19 ::= OP_81532 mapPairType

    list_20 ::= (list_20 seq_19)?

    grp_21 ::= OP_62053
              | OP_8930

    seq_22 ::= OP_81532 fieldType

    list_23 ::= (list_23 seq_22)?

    seq_24 ::= OP_90847 functionClause

    list_25 ::= (list_25 seq_24)?

    seq_26 ::= _WHEN_ guard_

    opt_27 ::= seq_26?

    grp_29 ::= OP_27640
              | OP_89122

    grp_28 ::= grp_29 expr150

    list_30 ::= (list_30 grp_28)?

    seq_31 ::= _ORELSE_ expr160

    list_32 ::= (list_32 seq_31)?

    seq_33 ::= _ANDALSO_ expr200

    list_34 ::= (list_34 seq_33)?

    seq_35 ::= compOp expr300

    opt_36 ::= seq_35?

    seq_37 ::= listOp expr400

    list_38 ::= (list_38 seq_37)?

    seq_39 ::= addOp expr500

    list_40 ::= (list_40 seq_39)?

    seq_41 ::= multOp expr600

    list_42 ::= (list_42 seq_41)?

    seq_43 ::= OP_88026 exprMax

    opt_44 ::= seq_43?

    seq_45 ::= OP_27640 patExpr

    opt_46 ::= seq_45?

    seq_47 ::= compOp patExpr300

    opt_48 ::= seq_47?

    seq_49 ::= listOp patExpr300

    opt_50 ::= seq_49?

    opt_51 ::= patExprMax?

    grp_52 ::= OP_17481 tokAtom
              | recordTuple

    seq_53 ::= OP_81532 binElement

    list_54 ::= (list_54 seq_53)?

    opt_55 ::= prefixOp?

    seq_56 ::= OP_88026 bitSizeExpr

    opt_57 ::= seq_56?

    seq_58 ::= OP_21159 bitTypeList

    opt_59 ::= seq_58?

    seq_60 ::= OP_25307 bitType

    list_61 ::= (list_61 seq_60)?

    seq_62 ::= OP_88026 tokInteger

    opt_63 ::= seq_62?

    seq_64 ::= OP_81532 lcExpr

    list_65 ::= (list_65 seq_64)?

    opt_66 ::= exprMax?

    opt_67 ::= exprMax?

    grp_68 ::= OP_17481 tokAtom
              | recordTuple

    grp_69 ::= OP_17481 tokAtom
              | recordTuple

    seq_70 ::= OP_81532 recordField

    list_71 ::= (list_71 seq_70)?

    grp_72 ::= tokVar
              | tokAtom

    seq_73 ::= OP_90847 ifClause

    list_74 ::= (list_74 seq_73)?

    seq_75 ::= OP_90847 crClause

    list_76 ::= (list_76 seq_75)?

    seq_77 ::= OP_90847 funClause

    list_78 ::= (list_78 seq_77)?

    seq_79 ::= _OF_ crClauses

    opt_80 ::= seq_79?

    seq_81 ::= OP_90847 tryClause

    list_82 ::= (list_82 seq_81)?

    seq_83 ::= atomOrVar OP_88026

    opt_84 ::= seq_83?

    seq_85 ::= OP_88026 tokVar

    opt_86 ::= seq_85?

    opt_87 ::= exprs?

    opt_88 ::= patExprs?

    seq_89 ::= OP_81532 expr

    list_90 ::= (list_90 seq_89)?

    seq_91 ::= OP_81532 patExpr

    list_92 ::= (list_92 seq_91)?

    seq_93 ::= OP_90847 exprs

    list_94 ::= (list_94 seq_93)?

    list_95 ::= tokString+
%End
