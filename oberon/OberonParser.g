-- AUTO-GENERATED from antlr/grammars-v4 oberon by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=OberonParser
%options package=lpg.grammars.oberon
%options template=dtParserTemplateF.gi
%options import_terminals=OberonLexer.gi
%options automatic_ast=none
%options conflicts

%Define
    $ast_class /.Object./
    $ast_type /.Object./
%End


%Eof
    EOF_TOKEN
%End

%Start
    module
%End

%Rules
    ident ::= IDENT

    qualident ::= opt_2 ident

    identdef ::= ident opt_3

    integer ::= list_4
           | seq_6

    real ::= list_7 DOT list_8 opt_9

    scaleFactor ::= E opt_11 list_12

    number ::= integer
           | real

    constDeclaration ::= identdef EQ constExpression

    constExpression ::= expression

    typeDeclaration ::= identdef EQ type_

    type_ ::= qualident
           | arrayType
           | recordType
           | pointerType
           | procedureType

    arrayType ::= ARRAY length list_14 OF type_

    length ::= constExpression

    recordType ::= RECORD opt_16 opt_17 END

    baseType ::= qualident

    fieldListSequence ::= fieldList list_19

    fieldList ::= identList COLON type_

    identList ::= identdef list_21

    pointerType ::= POINTER TO type_

    procedureType ::= PROCEDURE opt_22

    variableDeclaration ::= identList COLON type_

    expression ::= simpleExpression opt_24

    relation ::= EQ
           | HASH
           | LT
           | LTEQ
           | GT
           | GTEQ
           | IN
           | IS

    simpleExpression ::= opt_26 term list_28

    addOperator ::= PLUS
           | MINUS
           | OR

    term ::= factor list_30

    mulOperator ::= STAR
           | SLASH
           | DIV
           | MOD
           | AMP

    factor ::= number
           | STRING
           | NIL
           | TRUE
           | FALSE
           | set_
           | designator opt_31
           | LPAREN expression RPAREN
           | TILDE factor

    designator ::= qualident list_32

    selector ::= DOT ident
           | LBRACKET expList RBRACKET
           | CARET
           | LPAREN qualident RPAREN

    set_ ::= LBRACE opt_36 RBRACE

    element ::= expression opt_38

    expList ::= expression list_40

    actualParameters ::= LPAREN opt_41 RPAREN

    statement ::= opt_43

    assignment ::= designator COLONEQ expression

    procedureCall ::= designator opt_44

    statementSequence ::= statement list_46

    ifStatement ::= IF expression THEN statementSequence list_48 opt_50 END

    caseStatement ::= CASE expression OF case_ list_52 END

    case_ ::= opt_54

    caseLabelList ::= labelRange list_56

    labelRange ::= label opt_58

    label ::= integer
           | STRING
           | qualident

    whileStatement ::= WHILE expression DO statementSequence list_60 END

    repeatStatement ::= REPEAT statementSequence UNTIL expression

    forStatement ::= FOR ident COLONEQ expression TO expression opt_62 DO statementSequence END

    procedureDeclaration ::= procedureHeading SEMI procedureBody ident

    procedureHeading ::= PROCEDURE identdef opt_63

    procedureBody ::= declarationSequence opt_65 opt_67 END

    declarationSequence ::= opt_71 opt_75 opt_79 list_81

    formalParameters ::= LPAREN opt_85 RPAREN opt_87

    fPSection ::= opt_88 ident list_90 COLON formalType

    formalType ::= list_92 qualident

    module ::= MODULE ident SEMI opt_93 declarationSequence opt_95 END ident DOT

    importList ::= IMPORT import_ list_97 SEMI

    import_ ::= ident opt_99

    seq_1 ::= ident DOT

    opt_2 ::= seq_1 | $empty

    opt_3 ::= STAR | $empty

    list_4 ::= DIGIT | list_4 DIGIT

    list_5 ::= $empty | list_5 HEXDIGIT

    seq_6 ::= DIGIT list_5 H

    list_7 ::= DIGIT | list_7 DIGIT

    list_8 ::= $empty | list_8 DIGIT

    opt_9 ::= scaleFactor | $empty

    grp_10 ::= PLUS | MINUS

    opt_11 ::= grp_10 | $empty

    list_12 ::= DIGIT | list_12 DIGIT

    seq_13 ::= COMMA length

    list_14 ::= $empty | list_14 seq_13

    seq_15 ::= LPAREN baseType RPAREN

    opt_16 ::= seq_15 | $empty

    opt_17 ::= fieldListSequence | $empty

    seq_18 ::= SEMI fieldList

    list_19 ::= $empty | list_19 seq_18

    seq_20 ::= COMMA identdef

    list_21 ::= $empty | list_21 seq_20

    opt_22 ::= formalParameters | $empty

    seq_23 ::= relation simpleExpression

    opt_24 ::= seq_23 | $empty

    grp_25 ::= PLUS | MINUS

    opt_26 ::= grp_25 | $empty

    seq_27 ::= addOperator term

    list_28 ::= $empty | list_28 seq_27

    seq_29 ::= mulOperator factor

    list_30 ::= $empty | list_30 seq_29

    opt_31 ::= actualParameters | $empty

    list_32 ::= $empty | list_32 selector

    seq_33 ::= COMMA element

    list_34 ::= $empty | list_34 seq_33

    seq_35 ::= element list_34

    opt_36 ::= seq_35 | $empty

    seq_37 ::= DOTDOT expression

    opt_38 ::= seq_37 | $empty

    seq_39 ::= COMMA expression

    list_40 ::= $empty | list_40 seq_39

    opt_41 ::= expList | $empty

    grp_42 ::= assignment | procedureCall | ifStatement | caseStatement | whileStatement | repeatStatement | forStatement

    opt_43 ::= grp_42 | $empty

    opt_44 ::= actualParameters | $empty

    seq_45 ::= SEMI statement

    list_46 ::= $empty | list_46 seq_45

    seq_47 ::= ELSIF expression THEN statementSequence

    list_48 ::= $empty | list_48 seq_47

    seq_49 ::= ELSE statementSequence

    opt_50 ::= seq_49 | $empty

    grp_51 ::= PIPE case_

    list_52 ::= $empty | list_52 grp_51

    seq_53 ::= caseLabelList COLON statementSequence

    opt_54 ::= seq_53 | $empty

    seq_55 ::= COMMA labelRange

    list_56 ::= $empty | list_56 seq_55

    seq_57 ::= DOTDOT label

    opt_58 ::= seq_57 | $empty

    seq_59 ::= ELSIF expression DO statementSequence

    list_60 ::= $empty | list_60 seq_59

    seq_61 ::= BY constExpression

    opt_62 ::= seq_61 | $empty

    opt_63 ::= formalParameters | $empty

    seq_64 ::= BEGIN statementSequence

    opt_65 ::= seq_64 | $empty

    seq_66 ::= RETURN expression

    opt_67 ::= seq_66 | $empty

    seq_68 ::= constDeclaration SEMI

    list_69 ::= $empty | list_69 seq_68

    seq_70 ::= CONST list_69

    opt_71 ::= seq_70 | $empty

    seq_72 ::= typeDeclaration SEMI

    list_73 ::= $empty | list_73 seq_72

    seq_74 ::= TYPE list_73

    opt_75 ::= seq_74 | $empty

    seq_76 ::= variableDeclaration SEMI

    list_77 ::= $empty | list_77 seq_76

    seq_78 ::= VAR list_77

    opt_79 ::= seq_78 | $empty

    seq_80 ::= procedureDeclaration SEMI

    list_81 ::= $empty | list_81 seq_80

    seq_82 ::= SEMI fPSection

    list_83 ::= $empty | list_83 seq_82

    seq_84 ::= fPSection list_83

    opt_85 ::= seq_84 | $empty

    seq_86 ::= COLON qualident

    opt_87 ::= seq_86 | $empty

    opt_88 ::= VAR | $empty

    seq_89 ::= COMMA ident

    list_90 ::= $empty | list_90 seq_89

    seq_91 ::= ARRAY OF

    list_92 ::= $empty | list_92 seq_91

    opt_93 ::= importList | $empty

    seq_94 ::= BEGIN statementSequence

    opt_95 ::= seq_94 | $empty

    seq_96 ::= COMMA import_

    list_97 ::= $empty | list_97 seq_96

    seq_98 ::= COLONEQ ident

    opt_99 ::= seq_98 | $empty

%End
