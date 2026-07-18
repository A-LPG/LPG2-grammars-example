-- AUTO-GENERATED from antlr/grammars-v4 kquery by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=KqueryParser
%options package=lpg.grammars.kquery
%options template=dtParserTemplateF.gi
%options import_terminals=KqueryLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    kqueryExpression
%End

%Rules
    kqueryExpression ::= queryStatements

    queryStatements ::= list_1

    ktranslationUnit ::= arrayDeclaration
           | queryCommand

    queryCommand ::= LPAREN Query evalExprList queryExpr RPAREN

    queryExpr ::= expression opt_4

    evalExprList ::= LBRACKET expressionList RBRACKET

    evalArrayList ::= LBRACKET identifierList RBRACKET

    expressionList ::= list_5

    identifierList ::= list_6

    arrayDeclaration ::= Array arrName LBRACKET numArrayElements RBRACKET COLON domain ARROW rangeLimit EQ arrayInitializer

    numArrayElements ::= NUMBER

    arrayInitializer ::= Symbolic
           | LBRACKET numberList RBRACKET

    expression ::= varName
           | varName COLON expression
           | LPAREN widthOrSizeExpr number RPAREN
           | LPAREN arithmeticExpr widthOrSizeExpr leftExpr rightExpr RPAREN
           | LPAREN notExpr LBRACKET widthOrSizeExpr RBRACKET expression RPAREN
           | LPAREN bitwiseExpr widthOrSizeExpr leftExpr rightExpr RPAREN
           | LPAREN comparisonExpr opt_7 leftExpr rightExpr RPAREN
           | LPAREN concatExpr opt_8 leftExpr rightExpr RPAREN
           | LPAREN arrExtractExpr widthOrSizeExpr number expression RPAREN
           | LPAREN bitExtractExpr widthOrSizeExpr expression RPAREN
           | LPAREN genericBitRead widthOrSizeExpr expression opt_9 RPAREN
           | LPAREN selectExpr widthOrSizeExpr leftExpr rightExpr expression RPAREN
           | LPAREN exprNegation opt_10 expression RPAREN
           | version
           | number

    genericBitRead ::= READ
           | READLSB
           | READMSB

    bitExtractExpr ::= ZEXT
           | SEXT

    version ::= varName opt_12
           | LBRACKET opt_13 RBRACKET ATR version

    notExpr ::= NOT

    concatExpr ::= CONCAT

    exprNegation ::= NEGETION

    selectExpr ::= SELECT

    arrExtractExpr ::= EXTRACT

    varName ::= IDENTIFIER

    leftExpr ::= expression

    rightExpr ::= expression

    updateList ::= expression EQ expression list_15

    bitwiseExpr ::= BITWISEAND
           | BITWISEOR
           | BITWISEXOR
           | SHL
           | LSHR
           | ASHR

    comparisonExpr ::= EQ
           | NEQ
           | ULT
           | UGT
           | ULE
           | UGE
           | SLT
           | SLE
           | SGT
           | SGE

    arithmeticExpr ::= ADD
           | SUB
           | MUL
           | UDIV
           | UREM
           | SDIV
           | SREM

    domain ::= widthOrSizeExpr

    rangeLimit ::= widthOrSizeExpr

    arrName ::= IDENTIFIER

    numberList ::= list_16

    number ::= boolnum
           | signedConstant
           | constant

    constant ::= NUMBER

    boolnum ::= TrueMatch
           | FalseMatch

    signedConstant ::= SignedConstant

    widthOrSizeExpr ::= WidthType

    list_1 ::= $empty
           | list_1 ktranslationUnit

    opt_2 ::= evalArrayList
           | $empty

    seq_3 ::= evalExprList opt_2

    opt_4 ::= seq_3
           | $empty

    list_5 ::= $empty
           | list_5 expression

    list_6 ::= $empty
           | list_6 IDENTIFIER

    opt_7 ::= widthOrSizeExpr
           | $empty

    opt_8 ::= widthOrSizeExpr
           | $empty

    opt_9 ::= version
           | $empty

    opt_10 ::= widthOrSizeExpr
           | $empty

    seq_11 ::= COLON expression

    opt_12 ::= seq_11
           | $empty

    opt_13 ::= updateList
           | $empty

    seq_14 ::= COMMA expression EQ expression

    list_15 ::= $empty
           | list_15 seq_14

    list_16 ::= number
           | list_16 number

%End
