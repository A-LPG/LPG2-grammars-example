-- AUTO-GENERATED from antlr/grammars-v4 turing by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=TuringParser
%options package=lpg.grammars.turing
%options template=dtParserTemplateF.gi
%options import_terminals=TuringLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= list_1
           | PUT NUMBER
           | VAR IDENTIFIER COLON INT
           | VAR IDENTIFIER COLON IDENTIFIER

    declarationOrStatementInMainProgram ::= declaration
           | statement
           | subprogramDeclaration

    declaration ::= constantDeclaration
           | variableDeclaration
           | typeDeclaration

    constantDeclaration ::= seq_2
           | seq_5

    initializingValue ::= NUMBER
           | IDENTIFIER
           | STRING

    variableDeclaration ::= seq_11
           | seq_16

    typeDeclaration ::= TYPE id_ COLON typeSpec

    typeSpec ::= standardType
           | subrangeType
           | arrayType
           | recordType
           | namedType

    standardType ::= INT
           | REAL
           | IDENTIFIER
           | STRING opt_18
           | INT_KW

    subrangeType ::= compileTimeExpn DOTDOT expn

    arrayType ::= ARRAY indexType list_20 OF typeSpec

    indexType ::= subrangeType
           | namedType

    recordType ::= RECORD id_ list_22 COLON typeSpec list_26 END RECORD

    namedType ::= id_

    subprogramDeclaration ::= subprogramHeader subprogramBody

    subprogramHeader ::= PROCEDURE id_ opt_30 FUNCTION id_ opt_34 COLON typeSpec

    parameterDeclaration ::= opt_35 id_ list_37 COLON parameterType

    parameterType ::= COLON typeSpec
           | STRING LPAREN STAR RPAREN
           | ARRAY compileTimeExpn DOTDOT STAR list_39 OF typeSpec
           | ARRAY compileTimeExpn DOTDOT STAR list_41 OF string LPAREN STAR RPAREN

    subprogramBody ::= declarationsAndStatements END id_

    declarationsAndStatements ::= list_42

    declarationOrStatement ::= declaration
           | statement

    statement ::= seq_43
           | procedureCall
           | seq_44
           | RESULT expn
           | ifStatement
           | loopStatement
           | EXIT opt_46
           | caseStatement
           | forStatement
           | putStatement
           | getStatement
           | openStatement
           | closeStatement

    procedureCall ::= reference

    ifStatement ::= IF booleanExpn THEN declarationsAndStatements list_48 opt_50 END IF

    loopStatement ::= LOOP declarationsAndStatements END LOOP

    caseStatement ::= CASE expn OF LABEL compileTimeExpn list_52 COLON declarationsAndStatements list_56 opt_58 END CASE

    forStatement ::= seq_61
           | seq_64

    putStatement ::= PUT opt_66 putItem list_68 opt_69

    putItem ::= expn opt_75
           | SKIP

    getStatement ::= GET opt_77 getItem list_79

    getItem ::= variableReference
           | SKIP variableReference COLON STAR
           | variableReference COLON widthExpn

    openStatement ::= OPEN COLON fileNumber COMMA string COMMA capability_rule list_81

    capability_rule ::= GET
           | PUT

    closeStatement ::= CLOSE COLON fileNumber

    streamNumber ::= expn

    widthExpn ::= expn

    fractionWidth ::= expn

    exponentWidth ::= expn

    fileNumber ::= expn

    variableReference ::= reference

    reference ::= id_ reference_2

    reference_2 ::= opt_83

    componentSelector ::= LPAREN expn list_85 RPAREN
           | DOT id_

    booleanExpn ::= expn

    compileTimeExpn ::= expn

    expn ::= reference
           | explicitConstant
           | substring
           | expn infixOperator expn
           | prefixOperator expn
           | LPAREN expn RPAREN

    string ::= ExplicitStringConstant

    explicitConstant ::= ExplicitUnsignedIntegerConstant
           | ExplicitUnsignedRealConstant
           | ExplicitStringConstant
           | TRUE
           | FALSE

    infixOperator ::= PLUS
           | LIT_74144
           | STAR
           | SLASH DIV
           | MOD
           | STARSTAR
           | LT
           | GT
           | EQ
           | LTEQ
           | GTEQ
           | EMPTY_LIT
           | AND
           | OR

    prefixOperator ::= PLUS
           | LIT_74144
           | NOT

    substring ::= reference LPAREN substringPosition opt_87 RPAREN

    substringPosition ::= expn seq_89

    id_ ::= IDENTIFIER
           | ID

    list_1 ::= declarationOrStatementInMainProgram | list_1 declarationOrStatementInMainProgram

    seq_2 ::= CONST id_ COLONEQ expn

    seq_3 ::= COLON typeSpec

    opt_4 ::= seq_3 | $empty

    seq_5 ::= CONST id_ opt_4 COLONEQ initializingValue

    seq_6 ::= COMMA initializingValue

    list_7 ::= $empty | list_7 seq_6

    seq_8 ::= NUMBER

    seq_9 ::= COMMA id_

    list_10 ::= $empty | list_10 seq_9

    seq_11 ::= VAR id_ list_10 COLONEQ expn

    seq_12 ::= COMMA id_

    list_13 ::= $empty | list_13 seq_12

    seq_14 ::= COLONEQ initializingValue

    opt_15 ::= seq_14 | $empty

    seq_16 ::= VAR id_ list_13 COLON typeSpec opt_15

    seq_17 ::= LPAREN compileTimeExpn RPAREN

    opt_18 ::= seq_17 | $empty

    seq_19 ::= COMMA indexType

    list_20 ::= $empty | list_20 seq_19

    seq_21 ::= COMMA id_

    list_22 ::= $empty | list_22 seq_21

    seq_23 ::= COMMA id_

    list_24 ::= $empty | list_24 seq_23

    seq_25 ::= id_ list_24 COLON typeSpec

    list_26 ::= $empty | list_26 seq_25

    seq_27 ::= COMMA parameterDeclaration

    list_28 ::= $empty | list_28 seq_27

    seq_29 ::= LPAREN parameterDeclaration list_28 RPAREN

    opt_30 ::= seq_29 | $empty

    seq_31 ::= COMMA parameterDeclaration

    list_32 ::= $empty | list_32 seq_31

    seq_33 ::= LPAREN parameterDeclaration list_32 RPAREN

    opt_34 ::= seq_33 | $empty

    opt_35 ::= VAR | $empty

    seq_36 ::= COMMA id_

    list_37 ::= $empty | list_37 seq_36

    seq_38 ::= COMMA compileTimeExpn DOTDOT STAR

    list_39 ::= $empty | list_39 seq_38

    seq_40 ::= COMMA compileTimeExpn DOTDOT STAR

    list_41 ::= $empty | list_41 seq_40

    list_42 ::= $empty | list_42 declarationOrStatement

    seq_43 ::= variableReference COLONEQ expn

    seq_44 ::= ASSERT booleanExpn

    seq_45 ::= WHEN booleanExpn

    opt_46 ::= seq_45 | $empty

    seq_47 ::= ELSIF booleanExpn THEN declarationsAndStatements

    list_48 ::= $empty | list_48 seq_47

    seq_49 ::= ELSE declarationsAndStatements

    opt_50 ::= seq_49 | $empty

    seq_51 ::= COMMA compileTimeExpn

    list_52 ::= $empty | list_52 seq_51

    seq_53 ::= COMMA compileTimeExpn

    list_54 ::= $empty | list_54 seq_53

    seq_55 ::= LABEL compileTimeExpn list_54 COLON declarationsAndStatements

    list_56 ::= $empty | list_56 seq_55

    seq_57 ::= LABEL COLON declarationsAndStatements

    opt_58 ::= seq_57 | $empty

    seq_59 ::= BY expn

    opt_60 ::= seq_59 | $empty

    seq_61 ::= FOR id_ COLON expn DOTDOT expn opt_60 declarationsAndStatements END FOR

    seq_62 ::= BY expn

    opt_63 ::= seq_62 | $empty

    seq_64 ::= FOR DECREASING id_ COLON expn DOTDOT expn opt_63 declarationsAndStatements END FOR

    seq_65 ::= COLON streamNumber COMMA

    opt_66 ::= seq_65 | $empty

    seq_67 ::= COMMA putItem

    list_68 ::= $empty | list_68 seq_67

    opt_69 ::= DOTDOT | $empty

    seq_70 ::= COLON exponentWidth

    opt_71 ::= seq_70 | $empty

    seq_72 ::= COLON fractionWidth opt_71

    opt_73 ::= seq_72 | $empty

    seq_74 ::= COLON widthExpn opt_73

    opt_75 ::= seq_74 | $empty

    seq_76 ::= COLON streamNumber COMMA

    opt_77 ::= seq_76 | $empty

    seq_78 ::= COMMA getItem

    list_79 ::= $empty | list_79 seq_78

    seq_80 ::= COMMA capability_rule

    list_81 ::= $empty | list_81 seq_80

    seq_82 ::= componentSelector reference_2

    opt_83 ::= seq_82 | $empty

    seq_84 ::= COMMA expn

    list_85 ::= $empty | list_85 seq_84

    seq_86 ::= DOTDOT substringPosition

    opt_87 ::= seq_86 | $empty

    seq_88 ::= LIT_74144 expn

    seq_89 ::= STAR seq_88

%End
