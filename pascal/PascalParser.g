-- AUTO-GENERATED from antlr/grammars-v4 pascal by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=PascalParser
%options package=lpg.grammars.pascal
%options template=dtParserTemplateF.gi
%options import_terminals=PascalLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= programHeading opt_1 block DOT

    programHeading ::= PROGRAM identifier opt_3 SEMI
           | UNIT identifier SEMI

    identifier ::= IDENTIFIER

    block ::= list_5 compoundStatement

    usesUnitsPart ::= USES identifierList SEMI

    labelDeclarationPart ::= LABEL label list_7 SEMI

    label ::= unsignedInteger

    constantDefinitionPart ::= CONST list_9

    constantDefinition ::= identifier EQ constant

    constantChr ::= CHR LPAREN unsignedInteger RPAREN

    constant ::= unsignedNumber
           | sign unsignedNumber
           | identifier
           | sign identifier
           | string
           | constantChr

    unsignedNumber ::= unsignedInteger
           | unsignedReal

    unsignedInteger ::= NUM_INT

    unsignedReal ::= NUM_REAL

    sign ::= PLUS
           | MINUS

    bool_ ::= TRUE
           | FALSE

    string ::= STRING_LITERAL

    typeDefinitionPart ::= TYPE list_11

    typeDefinition ::= identifier EQ grp_12

    functionType ::= FUNCTION opt_13 COLON resultType

    procedureType ::= PROCEDURE opt_14

    type_ ::= simpleType
           | structuredType
           | pointerType

    simpleType ::= scalarType
           | subrangeType
           | typeIdentifier
           | stringtype

    scalarType ::= LPAREN identifierList RPAREN

    subrangeType ::= constant DOTDOT constant

    typeIdentifier ::= identifier
           | grp_15

    structuredType ::= PACKED unpackedStructuredType
           | unpackedStructuredType

    unpackedStructuredType ::= arrayType
           | recordType
           | setType
           | fileType

    stringtype ::= STRING LBRACK grp_16 RBRACK

    arrayType ::= ARRAY LBRACK typeList RBRACK OF componentType
           | ARRAY LBRACK2 typeList RBRACK2 OF componentType

    typeList ::= indexType list_18

    indexType ::= simpleType

    componentType ::= type_

    recordType ::= RECORD opt_19 END

    fieldList ::= fixedPart opt_21
           | variantPart

    fixedPart ::= recordSection list_23

    recordSection ::= identifierList COLON type_

    variantPart ::= CASE tag OF variant list_25

    tag ::= identifier COLON typeIdentifier
           | typeIdentifier

    variant ::= constList COLON LPAREN fieldList RPAREN

    setType ::= SET OF baseType

    baseType ::= simpleType

    fileType ::= FILE OF type_
           | FILE

    pointerType ::= POINTER typeIdentifier

    variableDeclarationPart ::= VAR variableDeclaration list_27 SEMI

    variableDeclaration ::= identifierList COLON type_

    procedureAndFunctionDeclarationPart ::= procedureOrFunctionDeclaration SEMI

    procedureOrFunctionDeclaration ::= procedureDeclaration
           | functionDeclaration

    procedureDeclaration ::= PROCEDURE identifier opt_28 SEMI block

    formalParameterList ::= LPAREN formalParameterSection list_30 RPAREN

    formalParameterSection ::= parameterGroup
           | VAR parameterGroup
           | FUNCTION parameterGroup
           | PROCEDURE parameterGroup

    parameterGroup ::= identifierList COLON typeIdentifier

    identifierList ::= identifier list_32

    constList ::= constant list_34

    functionDeclaration ::= FUNCTION identifier opt_35 COLON resultType SEMI block

    resultType ::= typeIdentifier

    statement ::= label COLON unlabelledStatement
           | unlabelledStatement

    unlabelledStatement ::= simpleStatement
           | structuredStatement

    simpleStatement ::= assignmentStatement
           | procedureStatement
           | gotoStatement
           | emptyStatement_

    assignmentStatement ::= variable EQ expression

    variable ::= grp_36 list_42

    expression ::= simpleExpression opt_44

    relationaloperator ::= EQ
           | NOT_EQUAL
           | LT
           | LE
           | GE
           | GT
           | IN

    simpleExpression ::= term opt_46

    additiveoperator ::= PLUS
           | MINUS
           | OR

    term ::= signedFactor opt_48

    multiplicativeoperator ::= STAR
           | SLASH
           | PERCENT
           | AND

    signedFactor ::= opt_50 factor

    factor ::= variable
           | LPAREN expression RPAREN
           | functionDesignator
           | unsignedConstant
           | set_
           | NOT factor
           | bool_

    unsignedConstant ::= unsignedNumber
           | constantChr
           | string
           | NIL

    functionDesignator ::= identifier LPAREN parameterList RPAREN

    parameterList ::= actualParameter list_52

    set_ ::= LBRACK elementList RBRACK
           | LBRACK2 elementList RBRACK2

    elementList ::= element list_54

    element ::= expression opt_56

    procedureStatement ::= identifier opt_58

    actualParameter ::= expression list_59

    parameterwidth ::= COLON expression

    gotoStatement ::= GOTO label

    emptyStatement_ ::= $empty

    empty_ ::= $empty

    structuredStatement ::= compoundStatement
           | conditionalStatement
           | repetetiveStatement
           | withStatement

    compoundStatement ::= BEGIN statements END

    statements ::= statement list_61

    conditionalStatement ::= ifStatement
           | caseStatement

    ifStatement ::= IF expression THEN statement opt_63

    caseStatement ::= CASE expression OF caseListElement list_65 opt_67 END

    caseListElement ::= constList COLON statement

    repetetiveStatement ::= whileStatement
           | repeatStatement
           | forStatement

    whileStatement ::= WHILE expression DO statement

    repeatStatement ::= REPEAT statements UNTIL expression

    forStatement ::= FOR identifier EQ forList DO statement

    forList ::= initialValue grp_68 finalValue

    initialValue ::= expression

    finalValue ::= expression

    withStatement ::= WITH recordVariableList DO statement

    recordVariableList ::= variable list_70

    opt_1 ::= INTERFACE | $empty

    seq_2 ::= LPAREN identifierList RPAREN

    opt_3 ::= seq_2 | $empty

    grp_4 ::= labelDeclarationPart | constantDefinitionPart | typeDefinitionPart | variableDeclarationPart | procedureAndFunctionDeclarationPart | usesUnitsPart | IMPLEMENTATION

    list_5 ::= $empty | list_5 grp_4

    seq_6 ::= COMMA label

    list_7 ::= $empty | list_7 seq_6

    seq_8 ::= constantDefinition SEMI

    list_9 ::= seq_8 | list_9 seq_8

    seq_10 ::= typeDefinition SEMI

    list_11 ::= seq_10 | list_11 seq_10

    grp_12 ::= type_ | functionType | procedureType

    opt_13 ::= formalParameterList | $empty

    opt_14 ::= formalParameterList | $empty

    grp_15 ::= CHAR | BOOLEAN | INTEGER | REAL | STRING

    grp_16 ::= identifier | unsignedNumber

    seq_17 ::= COMMA indexType

    list_18 ::= $empty | list_18 seq_17

    opt_19 ::= fieldList | $empty

    seq_20 ::= SEMI variantPart

    opt_21 ::= seq_20 | $empty

    seq_22 ::= SEMI recordSection

    list_23 ::= $empty | list_23 seq_22

    seq_24 ::= SEMI variant

    list_25 ::= $empty | list_25 seq_24

    seq_26 ::= SEMI variableDeclaration

    list_27 ::= $empty | list_27 seq_26

    opt_28 ::= formalParameterList | $empty

    seq_29 ::= SEMI formalParameterSection

    list_30 ::= $empty | list_30 seq_29

    seq_31 ::= COMMA identifier

    list_32 ::= $empty | list_32 seq_31

    seq_33 ::= COMMA constant

    list_34 ::= $empty | list_34 seq_33

    opt_35 ::= formalParameterList | $empty

    grp_36 ::= AT identifier | identifier

    seq_38 ::= COMMA expression

    list_39 ::= $empty | list_39 seq_38

    seq_40 ::= COMMA expression

    list_41 ::= $empty | list_41 seq_40

    grp_37 ::= LBRACK expression list_39 RBRACK | LBRACK2 expression list_41 RBRACK2 | DOT identifier | POINTER

    list_42 ::= $empty | list_42 grp_37

    seq_43 ::= relationaloperator expression

    opt_44 ::= seq_43 | $empty

    seq_45 ::= additiveoperator simpleExpression

    opt_46 ::= seq_45 | $empty

    seq_47 ::= multiplicativeoperator term

    opt_48 ::= seq_47 | $empty

    grp_49 ::= PLUS | MINUS

    opt_50 ::= grp_49 | $empty

    seq_51 ::= COMMA actualParameter

    list_52 ::= $empty | list_52 seq_51

    seq_53 ::= COMMA element

    list_54 ::= $empty | list_54 seq_53

    seq_55 ::= DOTDOT expression

    opt_56 ::= seq_55 | $empty

    seq_57 ::= LPAREN parameterList RPAREN

    opt_58 ::= seq_57 | $empty

    list_59 ::= $empty | list_59 parameterwidth

    seq_60 ::= SEMI statement

    list_61 ::= $empty | list_61 seq_60

    seq_62 ::= ELSE statement

    opt_63 ::= seq_62 | $empty

    seq_64 ::= SEMI caseListElement

    list_65 ::= $empty | list_65 seq_64

    seq_66 ::= SEMI ELSE statements

    opt_67 ::= seq_66 | $empty

    grp_68 ::= TO | DOWNTO

    seq_69 ::= COMMA variable

    list_70 ::= $empty | list_70 seq_69

%End
