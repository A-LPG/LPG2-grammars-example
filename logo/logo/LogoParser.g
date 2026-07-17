-- LogoParser (LPG)
%Options la=2
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
    line_list ::= line_end | line_list line_end | line_list line
    line_end ::= line EOL | EOL
    line ::= cmds opt_comment
           | COMMENT
           | print_ opt_comment
           | procedureDeclaration

    opt_comment ::= $empty | COMMENT
    cmds ::= cmd | cmds cmd

    cmd ::= REPEAT expression block
          | FD expression | FORWARD expression
          | BK expression | BACKWARD expression
          | RT expression | RIGHT expression
          | LT expression | LEFT expression
          | CS | CLEARSCREEN
          | PU | PENUP
          | PD | PENDOWN
          | HT | HIDETURTLE
          | ST | SHOWTURTLE
          | HOME | STOP | LABEL
          | SETXY expression expression
          | MAKE STRINGLITERAL value
          | IF comparison block
          | FOR LBRACKET IDENTIFIER expression expression expression RBRACKET block
          | procedureInvocation

    procedureInvocation ::= IDENTIFIER opt_exprs
    opt_exprs ::= $empty | opt_exprs expression

    procedureDeclaration ::= TO IDENTIFIER opt_params opt_eol body_lines END
    opt_params ::= $empty | opt_params COLON IDENTIFIER
    opt_eol ::= $empty | EOL
    body_lines ::= line_end | body_lines line_end

    block ::= LBRACKET cmds RBRACKET
    comparison ::= expression compop expression
    compop ::= LT | GT | EQUAL

    print_ ::= PRINT value
             | PRINT quotedstring
    quotedstring ::= LBRACKET qbody RBRACKET
    qbody ::= $empty | qbody qitem
    qitem ::= NUMBER | IDENTIFIER | STRINGLITERAL | COLON | PLUS | MINUS | STAR | SLASH | LT | GT | EQUAL | COMMA

    value ::= STRINGLITERAL | expression | deref
    deref ::= COLON IDENTIFIER

    expression ::= multiplyingExpression | expression PLUS multiplyingExpression | expression MINUS multiplyingExpression
    multiplyingExpression ::= signExpression | multiplyingExpression STAR signExpression | multiplyingExpression SLASH signExpression
    signExpression ::= opt_signs atom
    opt_signs ::= $empty | opt_signs PLUS | opt_signs MINUS
    atom ::= NUMBER | deref | RANDOM expression

%End
