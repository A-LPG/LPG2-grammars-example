-- AUTO-GENERATED from antlr/grammars-v4 modula2pim4 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=Modula2pim4Parser
%options package=lpg.grammars.modula2pim4
%options template=dtParserTemplateF.gi
%options import_terminals=Modula2pim4Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    compilationUnit
%End

%Rules
    ident ::= IDENTIFIER

    number ::= INTEGER
           | REAL

    integer ::= INTEGER

    real ::= REAL

    scaleFactor ::= SCALE_FACTOR

    hexDigit ::= HEX_DIGIT

    digit ::= DIGIT

    octalDigit ::= OCTAL_DIGIT

    string ::= STRING

    qualident ::= ident list_2

    constantDeclaration ::= ident EQ constExpression

    constExpression ::= simpleConstExpr opt_4

    relation ::= EQ
           | HASH
           | LTGT
           | LT
           | LTEQ
           | GT
           | GTEQ
           | IN

    simpleConstExpr ::= opt_6 constTerm list_8

    addOperator ::= PLUS
           | MINUS
           | OR

    constTerm ::= constFactor list_10

    mulOperator ::= STAR
           | SLASH
           | DIV
           | MOD
           | AND
           | AMP

    constFactor ::= number
           | string
           | setOrQualident
           | LPAREN constExpression RPAREN
           | grp_11 constFactor

    setOrQualident ::= set_
           | qualident opt_12

    set_ ::= LBRACE opt_16 RBRACE

    element ::= constExpression opt_18

    typeDeclaration ::= ident EQ type_

    type_ ::= simpleType
           | arrayType
           | recordType
           | setType
           | pointerType
           | procedureType

    simpleType ::= qualident
           | enumeration
           | subrangeType

    enumeration ::= LPAREN identList RPAREN

    identList ::= ident list_20

    subrangeType ::= LBRACKET constExpression DOTDOT constExpression RBRACKET

    arrayType ::= ARRAY simpleType list_22 OF type_

    recordType ::= RECORD fieldListSequence END

    fieldListSequence ::= fieldList list_24

    fieldList ::= opt_33

    variant ::= caseLabelList COLON fieldListSequence

    caseLabelList ::= caseLabels list_35

    caseLabels ::= constExpression opt_37

    setType ::= SET OF simpleType

    pointerType ::= POINTER TO type_

    procedureType ::= PROCEDURE opt_38

    formalTypeList ::= LPAREN opt_44 RPAREN opt_46

    variableDeclaration ::= identList COLON type_

    designator ::= qualident opt_47

    designatorTail ::= list_52

    expList ::= expression list_54

    expression ::= simpleExpression opt_56

    simpleExpression ::= opt_58 term list_60

    term ::= factor list_62

    factor ::= number
           | string
           | setOrDesignatorOrProcCall
           | LPAREN expression RPAREN
           | grp_63 factor

    setOrDesignatorOrProcCall ::= set_
           | qualident grp_64

    actualParameters ::= LPAREN opt_67 RPAREN

    statement ::= opt_70

    assignmentOrProcCall ::= designator grp_71

    statementSequence ::= statement list_74

    ifStatement ::= IF expression THEN statementSequence list_76 opt_78 END

    caseStatement ::= CASE expression OF ccase list_80 opt_82 END

    ccase ::= caseLabelList COLON statementSequence

    whileStatement ::= WHILE expression DO statementSequence END

    repeatStatement ::= REPEAT statementSequence UNTIL expression

    forStatement ::= FOR ident COLONEQ expression TO expression opt_84 DO statementSequence END

    loopStatement ::= LOOP statementSequence END

    withStatement ::= WITH designator DO statementSequence END

    procedureDeclaration ::= procedureHeading SEMI block ident

    procedureHeading ::= PROCEDURE ident opt_85

    block ::= list_86 opt_88 END

    declaration ::= CONST list_90
           | TYPE list_92
           | VAR list_94
           | procedureDeclaration SEMI
           | moduleDeclaration SEMI

    formalParameters ::= LPAREN opt_98 RPAREN opt_100

    fpSection ::= opt_101 identList COLON formalType

    formalType ::= opt_103 qualident

    moduleDeclaration ::= MODULE ident opt_104 SEMI list_105 opt_106 block ident

    priority ::= LBRACKET constExpression RBRACKET

    exportList ::= EXPORT opt_107 identList SEMI

    importList ::= opt_109 IMPORT identList SEMI

    definitionModule ::= DEFINITION MODULE ident SEMI list_110 opt_111 list_112 END ident DOT

    definition ::= CONST list_114
           | TYPE list_118
           | VAR list_120
           | procedureHeading SEMI

    programModule ::= MODULE ident opt_121 SEMI list_122 block ident DOT

    compilationUnit ::= grp_123

    seq_1 ::= DOT ident

    list_2 ::= $empty | list_2 seq_1

    seq_3 ::= relation simpleConstExpr

    opt_4 ::= seq_3 | $empty

    grp_5 ::= PLUS | MINUS

    opt_6 ::= grp_5 | $empty

    seq_7 ::= addOperator constTerm

    list_8 ::= $empty | list_8 seq_7

    seq_9 ::= mulOperator constFactor

    list_10 ::= $empty | list_10 seq_9

    grp_11 ::= NOT | TILDE

    opt_12 ::= set_ | $empty

    seq_13 ::= COMMA element

    list_14 ::= $empty | list_14 seq_13

    seq_15 ::= element list_14

    opt_16 ::= seq_15 | $empty

    seq_17 ::= DOTDOT constExpression

    opt_18 ::= seq_17 | $empty

    seq_19 ::= COMMA ident

    list_20 ::= $empty | list_20 seq_19

    seq_21 ::= COMMA simpleType

    list_22 ::= $empty | list_22 seq_21

    seq_23 ::= SEMI fieldList

    list_24 ::= $empty | list_24 seq_23

    grp_27 ::= COLON | DOT

    grp_26 ::= grp_27 qualident

    opt_28 ::= grp_26 | $empty

    grp_29 ::= PIPE variant

    list_30 ::= $empty | list_30 grp_29

    seq_31 ::= ELSE fieldListSequence

    opt_32 ::= seq_31 | $empty

    grp_25 ::= identList COLON type_ | CASE ident opt_28 OF variant list_30 opt_32 END

    opt_33 ::= grp_25 | $empty

    seq_34 ::= COMMA caseLabels

    list_35 ::= $empty | list_35 seq_34

    seq_36 ::= DOTDOT constExpression

    opt_37 ::= seq_36 | $empty

    opt_38 ::= formalTypeList | $empty

    opt_39 ::= VAR | $empty

    opt_40 ::= VAR | $empty

    seq_41 ::= COMMA opt_40 formalType

    list_42 ::= $empty | list_42 seq_41

    seq_43 ::= opt_39 formalType list_42

    opt_44 ::= seq_43 | $empty

    seq_45 ::= COLON qualident

    opt_46 ::= seq_45 | $empty

    opt_47 ::= designatorTail | $empty

    grp_49 ::= LBRACKET expList RBRACKET | CARET

    seq_50 ::= DOT ident

    list_51 ::= $empty | list_51 seq_50

    grp_48 ::= grp_49 list_51

    list_52 ::= grp_48 | list_52 grp_48

    seq_53 ::= COMMA expression

    list_54 ::= $empty | list_54 seq_53

    seq_55 ::= relation simpleExpression

    opt_56 ::= seq_55 | $empty

    grp_57 ::= PLUS | MINUS

    opt_58 ::= grp_57 | $empty

    seq_59 ::= addOperator term

    list_60 ::= $empty | list_60 seq_59

    seq_61 ::= mulOperator factor

    list_62 ::= $empty | list_62 seq_61

    grp_63 ::= NOT | TILDE

    opt_65 ::= designatorTail | $empty

    opt_66 ::= actualParameters | $empty

    grp_64 ::= set_ | opt_65 opt_66

    opt_67 ::= expList | $empty

    opt_69 ::= expression | $empty

    grp_68 ::= assignmentOrProcCall | ifStatement | caseStatement | whileStatement | repeatStatement | loopStatement | forStatement | withStatement | EXIT | RETURN opt_69

    opt_70 ::= grp_68 | $empty

    opt_72 ::= actualParameters | $empty

    grp_71 ::= COLONEQ expression | opt_72

    seq_73 ::= SEMI statement

    list_74 ::= $empty | list_74 seq_73

    seq_75 ::= ELSIF expression THEN statementSequence

    list_76 ::= $empty | list_76 seq_75

    seq_77 ::= ELSE statementSequence

    opt_78 ::= seq_77 | $empty

    grp_79 ::= PIPE ccase

    list_80 ::= $empty | list_80 grp_79

    seq_81 ::= ELSE statementSequence

    opt_82 ::= seq_81 | $empty

    seq_83 ::= BY constExpression

    opt_84 ::= seq_83 | $empty

    opt_85 ::= formalParameters | $empty

    list_86 ::= $empty | list_86 declaration

    seq_87 ::= BEGIN statementSequence

    opt_88 ::= seq_87 | $empty

    seq_89 ::= constantDeclaration SEMI

    list_90 ::= $empty | list_90 seq_89

    seq_91 ::= typeDeclaration SEMI

    list_92 ::= $empty | list_92 seq_91

    seq_93 ::= variableDeclaration SEMI

    list_94 ::= $empty | list_94 seq_93

    seq_95 ::= SEMI fpSection

    list_96 ::= $empty | list_96 seq_95

    seq_97 ::= fpSection list_96

    opt_98 ::= seq_97 | $empty

    seq_99 ::= COLON qualident

    opt_100 ::= seq_99 | $empty

    opt_101 ::= VAR | $empty

    seq_102 ::= ARRAY OF

    opt_103 ::= seq_102 | $empty

    opt_104 ::= priority | $empty

    list_105 ::= $empty | list_105 importList

    opt_106 ::= exportList | $empty

    opt_107 ::= QUALIFIED | $empty

    seq_108 ::= FROM ident

    opt_109 ::= seq_108 | $empty

    list_110 ::= $empty | list_110 importList

    opt_111 ::= exportList | $empty

    list_112 ::= $empty | list_112 definition

    seq_113 ::= constantDeclaration SEMI

    list_114 ::= $empty | list_114 seq_113

    seq_115 ::= EQ type_

    opt_116 ::= seq_115 | $empty

    seq_117 ::= ident opt_116 SEMI

    list_118 ::= $empty | list_118 seq_117

    seq_119 ::= variableDeclaration SEMI

    list_120 ::= $empty | list_120 seq_119

    opt_121 ::= priority | $empty

    list_122 ::= $empty | list_122 importList

    opt_124 ::= IMPLEMENTATION | $empty

    grp_123 ::= definitionModule | opt_124 programModule

%End
