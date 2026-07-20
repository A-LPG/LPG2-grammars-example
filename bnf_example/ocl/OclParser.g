-- AUTO-GENERATED from antlr/grammars-v4 ocl by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=OclParser
%options package=lpg.grammars.ocl
%options template=dtParserTemplateF.gi
%options import_terminals=OclLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    specification
%End

%Rules
    specification ::= PACKAGE IDENTIFIER LBRACE list_1 RBRACE

    expressions ::= expressionOrLambda list_3 opt_4

    expressionOrLambda ::= lambdaExpression
           | expression

    lambdaExpression ::= LAMBDA identifier COLON type IN expression

    classifier ::= classDefinition
           | interfaceDefinition
           | usecaseDefinition
           | datatypeDefinition
           | enumeration

    interfaceDefinition ::= INTERFACE identifier opt_6 LBRACE opt_7 RBRACE

    enumeration ::= ENUMERATION identifier LBRACE list_8 RBRACE

    enumerationLiteral ::= LITERAL identifier

    classDefinition ::= CLASS identifier opt_10 opt_12 LBRACE opt_13 RBRACE

    classBody ::= list_14

    classBodyElement ::= attributeDefinition
           | operationDefinition
           | invariant
           | stereotype

    attributeDefinition ::= ATTRIBUTE identifier opt_16 COLON type SEMI
           | STATIC ATTRIBUTE identifier COLON type SEMI

    operationDefinition ::= opt_17 OPERATION identifier LPAREN opt_18 RPAREN COLON type PRE_ expression POST_ expression opt_20 SEMI

    parameterDeclarations ::= list_22 parameterDeclaration

    parameterDeclaration ::= identifier COLON type

    idList ::= list_24 identifier

    usecaseDefinition ::= USECASE identifier opt_26 LBRACE opt_27 RBRACE
           | USECASE identifier LPAREN parameterDeclarations RPAREN opt_29 LBRACE opt_30 RBRACE

    usecaseBody ::= list_31

    usecaseBodyElement ::= PARAMETER identifier COLON type SEMI
           | PRECONDITION expression SEMI
           | EXTENDS identifier SEMI
           | EXTENDEDBY identifier SEMI
           | ACTIVITY_ statementList SEMI
           | COLONCOLON expression
           | stereotype

    invariant ::= INVARIANT expression SEMI

    stereotype ::= STEREOTYPE identifier SEMI
           | STEREOTYPE identifier EQ STRING1_LITERAL SEMI
           | STEREOTYPE identifier EQ STRING2_LITERAL SEMI
           | STEREOTYPE identifier EQ identifier SEMI

    datatypeDefinition ::= DATATYPE identifier EQ type

    statement ::= SKIP
           | RETURN
           | CONTINUE
           | BREAK
           | VAR IDENTIFIER COLON type
           | IF expression THEN statement ELSE statement
           | WHILE expression DO statement
           | FOR IDENTIFIER COLON expression DO statement
           | RETURN expression
           | basicExpression COLONEQ expression
           | statement SEMI statement
           | EXECUTE expression
           | CALL basicExpression
           | LPAREN statementList RPAREN

    statementList ::= statement list_33

    multipleContextSpecifications ::= list_35

    contextSpecification ::= grp_36

    singleInvariant ::= CONTEXT IDENTIFIER INV opt_37 COLON expression

    singleDerivedAttribute ::= CONTEXT qualified_name COLON type opt_39 DERIVE_ expression

    type ::= SEQUENCE LPAREN type RPAREN
           | SET LPAREN type RPAREN
           | BAG LPAREN type RPAREN
           | ORDEREDSET LPAREN type RPAREN
           | REF LPAREN type RPAREN
           | MAP LPAREN type COMMA type RPAREN
           | FUNCTION LPAREN type COMMA type RPAREN
           | identifier

    expressionList ::= list_41 expression

    expression ::= logicalExpression
           | conditionalExpression
           | letExpression

    conditionalExpression ::= IF expression THEN expression ELSE expression ENDIF

    letExpression ::= LET letBinding list_43 IN expression

    letBinding ::= IDENTIFIER opt_45 EQ expression

    basicExpression ::= NULL_LITERAL
           | BOOLEAN_LITERAL
           | basicExpression DOT IDENTIFIER
           | basicExpression LPAREN opt_46 RPAREN
           | basicExpression LBRACKET expression RBRACKET
           | INT
           | FLOAT_LITERAL
           | STRING1_LITERAL
           | STRING2_LITERAL
           | ENUMERATION_LITERAL
           | IDENTIFIER
           | LPAREN expression RPAREN

    logicalExpression ::= equalityExpression list_49

    equalityExpression ::= additiveExpression list_52

    additiveExpression ::= multiplicativeExpression list_55

    multiplicativeExpression ::= unaryExpression list_58

    unaryExpression ::= grp_59 unaryExpression
           | navigationExpression

    navigationExpression ::= primaryFactor list_60

    primaryFactor ::= setExpression
           | basicExpression

    postfixSuffix ::= DOT ALLINSTANCES LPAREN RPAREN
           | DOT OCLTYPE LPAREN RPAREN
           | DOT OCLISUNDEFINED LPAREN RPAREN
           | DOT OCLISINVALID LPAREN RPAREN
           | DOT OCLISNEW LPAREN RPAREN
           | DOT OCLASSET LPAREN RPAREN
           | DOT OCLISTYPEOF LPAREN expression RPAREN
           | DOT OCLISKINDOF LPAREN expression RPAREN
           | DOT OCLASTYPE LPAREN expression RPAREN opt_62
           | DOT SIZE LPAREN RPAREN
           | DOT MAX LPAREN RPAREN
           | DOT MIN LPAREN RPAREN
           | DOT INDEXOF LPAREN expression RPAREN
           | DOT AT LPAREN expression RPAREN opt_64
           | DOT IDENTIFIER LPAREN opt_68 RPAREN opt_70
           | DOT IDENTIFIER
           | ARROW SIZE LPAREN RPAREN
           | ARROW ISEMPTY LPAREN RPAREN
           | ARROW NOTEMPTY LPAREN RPAREN
           | ARROW ASSET LPAREN RPAREN
           | ARROW ASBAG LPAREN RPAREN
           | ARROW ASORDEREDSET LPAREN RPAREN
           | ARROW ASSEQUENCE LPAREN RPAREN
           | ARROW ANY LPAREN RPAREN opt_72
           | ARROW FIRST LPAREN RPAREN opt_74
           | ARROW LAST LPAREN RPAREN opt_76
           | ARROW REVERSE LPAREN RPAREN
           | ARROW FLOOR LPAREN RPAREN
           | ARROW ROUND LPAREN RPAREN
           | ARROW ABS LPAREN RPAREN
           | ARROW OCLTYPE LPAREN RPAREN
           | ARROW OCLISUNDEFINED LPAREN RPAREN
           | ARROW OCLISINVALID LPAREN RPAREN
           | ARROW OCLISNEW LPAREN RPAREN
           | ARROW SUM LPAREN RPAREN
           | ARROW MAX LPAREN RPAREN
           | ARROW MIN LPAREN RPAREN
           | ARROW CHARACTERS LPAREN RPAREN
           | ARROW TOINTEGER LPAREN RPAREN
           | ARROW TOREAL LPAREN RPAREN
           | ARROW TOBOOLEAN LPAREN RPAREN
           | ARROW TOUPPERCASE LPAREN RPAREN
           | ARROW TOLOWERCASE LPAREN RPAREN
           | ARROW grp_77 LPAREN expression RPAREN
           | ARROW EQUALSIGNORECASE LPAREN expression RPAREN
           | ARROW grp_78 LPAREN expression RPAREN opt_80
           | ARROW grp_81 LPAREN expression RPAREN
           | ARROW COLLECT LPAREN opt_83 expression RPAREN
           | ARROW SELECT LPAREN opt_85 expression RPAREN
           | ARROW REJECT LPAREN opt_87 expression RPAREN
           | ARROW FORALL LPAREN opt_89 expression RPAREN
           | ARROW EXISTS LPAREN opt_91 expression RPAREN
           | ARROW ONE LPAREN opt_93 expression RPAREN
           | ARROW ANY LPAREN opt_95 expression RPAREN opt_97
           | ARROW CLOSURE LPAREN opt_99 expression RPAREN
           | ARROW SORTEDBY LPAREN opt_101 expression RPAREN
           | ARROW ISUNIQUE LPAREN opt_103 expression RPAREN
           | ARROW INSERTAT LPAREN expression COMMA expression RPAREN
           | ARROW ITERATE LPAREN identifier SEMI identOptType EQ expression PIPE expression RPAREN
           | ARROW IDENTIFIER LPAREN opt_107 RPAREN opt_109

    identOptType ::= IDENTIFIER opt_111

    identOptTypeList ::= identOptType list_113

    setExpression ::= ORDEREDSET_ opt_114 RBRACE
           | BAG_ opt_115 RBRACE
           | SET_ opt_116 RBRACE
           | SEQUENCE_ opt_117 RBRACE
           | MAP_ opt_118 RBRACE

    identifier ::= IDENTIFIER

    qualified_name ::= ENUMERATION_LITERAL

    list_1 ::= $empty | list_1 classifier

    seq_2 ::= SEMI expressionOrLambda

    list_3 ::= $empty | list_3 seq_2

    opt_4 ::= SEMI | $empty

    seq_5 ::= EXTENDS identifier

    opt_6 ::= seq_5 | $empty

    opt_7 ::= classBody | $empty

    list_8 ::= enumerationLiteral | list_8 enumerationLiteral

    seq_9 ::= EXTENDS identifier

    opt_10 ::= seq_9 | $empty

    seq_11 ::= IMPLEMENTS idList

    opt_12 ::= seq_11 | $empty

    opt_13 ::= classBody | $empty

    list_14 ::= classBodyElement | list_14 classBodyElement

    grp_15 ::= IDENTITY | DERIVED

    opt_16 ::= grp_15 | $empty

    opt_17 ::= STATIC | $empty

    opt_18 ::= parameterDeclarations | $empty

    seq_19 ::= ACTIVITY_ statementList

    opt_20 ::= seq_19 | $empty

    seq_21 ::= parameterDeclaration COMMA

    list_22 ::= $empty | list_22 seq_21

    seq_23 ::= identifier COMMA

    list_24 ::= $empty | list_24 seq_23

    seq_25 ::= COLON type

    opt_26 ::= seq_25 | $empty

    opt_27 ::= usecaseBody | $empty

    seq_28 ::= COLON type

    opt_29 ::= seq_28 | $empty

    opt_30 ::= usecaseBody | $empty

    list_31 ::= usecaseBodyElement | list_31 usecaseBodyElement

    seq_32 ::= SEMI statement

    list_33 ::= $empty | list_33 seq_32

    grp_34 ::= singleInvariant | singleDerivedAttribute

    list_35 ::= grp_34 | list_35 grp_34

    grp_36 ::= singleInvariant | singleDerivedAttribute

    opt_37 ::= IDENTIFIER | $empty

    seq_38 ::= INIT_ expression

    opt_39 ::= seq_38 | $empty

    seq_40 ::= expression COMMA

    list_41 ::= $empty | list_41 seq_40

    seq_42 ::= COMMA letBinding

    list_43 ::= $empty | list_43 seq_42

    seq_44 ::= COLON type

    opt_45 ::= seq_44 | $empty

    opt_46 ::= expressionList | $empty

    grp_48 ::= AND | AMP | OR | XOR | FATARROW | IMPLIES

    grp_47 ::= grp_48 equalityExpression

    list_49 ::= $empty | list_49 grp_47

    grp_51 ::= EQ | LT | GT | GTEQ | LTEQ | SLASHEQ | LTGT | COLON | OP_509 | OP_49238

    grp_50 ::= grp_51 additiveExpression

    list_52 ::= $empty | list_52 grp_50

    grp_54 ::= PLUS | MINUS | DOTDOT | OP_46790

    grp_53 ::= grp_54 multiplicativeExpression

    list_55 ::= $empty | list_55 grp_53

    grp_57 ::= STAR | SLASH | MOD | DIV

    grp_56 ::= grp_57 unaryExpression

    list_58 ::= $empty | list_58 grp_56

    grp_59 ::= NOT | MINUS | PLUS | QUESTION | BANG

    list_60 ::= $empty | list_60 postfixSuffix

    seq_61 ::= DOT IDENTIFIER

    opt_62 ::= seq_61 | $empty

    seq_63 ::= DOT IDENTIFIER

    opt_64 ::= seq_63 | $empty

    seq_65 ::= COMMA expression

    list_66 ::= $empty | list_66 seq_65

    seq_67 ::= expression list_66

    opt_68 ::= seq_67 | $empty

    seq_69 ::= DOT IDENTIFIER

    opt_70 ::= seq_69 | $empty

    seq_71 ::= DOT IDENTIFIER

    opt_72 ::= seq_71 | $empty

    seq_73 ::= DOT IDENTIFIER

    opt_74 ::= seq_73 | $empty

    seq_75 ::= DOT IDENTIFIER

    opt_76 ::= seq_75 | $empty

    grp_77 ::= UNION | INTERSECTION | INCLUDES | EXCLUDES | INCLUDING | EXCLUDING | INCLUDESALL | SYMMETRICDIFFERENCE | EXCLUDESALL | PREPEND | APPEND | COUNT | INDEXOF |

    grp_78 ::= OCLASTYPE | AT

    seq_79 ::= DOT IDENTIFIER

    opt_80 ::= seq_79 | $empty

    grp_81 ::= OCLISTYPEOF | OCLISKINDOF | OCLASSET

    grp_82 ::= identOptType PIPE

    opt_83 ::= grp_82 | $empty

    grp_84 ::= identOptType PIPE

    opt_85 ::= grp_84 | $empty

    grp_86 ::= identOptType PIPE

    opt_87 ::= grp_86 | $empty

    grp_88 ::= identOptTypeList PIPE

    opt_89 ::= grp_88 | $empty

    grp_90 ::= identOptTypeList PIPE

    opt_91 ::= grp_90 | $empty

    grp_92 ::= identOptType PIPE

    opt_93 ::= grp_92 | $empty

    grp_94 ::= identOptType PIPE

    opt_95 ::= grp_94 | $empty

    seq_96 ::= DOT IDENTIFIER

    opt_97 ::= seq_96 | $empty

    grp_98 ::= identOptType PIPE

    opt_99 ::= grp_98 | $empty

    grp_100 ::= identOptType PIPE

    opt_101 ::= grp_100 | $empty

    grp_102 ::= identOptType PIPE

    opt_103 ::= grp_102 | $empty

    seq_104 ::= COMMA expression

    list_105 ::= $empty | list_105 seq_104

    seq_106 ::= expression list_105

    opt_107 ::= seq_106 | $empty

    seq_108 ::= DOT IDENTIFIER

    opt_109 ::= seq_108 | $empty

    seq_110 ::= COLON type

    opt_111 ::= seq_110 | $empty

    seq_112 ::= COMMA identOptType

    list_113 ::= $empty | list_113 seq_112

    opt_114 ::= expressionList | $empty

    opt_115 ::= expressionList | $empty

    opt_116 ::= expressionList | $empty

    opt_117 ::= expressionList | $empty

    opt_118 ::= expressionList | $empty

%End
