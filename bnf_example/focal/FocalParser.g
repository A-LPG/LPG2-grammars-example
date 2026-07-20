-- FocalParser (LPG)
%Options la=2
%Options fp=FocalParser
%options package=lpg.grammars.focal
%options template=dtParserTemplateF.gi
%options import_terminals=FocalLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    prog
%End
%Rules

    prog ::= statement_list
    statement_list ::= statement | statement_list statement
    statement ::= linenum command
                | COMMENT

    linenum ::= INTEGER DOT INTEGER
    grpnum ::= INTEGER

    command ::= ask | do_ | for_ | set_ | quit | goto_ | if_ | type_ | return_ | write_

    ask ::= ask_kw askpair ask_tail
    ask_kw ::= ASK | A_CMD
    ask_tail ::= $empty | ask_tail COMMA askpair
    askpair ::= STRING_LITERAL COMMA var_list
    var_list ::= IDENTIFIER | var_list COMMA IDENTIFIER

    do_ ::= do_kw do_target
    do_kw ::= DO | D_CMD
    do_target ::= ALL | grpnum | linenum

    for_ ::= for_kw IDENTIFIER EQUAL expression COMMA expression opt_for3 SEMI command
    for_kw ::= FOR | F_CMD
    opt_for3 ::= $empty | COMMA expression

    quit ::= QUIT
    set_ ::= set_kw IDENTIFIER EQUAL expression opt_semi_cmd
    set_kw ::= SET | S_CMD
    opt_semi_cmd ::= $empty | SEMI command

    goto_ ::= goto_kw opt_linenum
    goto_kw ::= GOTO | G_CMD
    opt_linenum ::= $empty | linenum

    if_ ::= IF expression linenum COMMA linenum COMMA linenum opt_semi_cmd
    type_ ::= type_kw type_list opt_semi_cmd
    type_kw ::= TYPE | T_CMD
    type_list ::= typeexpression | type_list COMMA typeexpression
    typeexpression ::= expression | bangs | hashes | STRING_LITERAL | pct_fmt
    bangs ::= BANG | bangs BANG
    hashes ::= HASH | hashes HASH
    pct_fmt ::= PERCENT INTEGER DOT INTEGER

    return_ ::= RETURN
    write_ ::= WRITE opt_write_target
    opt_write_target ::= $empty | grpnum | linenum

    expression ::= primary | expression PLUSMIN primary
    primary ::= term | primary MULOP term
    term ::= LPAREN expression RPAREN
           | LBRACKET expression RBRACKET
           | LT expression GT
           | number
           | IDENTIFIER
           | IDENTIFIER LPAREN expression RPAREN
           | builtin LPAREN expression RPAREN

    builtin ::= FSIN | FCOS | FEXP | FLOG | FATN | FSQT | FABS | FSGN | FITR | FRAN

    number ::= signed_
           | signed_ DOT
           | DOT signed_
           | signed_ DOT signed_
    signed_ ::= opt_pm INTEGER
    opt_pm ::= $empty | PLUSMIN

%End
