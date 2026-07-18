-- AUTO-GENERATED from antlr/grammars-v4 awk by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AwkParser
%options package=lpg.grammars.awk
%options template=dtParserTemplateF.gi
%options import_terminals=AwkLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= item_list opt_1

    item_list ::= list_3

    item ::= action_
           | pattern action_
           | normal_pattern
           | FUNCTION func_name LPAREN param_list_opt RPAREN newline_opt action_

    param_list_opt ::= opt_4

    param_list ::= name list_6

    pattern ::= normal_pattern
           | special_pattern

    normal_pattern ::= expr opt_8

    special_pattern ::= BEGIN
           | END

    action_ ::= LBRACE newline_opt opt_10 RBRACE

    terminator ::= terminator NEWLINE
           | SEMI
           | NEWLINE

    terminated_statement_list ::= list_11

    unterminated_statement_list ::= list_12 unterminated_statement

    terminated_statement ::= action_ newline_opt
           | IF LPAREN expr RPAREN newline_opt terminated_statement opt_14
           | WHILE LPAREN expr RPAREN newline_opt terminated_statement
           | FOR LPAREN simple_statement_opt SEMI expr_opt SEMI simple_statement_opt RPAREN newline_opt terminated_statement
           | FOR LPAREN name IN name RPAREN newline_opt terminated_statement
           | SEMI newline_opt
           | terminatable_statement grp_15 newline_opt

    unterminated_statement ::= terminatable_statement
           | IF LPAREN expr RPAREN newline_opt unterminated_statement
           | IF LPAREN expr RPAREN newline_opt terminated_statement ELSE newline_opt unterminated_statement
           | WHILE LPAREN expr RPAREN newline_opt unterminated_statement
           | FOR LPAREN simple_statement_opt SEMI expr_opt SEMI simple_statement_opt RPAREN newline_opt unterminated_statement
           | FOR LPAREN name IN name RPAREN newline_opt unterminated_statement

    terminatable_statement ::= simple_statement
           | BREAK
           | CONTINUE
           | NEXT
           | EXIT expr_opt
           | RETURN expr_opt
           | DO newline_opt terminated_statement WHILE LPAREN expr RPAREN

    simple_statement_opt ::= opt_16

    simple_statement ::= DELETE name LBRACKET expr_list RBRACKET
           | expr
           | print_statement

    print_statement ::= simple_print_statement opt_17

    simple_print_statement ::= PRINT print_expr_list_opt
           | PRINT LPAREN multiple_expr_list RPAREN
           | PRINTF print_expr_list
           | PRINTF LPAREN multiple_expr_list RPAREN

    output_redirection ::= GT expr
           | APPEND expr
           | PIPE expr

    expr_list_opt ::= opt_18

    expr_list ::= expr list_20

    multiple_expr_list ::= expr list_22

    expr_opt ::= opt_23

    expr ::= unary_expr
           | non_unary_expr

    unary_expr ::= grp_24 expr
           | unary_expr CARET expr
           | unary_expr grp_25 expr
           | unary_expr grp_26 expr
           | unary_expr non_unary_expr
           | unary_expr grp_27 expr
           | unary_expr grp_28 expr
           | unary_expr IN name
           | unary_expr AND newline_opt expr
           | unary_expr OR newline_opt expr
           | unary_expr QUESTION expr COLON expr
           | unary_expr PIPE simple_get

    non_unary_expr ::= LPAREN expr RPAREN
           | BANG expr
           | non_unary_expr CARET expr
           | non_unary_expr grp_29 expr
           | non_unary_expr grp_30 expr
           | non_unary_expr non_unary_expr
           | non_unary_expr grp_31 expr
           | non_unary_expr grp_32 expr
           | non_unary_expr IN name
           | LPAREN multiple_expr_list RPAREN IN name
           | non_unary_expr AND newline_opt expr
           | non_unary_expr OR newline_opt expr
           | non_unary_expr QUESTION expr COLON expr
           | number
           | string
           | ere
           | lvalue opt_34
           | grp_35 lvalue
           | lvalue grp_36 expr
           | func_name LPAREN expr_list_opt RPAREN
           | builtin_func_name opt_38
           | simple_get opt_40
           | non_unary_expr PIPE simple_get

    print_expr_list_opt ::= opt_41

    print_expr_list ::= print_expr list_43

    print_expr ::= unary_print_expr
           | non_unary_print_expr

    unary_print_expr ::= grp_44 print_expr
           | unary_print_expr CARET print_expr
           | unary_print_expr grp_45 print_expr
           | unary_print_expr grp_46 print_expr
           | unary_print_expr non_unary_print_expr
           | unary_print_expr grp_47 print_expr
           | unary_print_expr IN name
           | unary_print_expr AND newline_opt print_expr
           | unary_print_expr OR newline_opt print_expr
           | unary_print_expr QUESTION print_expr COLON print_expr

    non_unary_print_expr ::= LPAREN expr RPAREN
           | BANG print_expr
           | non_unary_print_expr CARET print_expr
           | non_unary_print_expr grp_48 print_expr
           | non_unary_print_expr grp_49 print_expr
           | non_unary_print_expr non_unary_print_expr
           | non_unary_print_expr grp_50 print_expr
           | non_unary_print_expr IN name
           | LPAREN multiple_expr_list RPAREN IN name
           | non_unary_print_expr AND newline_opt print_expr
           | non_unary_print_expr OR newline_opt print_expr
           | non_unary_print_expr QUESTION print_expr COLON print_expr
           | number
           | string
           | ere
           | lvalue opt_52
           | grp_53 lvalue
           | lvalue grp_54 print_expr
           | func_name LPAREN expr_list_opt RPAREN
           | builtin_func_name opt_56

    lvalue ::= name opt_58
           | DOLLAR expr

    simple_get ::= GETLINE opt_59

    newline_opt ::= list_60

    number ::= NUMBER

    string ::= STRING

    ere ::= ERE

    builtin_func_name ::= BUILTIN_FUNC_NAME

    func_name ::= WORD

    name ::= WORD

    opt_1 ::= item
           | $empty

    seq_2 ::= item terminator

    list_3 ::= $empty
           | list_3 seq_2

    opt_4 ::= param_list
           | $empty

    seq_5 ::= COMMA name

    list_6 ::= $empty
           | list_6 seq_5

    seq_7 ::= COMMA newline_opt expr

    opt_8 ::= seq_7
           | $empty

    grp_9 ::= terminated_statement_list
           | unterminated_statement_list

    opt_10 ::= grp_9
           | $empty

    list_11 ::= terminated_statement
           | list_11 terminated_statement

    list_12 ::= $empty
           | list_12 terminated_statement

    seq_13 ::= ELSE newline_opt terminated_statement

    opt_14 ::= seq_13
           | $empty

    grp_15 ::= NEWLINE
           | SEMI

    opt_16 ::= simple_statement
           | $empty

    opt_17 ::= output_redirection
           | $empty

    opt_18 ::= expr_list
           | $empty

    seq_19 ::= COMMA newline_opt expr

    list_20 ::= $empty
           | list_20 seq_19

    seq_21 ::= COMMA newline_opt expr

    list_22 ::= seq_21
           | list_22 seq_21

    opt_23 ::= expr
           | $empty

    grp_24 ::= PLUS
           | MINUS

    grp_25 ::= STAR
           | SLASH
           | PERCENT

    grp_26 ::= PLUS
           | MINUS

    grp_27 ::= LT
           | GT
           | LE
           | NE
           | EQ
           | GE

    grp_28 ::= TILDE
           | NO_MATCH

    grp_29 ::= STAR
           | SLASH
           | PERCENT

    grp_30 ::= PLUS
           | MINUS

    grp_31 ::= LT
           | GT
           | LE
           | NE
           | EQ
           | GE

    grp_32 ::= TILDE
           | NO_MATCH

    grp_33 ::= INCR
           | DECR

    opt_34 ::= grp_33
           | $empty

    grp_35 ::= INCR
           | DECR

    grp_36 ::= POW_ASSIGN
           | MOD_ASSIGN
           | MUL_ASSIGN
           | DIV_ASSIGN
           | ADD_ASSIGN
           | SUB_ASSIGN
           | EQ

    seq_37 ::= LPAREN expr_list_opt RPAREN

    opt_38 ::= seq_37
           | $empty

    seq_39 ::= LT expr

    opt_40 ::= seq_39
           | $empty

    opt_41 ::= print_expr_list
           | $empty

    seq_42 ::= COMMA newline_opt print_expr

    list_43 ::= $empty
           | list_43 seq_42

    grp_44 ::= PLUS
           | MINUS

    grp_45 ::= STAR
           | SLASH
           | PERCENT

    grp_46 ::= PLUS
           | MINUS

    grp_47 ::= TILDE
           | NO_MATCH

    grp_48 ::= STAR
           | SLASH
           | PERCENT

    grp_49 ::= PLUS
           | MINUS

    grp_50 ::= TILDE
           | NO_MATCH

    grp_51 ::= INCR
           | DECR

    opt_52 ::= grp_51
           | $empty

    grp_53 ::= INCR
           | DECR

    grp_54 ::= POW_ASSIGN
           | MOD_ASSIGN
           | MUL_ASSIGN
           | DIV_ASSIGN
           | ADD_ASSIGN
           | SUB_ASSIGN
           | EQ

    seq_55 ::= LPAREN expr_list_opt RPAREN

    opt_56 ::= seq_55
           | $empty

    seq_57 ::= LBRACKET expr_list RBRACKET

    opt_58 ::= seq_57
           | $empty

    opt_59 ::= lvalue
           | $empty

    list_60 ::= $empty
           | list_60 NEWLINE

%End
