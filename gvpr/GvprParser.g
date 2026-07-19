-- AUTO-GENERATED from antlr/grammars-v4 gvpr by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=GvprParser
%options package=lpg.grammars.gvpr
%options template=btParserTemplateF.gi
%options import_terminals=GvprLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End


%Define
    $ast_class /.Object./
    $ast_type /.Object./
%End

%Start
    preds
%End

%Rules
    preds ::= list_1

    pred ::= BEGIN opt_3
           | BEG_G opt_5
           | N opt_7 opt_9
           | E opt_11 opt_13
           | END_G opt_15
           | END opt_17

    program ::= opt_18 opt_19

    action_list ::= list_20

    action_ ::= label COLON opt_21

    statement_list ::= statement list_24 opt_25

    statement ::= LBRACE opt_26 RBRACE
           | opt_27 declare dcl_list
           | opt_28 declare fdcl_item
           | expr
           | IF LPAREN expr RPAREN statement opt_31
           | FOR LPAREN variable RPAREN statement
           | FOR LPAREN opt_32 SEMI opt_33 SEMI opt_34 RPAREN statement
           | FORR LPAREN variable RPAREN statement
           | UNSET LPAREN ID RPAREN
           | UNSET LPAREN ID COMMA expr RPAREN
           | WHILE LPAREN expr RPAREN statement
           | SWITCH LPAREN expr RPAREN LBRACE switch_list RBRACE
           | BREAK opt_35
           | CONTINUE opt_36
           | RETURN opt_37

    switch_list ::= $empty
           | switch_list switch_item

    switch_item ::= case_list opt_38

    case_list ::= case_item
           | case_list case_item

    case_item ::= CASE constant COLON
           | DEFAULT COLON

    static ::= STATIC

    dcl_list ::= dcl_item list_40

    dcl_item ::= dcl_name opt_41 opt_42

    fdcl_item ::= dcl_name finitialize_

    dcl_name ::= ID

    name ::= ID

    else_ ::= ELSE statement

    expr ::= LPAREN expr RPAREN
           | LPAREN declare RPAREN expr
           | grp_43 variable
           | variable grp_44
           | grp_45
           | expr grp_46 expr
           | expr grp_47
           | expr grp_49 expr
           | expr grp_50 expr
           | expr grp_51 expr
           | expr AMP expr
           | expr CARET expr
           | expr PIPE expr
           | expr AND expr
           | expr OR expr
           | expr QUESTION expr COLON expr
           | expr COMMA expr
           | array_ LBRACKET args RBRACKET
           | function LPAREN args RPAREN
           | GSUB LPAREN args RPAREN
           | SUB LPAREN args RPAREN
           | SUBSTR LPAREN args RPAREN
           | splitop LPAREN expr COMMA ID RPAREN
           | splitop LPAREN expr COMMA ID COMMA expr RPAREN
           | EXIT LPAREN expr RPAREN
           | RAND LPAREN RPAREN
           | SRAND LPAREN RPAREN
           | SRAND LPAREN expr RPAREN
           | PROCEDURE LPAREN args RPAREN
           | print_ LPAREN args RPAREN
           | scan LPAREN args RPAREN
           | variable opt_52
           | constant

    splitop ::= SPLIT
           | TOKENS

    constant ::= IntegerConstant
           | FloatingConstant
           | CharacterConstant
           | StringLit

    print_ ::= XPRINT
           | PRINTF
           | QUERY
           | SPRINTF

    scan ::= SCANF
           | SSCANF

    variable ::= grp_53 opt_54 opt_55

    array_ ::= ID

    array ::= LBRACKET RBRACKET
           | LBRACKET declare RBRACKET

    index ::= LBRACKET expr RBRACKET

    args ::= arg_list

    arg_list ::= expr
           | arg_list COMMA expr

    formals ::= declare
           | formal_list

    formal_list ::= formal_item
           | formal_list COMMA formal_item

    formal_item ::= declare name

    members ::= list_58

    member ::= DOT ID

    assign ::= AEQ expr
           | APEQ expr
           | AMEQ expr
           | ASEQ expr
           | ASLEQ expr

    initialize_ ::= assign

    finitialize_ ::= LPAREN formals RPAREN LBRACE opt_59 RBRACE

    label ::= ID

    declare ::= grp_60 opt_61

    function ::= ID

    list_1 ::= $empty | list_1 pred

    seq_2 ::= LBRACE program RBRACE

    opt_3 ::= seq_2 | $empty

    seq_4 ::= LBRACE program RBRACE

    opt_5 ::= seq_4 | $empty

    seq_6 ::= LBRACKET program RBRACKET

    opt_7 ::= seq_6 | $empty

    seq_8 ::= LBRACE program RBRACE

    opt_9 ::= seq_8 | $empty

    seq_10 ::= LBRACKET program RBRACKET

    opt_11 ::= seq_10 | $empty

    seq_12 ::= LBRACE program RBRACE

    opt_13 ::= seq_12 | $empty

    seq_14 ::= LBRACE program RBRACE

    opt_15 ::= seq_14 | $empty

    seq_16 ::= LBRACE program RBRACE

    opt_17 ::= seq_16 | $empty

    opt_18 ::= statement_list | $empty

    opt_19 ::= action_list | $empty

    list_20 ::= action_ | list_20 action_

    opt_21 ::= statement_list | $empty

    grp_23 ::= SEMI

    grp_22 ::= grp_23 statement

    list_24 ::= $empty | list_24 grp_22

    opt_25 ::= SEMI | $empty

    opt_26 ::= statement_list | $empty

    opt_27 ::= static | $empty

    opt_28 ::= static | $empty

    opt_29 ::= SEMI | $empty

    seq_30 ::= opt_29 else_

    opt_31 ::= seq_30 | $empty

    opt_32 ::= expr | $empty

    opt_33 ::= expr | $empty

    opt_34 ::= expr | $empty

    opt_35 ::= expr | $empty

    opt_36 ::= expr | $empty

    opt_37 ::= expr | $empty

    opt_38 ::= statement_list | $empty

    seq_39 ::= COMMA dcl_item

    list_40 ::= $empty | list_40 seq_39

    opt_41 ::= array | $empty

    opt_42 ::= initialize_ | $empty

    grp_43 ::= INC | DEC

    grp_44 ::= INC | DEC

    grp_45 ::= BANG expr | HASH ID | TILDE expr | MINUS expr | PLUS expr | AMP variable

    grp_46 ::= STAR | SLASH | PERCENT

    grp_48 ::= PLUS | MINUS

    grp_47 ::= grp_48 expr | IN_OP ID

    grp_49 ::= LSH | RSH

    grp_50 ::= LT | GT | LE | GE

    grp_51 ::= EQ | NE

    opt_52 ::= assign | $empty

    grp_53 ::= ID | DOLLAR

    opt_54 ::= index | $empty

    opt_55 ::= members | $empty

    grp_57 ::= ID | SPLIT

    grp_56 ::= DOT grp_57

    list_58 ::= grp_56 | list_58 grp_56

    opt_59 ::= statement_list | $empty

    grp_60 ::= CHAR | DOUBLE | FLOAT | INT | LONG | UNSIGNED | VOID | STRING | ID

    opt_61 ::= STAR | $empty

%End
