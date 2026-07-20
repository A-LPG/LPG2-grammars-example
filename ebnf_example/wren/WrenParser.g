-- AUTO-GENERATED from antlr/grammars-v4 wren by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=WrenParser
%options package=lpg.grammars.wren
%options template=dtParserTemplateF.gi
%options import_terminals=WrenLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    script
%End

%Rules
    script ::= list_1

    fileAtom ::= classDefinition
                | function
                | importModule
                | statement
                | block

    assignment ::= expression assignOp grp_3

    varDecl ::= VAR_T id varDeclTail

    varDeclTail ::= (assignOp grp_3)?

    assignOp ::= ASSIGN
                | ADD_ASSIGN
                | SUB_ASSIGN
                | MUL_ASSIGN
                | DIV_ASSIGN
                | AND_ASSIGN
                | OR_ASSIGN
                | XOR_ASSIGN
                | MOD_ASSIGN
                | LSHIFT_ASSIGN
                | RSHIFT_ASSIGN
                | URSHIFT_ASSIGN

    ifSt ::= ifCond statement list_5 opt_6

    ifCond ::= IF_T LPAREN expression RPAREN

    elseIf ::= ELSE_T ifCond statement

    elseSt ::= ELSE_T statement

    whileSt ::= WHILE_T LPAREN grp_7 RPAREN statement

    forSt ::= FOR_T LPAREN id IN expression RPAREN statement

    statement ::= expression
                 | assignment
                 | varDecl
                 | ifSt
                 | whileSt
                 | forSt
                 | block
                 | returnSt

    lambdaParameters ::= BITOR seq_10 BITOR

    block ::= LBRACE opt_11 list_12 RBRACE

    returnSt ::= RETURN_T expression

    classDefinition ::= opt_13 opt_14 CLASS_T id opt_15 LBRACE classBody RBRACE

    inheritance ::= IS id

    attribute ::= simpleAttribute
                 | groupAttribute

    attributes ::= list_16

    attributeValue ::= id opt_18

    simpleAttribute ::= HASH opt_19 attributeValue

    groupAttribute ::= HASH opt_20 id LPAREN attributeValue list_22 RPAREN

    classBody ::= list_26

    classBodyTpe ::= FOREIGN_T
                    | STATIC_T
                    | STATIC_T FOREIGN_T
                    | FOREIGN_T STATIC_T

    classStatement ::= function
                      | classOpGetter
                      | classSetter
                      | classSubscriptGet
                      | classSubscriptSet
                      | classOpSetter
                      | classConstructor

    classConstructor ::= CONSTRUCT id arguments block

    operatorGetter ::= SUB
                      | TILDE
                      | BANG
                      | id

    operatorSetter ::= SUB
                      | MUL
                      | DIV
                      | MOD
                      | ADD
                      | ELLIPSIS_OUT
                      | ELLIPSIS_IN
                      | LSHIFT
                      | RSHIFT
                      | BITAND
                      | CARET
                      | BITOR
                      | GT
                      | LT
                      | EQUAL
                      | LE
                      | GE
                      | NOTEQUAL
                      | IS

    classOpGetter ::= operatorGetter opt_27

    classOpSetter ::= operatorSetter oneArgument block

    oneArgument ::= LPAREN id RPAREN

    subscript ::= LBRACK enumeration RBRACK

    classSubscriptGet ::= subscript block

    classSubscriptSet ::= subscript ASSIGN oneArgument block

    classSetter ::= id assignmentSetter block

    assignmentSetter ::= ASSIGN oneArgument

    arguments ::= LPAREN opt_31 RPAREN

    function ::= id arguments opt_32

    importModule ::= IMPORT_T STRING opt_33

    importVariable ::= id opt_35

    importVariables ::= FOR_T importVariable seq_36

    call ::= id opt_38 list_40

    callInvoke ::= seq_42

    expression ::= expression compoundExpression
                  | BANG expression
                  | LPAREN expression RPAREN
                  | atomExpression

    compoundExpression ::= logic
                          | arithBit
                          | arithShift
                          | arithRange
                          | arithAdd
                          | arithMul
                          | DOT call
                          | IS expression
                          | elvis

    atomExpression ::= boolE
                      | charE
                      | stringE
                      | numE
                      | nullE
                      | listInit
                      | mapInit
                      | call
                      | range
                      | collectionElem
                      | BREAK_T
                      | CONTINUE_T
                      | importModule
                      | SUB atomExpression

    enumeration ::= seq_45

    pairEnumeration ::= seq_48

    range ::= rangeExpression grp_49 rangeExpression

    listInit ::= LBRACK opt_50 RBRACK

    mapInit ::= LBRACE opt_51 RBRACE

    elem ::= call
            | stringE

    collectionElem ::= elem listInit

    rangeExpression ::= call
                       | numE

    arithMul ::= grp_52 expression

    arithAdd ::= grp_53 grp_54

    arithRange ::= grp_55 grp_56

    arithShift ::= grp_57 grp_58

    arithBit ::= grp_59 grp_60

    logicOp ::= GT
               | LT
               | EQUAL
               | LE
               | GE
               | NOTEQUAL

    atomLogic ::= logicOp expression
                 | grp_61 expression

    andLogic ::= atomLogic list_63

    logic ::= andLogic list_65

    elvis ::= QUESTION expression COLON expression

    id ::= IDENTIFIER

    boolE ::= TRUE_T
             | FALSE_T

    charE ::= CHAR_LITERAL

    stringE ::= STRING
               | TEXT_BLOCK

    numE ::= DECIMAL_LITERAL
            | HEX_LITERAL
            | FLOAT_LITERAL
            | HEX_FLOAT_LITERAL

    nullE ::= NULL_T

    list_1 ::= fileAtom+

    list_4 ::= assignment+

    grp_3 ::= expression
             | list_4

    list_5 ::= (list_5 elseIf)?

    opt_6 ::= elseSt?

    grp_7 ::= expression
             | assignment

    seq_8 ::= COMMA id

    list_9 ::= (list_9 seq_8)?

    seq_10 ::= id list_9

    opt_11 ::= lambdaParameters?

    list_12 ::= (list_12 statement)?

    opt_13 ::= attributes?

    opt_14 ::= FOREIGN_T?

    opt_15 ::= inheritance?

    list_16 ::= attribute+

    seq_17 ::= ASSIGN atomExpression

    opt_18 ::= seq_17?

    opt_19 ::= BANG?

    opt_20 ::= BANG?

    seq_21 ::= COMMA attributeValue

    list_22 ::= (list_22 seq_21)?

    opt_23 ::= attributes?

    opt_24 ::= classBodyTpe?

    seq_25 ::= opt_23 opt_24 classStatement

    list_26 ::= (list_26 seq_25)?

    opt_27 ::= block?

    seq_28 ::= COMMA id

    list_29 ::= (list_29 seq_28)?

    seq_30 ::= id list_29

    opt_31 ::= seq_30?

    opt_32 ::= block?

    opt_33 ::= importVariables?

    seq_34 ::= AS id

    opt_35 ::= seq_34?

    seq_36 ::= COMMA importVariable

    grp_37 ::= callInvoke
              | block

    opt_38 ::= grp_37?

    seq_39 ::= DOT call

    list_40 ::= (list_40 seq_39)?

    opt_41 ::= enumeration?

    seq_42 ::= LPAREN opt_41 RPAREN

    seq_43 ::= COMMA expression

    list_44 ::= (list_44 seq_43)?

    seq_45 ::= expression list_44

    seq_46 ::= COMMA expression COLON expression

    list_47 ::= (list_47 seq_46)?

    seq_48 ::= expression COLON expression list_47

    grp_49 ::= ELLIPSIS_IN
              | ELLIPSIS_OUT

    opt_50 ::= enumeration?

    opt_51 ::= pairEnumeration?

    grp_52 ::= MUL
              | DIV
              | MOD

    grp_53 ::= SUB
              | ADD

    grp_54 ::= arithMul
              | expression

    grp_55 ::= ELLIPSIS_IN
              | ELLIPSIS_OUT

    grp_56 ::= arithAdd
              | expression

    grp_57 ::= LSHIFT
              | RSHIFT

    grp_58 ::= arithRange
              | expression

    grp_59 ::= BITAND
              | BITOR
              | CARET

    grp_60 ::= arithShift
              | expression

    grp_61 ::= AND
              | OR

    seq_62 ::= AND expression atomLogic

    list_63 ::= (list_63 seq_62)?

    seq_64 ::= OR expression andLogic

    list_65 ::= (list_65 seq_64)?
%End
