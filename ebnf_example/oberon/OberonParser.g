-- AUTO-GENERATED from antlr/grammars-v4 oberon by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
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
    ident ::= IDENTIFIER

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

    opt_2 ::= seq_1?

    opt_3 ::= STAR?

    list_4 ::= DIGIT+

    list_5 ::= (list_5 HEXDIGIT)?

    seq_6 ::= DIGIT list_5 H

    list_7 ::= DIGIT+

    list_8 ::= (list_8 DIGIT)?

    opt_9 ::= scaleFactor?

    grp_10 ::= PLUS
              | MINUS

    opt_11 ::= grp_10?

    list_12 ::= DIGIT+

    seq_13 ::= COMMA length

    list_14 ::= (list_14 seq_13)?

    seq_15 ::= LPAREN baseType RPAREN

    opt_16 ::= seq_15?

    opt_17 ::= fieldListSequence?

    seq_18 ::= SEMI fieldList

    list_19 ::= (list_19 seq_18)?

    seq_20 ::= COMMA identdef

    list_21 ::= (list_21 seq_20)?

    opt_22 ::= formalParameters?

    seq_23 ::= relation simpleExpression

    opt_24 ::= seq_23?

    grp_25 ::= PLUS
              | MINUS

    opt_26 ::= grp_25?

    seq_27 ::= addOperator term

    list_28 ::= (list_28 seq_27)?

    seq_29 ::= mulOperator factor

    list_30 ::= (list_30 seq_29)?

    opt_31 ::= actualParameters?

    list_32 ::= (list_32 selector)?

    seq_33 ::= COMMA element

    list_34 ::= (list_34 seq_33)?

    seq_35 ::= element list_34

    opt_36 ::= seq_35?

    seq_37 ::= DOTDOT expression

    opt_38 ::= seq_37?

    seq_39 ::= COMMA expression

    list_40 ::= (list_40 seq_39)?

    opt_41 ::= expList?

    grp_42 ::= assignment
              | procedureCall
              | ifStatement
              | caseStatement
              | whileStatement
              | repeatStatement
              | forStatement

    opt_43 ::= grp_42?

    opt_44 ::= actualParameters?

    seq_45 ::= SEMI statement

    list_46 ::= (list_46 seq_45)?

    seq_47 ::= ELSIF expression THEN statementSequence

    list_48 ::= (list_48 seq_47)?

    seq_49 ::= ELSE statementSequence

    opt_50 ::= seq_49?

    grp_51 ::= PIPE case_

    list_52 ::= (list_52 grp_51)?

    seq_53 ::= caseLabelList COLON statementSequence

    opt_54 ::= seq_53?

    seq_55 ::= COMMA labelRange

    list_56 ::= (list_56 seq_55)?

    seq_57 ::= DOTDOT label

    opt_58 ::= seq_57?

    seq_59 ::= ELSIF expression DO statementSequence

    list_60 ::= (list_60 seq_59)?

    seq_61 ::= BY constExpression

    opt_62 ::= seq_61?

    opt_63 ::= formalParameters?

    seq_64 ::= BEGIN statementSequence

    opt_65 ::= seq_64?

    seq_66 ::= RETURN expression

    opt_67 ::= seq_66?

    seq_68 ::= constDeclaration SEMI

    list_69 ::= (list_69 seq_68)?

    seq_70 ::= CONST list_69

    opt_71 ::= seq_70?

    seq_72 ::= typeDeclaration SEMI

    list_73 ::= (list_73 seq_72)?

    seq_74 ::= TYPE list_73

    opt_75 ::= seq_74?

    seq_76 ::= variableDeclaration SEMI

    list_77 ::= (list_77 seq_76)?

    seq_78 ::= VAR list_77

    opt_79 ::= seq_78?

    seq_80 ::= procedureDeclaration SEMI

    list_81 ::= (list_81 seq_80)?

    seq_82 ::= SEMI fPSection

    list_83 ::= (list_83 seq_82)?

    seq_84 ::= fPSection list_83

    opt_85 ::= seq_84?

    seq_86 ::= COLON qualident

    opt_87 ::= seq_86?

    opt_88 ::= VAR?

    seq_89 ::= COMMA ident

    list_90 ::= (list_90 seq_89)?

    seq_91 ::= ARRAY OF

    list_92 ::= (list_92 seq_91)?

    opt_93 ::= importList?

    seq_94 ::= BEGIN statementSequence

    opt_95 ::= seq_94?

    seq_96 ::= COMMA import_

    list_97 ::= (list_97 seq_96)?

    seq_98 ::= COLONEQ ident

    opt_99 ::= seq_98?
%End
