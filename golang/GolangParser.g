-- AUTO-GENERATED from antlr/grammars-v4 golang by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=GolangParser
%options package=lpg.grammars.golang
%options template=dtParserTemplateF.gi
%options import_terminals=GolangLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    sourceFile
%End

%Rules
    sourceFile ::= packageClause eos list_2 list_5

    packageClause ::= PACKAGE packageName

    packageName ::= identifier

    identifier ::= IDENTIFIER

    importDecl ::= IMPORT grp_6

    importSpec ::= opt_10 importPath

    importPath ::= string_

    declaration ::= constDecl
           | typeDecl
           | varDecl

    constDecl ::= CONST grp_11

    constSpec ::= identifierList opt_16

    identifierList ::= IDENTIFIER list_18

    expressionList ::= expression list_20

    typeDecl ::= TYPE grp_21

    typeSpec ::= aliasDecl
           | typeDef

    aliasDecl ::= IDENTIFIER opt_24 EQ type_

    typeDef ::= IDENTIFIER opt_25 type_

    typeParameters ::= LBRACKET typeParameterDecl list_27 opt_28 RBRACKET

    typeParameterDecl ::= identifierList typeElement

    typeElement ::= typeTerm list_30

    typeTerm ::= opt_31 type_

    functionDecl ::= FUNC IDENTIFIER opt_32 signature opt_33

    methodDecl ::= FUNC receiver IDENTIFIER signature opt_34

    receiver ::= parameters

    varDecl ::= VAR grp_35

    varSpec ::= identifierList grp_38

    block ::= LBRACE statementList RBRACE

    statementList ::= list_43

    statement ::= declaration
           | labeledStmt
           | simpleStmt
           | goStmt
           | returnStmt
           | breakStmt
           | continueStmt
           | gotoStmt
           | fallthroughStmt
           | block
           | ifStmt
           | switchStmt
           | selectStmt
           | forStmt
           | deferStmt

    simpleStmt ::= sendStmt
           | incDecStmt
           | assignment
           | expressionStmt
           | shortVarDecl

    expressionStmt ::= expression

    sendStmt ::= expression RECEIVE expression

    incDecStmt ::= expression grp_44

    assignment ::= expressionList assign_op expressionList

    assign_op ::= opt_46 EQ

    shortVarDecl ::= identifierList COLONEQ expressionList

    labeledStmt ::= IDENTIFIER COLON opt_47

    returnStmt ::= RETURN opt_48

    breakStmt ::= BREAK opt_49

    continueStmt ::= CONTINUE opt_50

    gotoStmt ::= GOTO IDENTIFIER

    fallthroughStmt ::= FALLTHROUGH

    deferStmt ::= DEFER expression

    ifStmt ::= IF grp_51 block opt_56

    switchStmt ::= exprSwitchStmt
           | typeSwitchStmt

    exprSwitchStmt ::= SWITCH grp_57 LBRACE list_61 RBRACE

    exprCaseClause ::= exprSwitchCase COLON statementList

    exprSwitchCase ::= CASE expressionList
           | DEFAULT

    typeSwitchStmt ::= SWITCH grp_62 LBRACE list_63 RBRACE

    typeSwitchGuard ::= opt_65 primaryExpr DOT LPAREN TYPE RPAREN

    typeCaseClause ::= typeSwitchCase COLON statementList

    typeSwitchCase ::= CASE typeList
           | DEFAULT

    typeList ::= grp_66 list_69

    selectStmt ::= SELECT LBRACE list_70 RBRACE

    commClause ::= commCase COLON statementList

    commCase ::= CASE grp_71
           | DEFAULT

    recvStmt ::= opt_73 expression

    forStmt ::= FOR opt_75 block

    condition ::= expression

    forClause ::= opt_76 eos opt_77 eos opt_78

    rangeClause ::= opt_80 RANGE expression

    goStmt ::= GO expression

    type_ ::= typeName opt_81
           | typeLit
           | LPAREN type_ RPAREN

    typeArgs ::= LBRACKET typeList opt_82 RBRACKET

    typeName ::= qualifiedIdent
           | IDENTIFIER

    typeLit ::= arrayType
           | structType
           | pointerType
           | functionType
           | interfaceType
           | sliceType
           | mapType
           | channelType

    arrayType ::= LBRACKET arrayLength RBRACKET elementType

    arrayLength ::= expression

    elementType ::= type_

    pointerType ::= STAR type_

    interfaceType ::= INTERFACE LBRACE list_85 RBRACE

    sliceType ::= LBRACKET RBRACKET elementType

    mapType ::= MAP LBRACKET type_ RBRACKET elementType

    channelType ::= grp_86 elementType

    methodSpec ::= IDENTIFIER parameters result
           | IDENTIFIER parameters

    functionType ::= FUNC signature

    signature ::= parameters opt_87

    result ::= parameters
           | type_

    parameters ::= LPAREN opt_92 RPAREN

    parameterDecl ::= opt_93 opt_94 type_

    expression ::= goOr

    goOr ::= goAnd
           | goOr OROR goAnd

    goAnd ::= goRel
           | goAnd ANDAND goRel

    goRel ::= goAdd
           | goRel EQEQ goAdd
           | goRel NOTEQ goAdd
           | goRel LT goAdd
           | goRel LTEQ goAdd
           | goRel GT goAdd
           | goRel GTEQ goAdd

    goAdd ::= goMul
           | goAdd PLUS goMul
           | goAdd MINUS goMul
           | goAdd PIPE goMul
           | goAdd CARET goMul

    goMul ::= goUnary
           | goMul STAR goUnary
           | goMul SLASH goUnary
           | goMul PERCENT goUnary
           | goMul LSHIFT goUnary
           | goMul RSHIFT goUnary
           | goMul AMP goUnary
           | goMul BITCLEAR goUnary

    goUnary ::= PLUS goUnary
           | MINUS goUnary
           | BANG goUnary
           | CARET goUnary
           | STAR goUnary
           | AMP goUnary
           | RECEIVE goUnary
           | primaryExpr


    primaryExpr ::= grp_99 list_101

    -- Conversions share call syntax (name(expr)); keep one form via arguments.
    -- conversion ::= type_ LPAREN expression opt_102 RPAREN

    operand ::= literal
           | operandName opt_103
           | LPAREN expression RPAREN

    literal ::= basicLit
           | compositeLit
           | functionLit

    basicLit ::= NIL_LIT
           | integer
           | string_
           | NUMBER

    integer ::= NUMBER
           | CHAR_LITERAL

    operandName ::= IDENTIFIER
           | qualifiedIdent

    qualifiedIdent ::= IDENTIFIER DOT IDENTIFIER

    compositeLit ::= literalType literalValue

    -- Omit bare typeName{...} composites: LALR otherwise reduces IDENTIFIER to
    -- literalType before ')' / '{' (breaks calls and if-conds). Subset still
    -- allows struct/slice/map/array composites.
    literalType ::= structType
           | arrayType
           | LBRACKET ELLIPSIS RBRACKET elementType
           | sliceType
           | mapType

    literalValue ::= LBRACE opt_107 RBRACE

    elementList ::= keyedElement list_109

    keyedElement ::= opt_111 element

    key ::= expression
           | literalValue

    element ::= expression
           | literalValue

    structType ::= STRUCT LBRACE list_113 RBRACE

    fieldDecl ::= grp_114 opt_115

    string_ ::= STRING

    embeddedField ::= opt_116 typeName opt_117

    functionLit ::= FUNC signature block

    index ::= LBRACKET expression RBRACKET

    slice_ ::= LBRACKET grp_118 RBRACKET

    typeAssertion ::= DOT LPAREN type_ RPAREN

    -- Subset: expression args only (no type_ args / trailing ELLIPSIS).
    arguments ::= LPAREN opt_args RPAREN

    opt_args ::= expressionList
           | $empty

    methodExpr ::= type_ DOT IDENTIFIER

    eos ::= SEMI
           | $empty

    seq_1 ::= importDecl eos

    list_2 ::= $empty | list_2 seq_1

    grp_4 ::= functionDecl | methodDecl | declaration

    grp_3 ::= grp_4 eos

    list_5 ::= $empty | list_5 grp_3

    seq_7 ::= importSpec eos

    list_8 ::= $empty | list_8 seq_7

    grp_6 ::= importSpec | LPAREN list_8 RPAREN

    grp_9 ::= DOT | packageName

    opt_10 ::= grp_9 | $empty

    seq_12 ::= constSpec eos

    list_13 ::= $empty | list_13 seq_12

    grp_11 ::= constSpec | LPAREN list_13 RPAREN

    opt_14 ::= type_ | $empty

    seq_15 ::= opt_14 EQ expressionList

    opt_16 ::= seq_15 | $empty

    seq_17 ::= COMMA IDENTIFIER

    list_18 ::= $empty | list_18 seq_17

    seq_19 ::= COMMA expression

    list_20 ::= $empty | list_20 seq_19

    seq_22 ::= typeSpec eos

    list_23 ::= $empty | list_23 seq_22

    grp_21 ::= typeSpec | LPAREN list_23 RPAREN

    opt_24 ::= typeParameters | $empty

    opt_25 ::= typeParameters | $empty

    seq_26 ::= COMMA typeParameterDecl

    list_27 ::= $empty | list_27 seq_26

    opt_28 ::= COMMA | $empty

    seq_29 ::= PIPE typeTerm

    list_30 ::= $empty | list_30 seq_29

    opt_31 ::= TILDE | $empty

    opt_32 ::= typeParameters | $empty

    opt_33 ::= block | $empty

    opt_34 ::= block | $empty

    seq_36 ::= varSpec eos

    list_37 ::= $empty | list_37 seq_36

    grp_35 ::= varSpec | LPAREN list_37 RPAREN

    seq_39 ::= EQ expressionList

    opt_40 ::= seq_39 | $empty

    grp_38 ::= type_ opt_40 | EQ expressionList

    grp_42 ::= SEMI | $empty

    grp_41 ::= grp_42 statement eos

    list_43 ::= $empty | list_43 grp_41

    grp_44 ::= PLUSPLUS | MINUSMINUS

    grp_45 ::= PLUS | MINUS | PIPE | CARET | STAR | SLASH | PERCENT | LSHIFT | RSHIFT | AMP | BITCLEAR

    opt_46 ::= grp_45 | $empty

    opt_47 ::= statement | $empty

    opt_48 ::= expressionList | $empty

    opt_49 ::= IDENTIFIER | $empty

    opt_50 ::= IDENTIFIER | $empty

    grp_52 ::= SEMI | $empty

    grp_53 ::= SEMI | $empty

    grp_51 ::= expression | grp_52 expression | simpleStmt grp_53 expression

    grp_55 ::= ifStmt | block

    grp_54 ::= ELSE grp_55

    opt_56 ::= grp_54 | $empty

    opt_58 ::= expression | $empty

    opt_59 ::= simpleStmt | $empty

    opt_60 ::= expression | $empty

    grp_57 ::= opt_58 | opt_59 eos opt_60

    list_61 ::= $empty | list_61 exprCaseClause

    grp_62 ::= typeSwitchGuard | eos typeSwitchGuard | simpleStmt eos typeSwitchGuard

    list_63 ::= $empty | list_63 typeCaseClause

    seq_64 ::= IDENTIFIER COLONEQ

    opt_65 ::= seq_64 | $empty

    grp_66 ::= type_ | NIL_LIT

    grp_68 ::= type_ | NIL_LIT

    grp_67 ::= COMMA grp_68

    list_69 ::= $empty | list_69 grp_67

    list_70 ::= $empty | list_70 commClause

    grp_71 ::= sendStmt | recvStmt

    grp_72 ::= expressionList EQ | identifierList COLONEQ

    opt_73 ::= grp_72 | $empty

    grp_74 ::= condition | forClause | rangeClause

    opt_75 ::= grp_74 | $empty

    opt_76 ::= simpleStmt | $empty

    opt_77 ::= expression | $empty

    opt_78 ::= simpleStmt | $empty

    grp_79 ::= expressionList EQ | identifierList COLONEQ

    opt_80 ::= grp_79 | $empty

    opt_81 ::= typeArgs | $empty

    opt_82 ::= COMMA | $empty

    grp_84 ::= methodSpec | typeElement

    grp_83 ::= grp_84 eos

    list_85 ::= $empty | list_85 grp_83

    grp_86 ::= CHAN | CHAN RECEIVE | RECEIVE CHAN

    opt_87 ::= result | $empty

    seq_88 ::= COMMA parameterDecl

    list_89 ::= $empty | list_89 seq_88

    opt_90 ::= COMMA | $empty

    seq_91 ::= parameterDecl list_89 opt_90

    opt_92 ::= seq_91 | $empty

    opt_93 ::= identifierList | $empty

    opt_94 ::= ELLIPSIS | $empty

    grp_95 ::= PLUS | MINUS | BANG | CARET | STAR | AMP | RECEIVE

    grp_96 ::= STAR | SLASH | PERCENT | LSHIFT | RSHIFT | AMP | BITCLEAR

    grp_97 ::= PLUS | MINUS | PIPE | CARET

    grp_98 ::= EQEQ | NOTEQ | LT | LTEQ | GT | GTEQ

    -- methodExpr (type_ DOT IDENTIFIER) steals bare IDENTIFIER before ')' in
    -- call args; qualified names already work via operandName/qualifiedIdent.
    grp_99 ::= operand

    grp_100 ::= DOT IDENTIFIER | index | slice_ | typeAssertion | arguments

    list_101 ::= $empty | list_101 grp_100

    opt_102 ::= COMMA | $empty

    opt_103 ::= typeArgs | $empty

    opt_104 ::= typeArgs | $empty

    opt_105 ::= COMMA | $empty

    seq_106 ::= elementList opt_105

    opt_107 ::= seq_106 | $empty

    seq_108 ::= COMMA keyedElement

    list_109 ::= $empty | list_109 seq_108

    seq_110 ::= key COLON

    opt_111 ::= seq_110 | $empty

    seq_112 ::= fieldDecl eos

    list_113 ::= $empty | list_113 seq_112

    grp_114 ::= identifierList type_ | embeddedField

    opt_115 ::= string_ | $empty

    opt_116 ::= STAR | $empty

    opt_117 ::= typeArgs | $empty

    opt_119 ::= expression | $empty

    opt_120 ::= expression | $empty

    opt_121 ::= expression | $empty

    grp_118 ::= opt_119 COLON opt_120 | opt_121 COLON expression COLON expression

    opt_126 ::= ELLIPSIS | $empty

    opt_127 ::= COMMA | $empty

%End
