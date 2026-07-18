-- AUTO-GENERATED from antlr/grammars-v4 joss by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=JossParser
%options package=lpg.grammars.joss
%options template=dtParserTemplateF.gi
%options import_terminals=JossLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= list_1

    statement ::= direct DOT
           | indirect_ DOT
           | formCMD
           | assignment

    direct ::= cancelCMD
           | deleteCmdCMD
           | goCMD
           | arbitraryCMD

    indirect_ ::= STEPNUMBER indirectCMD

    indirectCMD ::= toCMD
           | doneCMD
           | stopCMD
           | demandCMD
           | arbitraryCMD

    arbitraryCMD ::= setCMD
           | doCMD
           | typeCMD
           | deleteValCMD
           | LINECMD
           | PAGECMD

    goCMD ::= GO

    cancelCMD ::= CANCEL

    deleteCmdCMD ::= DELETE delCmdSel

    delCmdSel ::= stepSel
           | partSel
           | formSel
           | delCmdAllSel

    delCmdAllSel ::= ALL
           | ALL delCmdAllType

    delCmdAllType ::= STEPS
           | PARTS
           | FORMS

    doneCMD ::= DONE

    stopCMD ::= STOP

    demandCMD ::= DEMAND variable

    toCMD ::= TO toSel

    toSel ::= stepSel
           | partSel

    setCMD ::= SET assignment

    doCMD ::= DO doSel
           | DO doSel conditional

    doSel ::= stepSel
           | partSel

    typeCMD ::= TYPE typeContent

    typeContent ::= typeForm
           | typeData
           | typeSel
           | typeSys

    typeSys ::= SIZE
           | TIME
           | USERS

    typeForm ::= varList IN formSel

    typeData ::= typeElem
           | typeElem COMMA typeData

    typeElem ::= SQUOTE STRING SQUOTE
           | variable

    typeSel ::= stepSel
           | partSel
           | formSel
           | typeAllSel

    typeAllSel ::= ALL
           | ALL typeAllType

    typeAllType ::= STEPS
           | PARTS
           | FORMS
           | VALUES

    deleteValCMD ::= varList
           | ALL VALUES

    formCMD ::= FORM PARTNUMBER COLON

    formContent ::= formObject
           | formObject formContent

    formObject ::= formPH
           | STRING

    formPH ::= sciNotation
           | fixedNotation

    sciNotation ::= DOTDOT dot

    dot ::= DOT
           | DOT dot

    fixedNotation ::= OP_41196 uScore OP_21032 uScore

    uScore ::= list_2

    stepSel ::= STEP STEPNUMBER

    partSel ::= PART PARTNUMBER

    formSel ::= FORM PARTNUMBER

    conditional ::= if_
           | for_

    if_ ::= IF boolExp

    boolExp ::= LPAREN boolExp RPAREN
           | LBRACKET boolExp RBRACKET
           | comparison
           | comparison boolOp boolExp

    boolOp ::= AND
           | OR

    comparison ::= mathExp boolComp mathExp

    boolComp ::= EQ
           | NOTEQ
           | LTEQ
           | FATARROW
           | LT
           | GT

    for_ ::= FOR range_

    range_ ::= variable EQ rangeExp

    rangeExp ::= rangeVal
           | rangeVal COMMA rangeExp

    rangeVal ::= mathExp LPAREN mathExp RPAREN rangeVal
           | mathExp

    mathExp ::= term
           | term ADDOP mathExp

    term ::= factor
           | factor MULOP term

    factor ::= LPAREN mathExp RPAREN
           | LBRACKET mathExp RBRACKET
           | value

    assignment ::= variable EQ mathExp

    value ::= NUMBER
           | variable
           | function_

    function_ ::= funcSqrt
           | funcLog
           | funcExp
           | funcSin
           | funcCos
           | funcIp
           | funcFp
           | funcDp
           | funcXp
           | funcSgn
           | funcMax
           | funcMin

    funcSqrt ::= SQRT_ mathExp RPAREN

    funcLog ::= LOG_ mathExp RPAREN

    funcExp ::= EXP_ mathExp RPAREN

    funcSin ::= SIN_ mathExp RPAREN

    funcCos ::= COS_ mathExp RPAREN

    funcIp ::= IP_ mathExp RPAREN

    funcFp ::= FP_ mathExp RPAREN

    funcDp ::= DP_ mathExp RPAREN

    funcXp ::= XP_ mathExp RPAREN

    funcSgn ::= SGN_ mathExp RPAREN

    funcMax ::= MAX_ mathExp COMMA argList RPAREN

    funcMin ::= MIN_ mathExp COMMA argList RPAREN

    argList ::= mathExp
           | mathExp COMMA argList

    variable ::= IDENTIFIER
           | IDENTIFIER LPAREN mathExp RPAREN

    varList ::= variable
           | variable COMMA varList

    list_1 ::= statement | list_1 statement

    list_2 ::= UNDERSCORE | list_2 UNDERSCORE

%End
