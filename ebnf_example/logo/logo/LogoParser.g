-- Logo Parser (LPG) — structural port of grammars-v4 logo/logo/logo.g4
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Nonterminals mirror g4: prog/line/cmd/repeat_/fd/bk/rt/lt/cs/pu/pd/ht/st/
-- home/label/setxy/make/procedureInvocation/ife/stop/fore/...

%Options la=2,ebnf
%Options fp=LogoParser
%options package=lpg.grammars.logo.logo
%options template=dtParserTemplateF.gi
%options import_terminals=LogoLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    prog
%End
%Rules
    prog ::= line_list

    line_list ::= line_end
                 | line_list line_end
                 | line_list line

    line_end ::= line EOL
                | EOL

    line ::= cmds opt_comment
            | comment
            | print_ opt_comment
            | procedureDeclaration

    opt_comment ::= comment?

    comment ::= COMMENT

    cmds ::= cmd+

    cmd ::= repeat_
           | fd
           | bk
           | rt
           | lt
           | cs
           | pu
           | pd
           | ht
           | st
           | home
           | label
           | setxy
           | make
           | procedureInvocation
           | ife
           | stop
           | fore

    procedureInvocation ::= name opt_exprs

    opt_exprs ::= (opt_exprs expression)?

    procedureDeclaration ::= TO name opt_params opt_eol body_lines END

    opt_params ::= (opt_params COLON name)?

    opt_eol ::= EOL?

    body_lines ::= line_end+

    name ::= IDENTIFIER

    repeat_ ::= REPEAT expression block

    block ::= LBRACKET cmds RBRACKET

    ife ::= IF comparison block

    comparison ::= expression comparisonOperator expression

    comparisonOperator ::= LT
                          | GT
                          | EQUAL

    make ::= MAKE STRINGLITERAL value

    print_ ::= PRINT value
              | PRINT quotedstring

    quotedstring ::= LBRACKET qbody RBRACKET

    qbody ::= (qbody qitem)?

    qitem ::= NUMBER
             | IDENTIFIER
             | STRINGLITERAL
             | COLON
             | PLUS
             | MINUS
             | STAR
             | SLASH
             | LT
             | GT
             | EQUAL
             | COMMA

    value ::= STRINGLITERAL
             | expression
             | deref

    deref ::= COLON name

    expression ::= multiplyingExpression
                  | expression PLUS multiplyingExpression
                  | expression MINUS multiplyingExpression

    multiplyingExpression ::= signExpression
                             | multiplyingExpression STAR signExpression
                             | multiplyingExpression SLASH signExpression

    signExpression ::= opt_signs atom

    opt_signs ::= $empty
                 | opt_signs PLUS
                 | opt_signs MINUS

    atom ::= number
            | deref
            | func_

    number ::= NUMBER

    func_ ::= random

    random ::= RANDOM expression

    fd ::= FD expression
          | FORWARD expression

    bk ::= BK expression
          | BACKWARD expression

    rt ::= RT expression
          | RIGHT expression

    lt ::= LT expression
          | LEFT expression

    cs ::= CS
          | CLEARSCREEN

    pu ::= PU
          | PENUP

    pd ::= PD
          | PENDOWN

    ht ::= HT
          | HIDETURTLE

    st ::= ST
          | SHOWTURTLE

    home ::= HOME

    stop ::= STOP

    label ::= LABEL

    setxy ::= SETXY expression expression

    fore ::= FOR LBRACKET name expression expression expression RBRACKET block
%End
