-- AUTO-GENERATED from antlr/grammars-v4 icon by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=IconParser
%options package=lpg.grammars.icon
%options template=dtParserTemplateF.gi
%options import_terminals=IconLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    start_
%End

%Rules
    start_ ::= prog
           | PROCEDURE IDENTIFIER LPAREN RPAREN END

    prog ::= declaration
           | seq_1

    endOfExpr ::= SEMI

    declaration ::= link_declaration
           | global_declaration
           | record_declaration
           | procedure_declaration

    link_declaration ::= LINK link_list

    link_list ::= file_name
           | file_name COMMA link_list

    file_name ::= identifier
           | string_literal

    global_declaration ::= GLOBAL identifier_list

    identifier_list ::= identifier
           | identifier_list COMMA identifier

    record_declaration ::= RECORD identifier LPAREN field_list_opt RPAREN

    field_list_opt ::= field_list

    field_list ::= field_name
           | field_list COMMA field_name

    field_name ::= identifier

    procedure_declaration ::= proc_header opt_2 opt_3 expression_sequence END

    proc_header ::= PROCEDURE identifier LPAREN opt_4 RPAREN

    parameter_list_opt ::= parameter_list

    parameter_list ::= identifier
           | seq_5
           | seq_6

    locals_opt ::= localz

    localz ::= local_specification_rule identifier_list
           | local_specification_rule identifier_list endOfExpr localz

    local_specification_rule ::= LOCAL
           | STATIC

    initial_opt ::= INITIAL expression endOfExpr

    expression_sequence ::= expression_opt
           | expression_sequence endOfExpr expression_opt

    expression_opt ::= expression

    expression ::= BREAK expression_opt
           | CREATE expression
           | RETURN expression_opt
           | SUSPEND expression_opt suspend_do_clause_opt
           | FAIL
           | NEXT
           | CASE expression OF LBRACE case_list RBRACE
           | IF expression THEN expression else_clause_opt
           | REPEAT expression
           | WHILE expression while_do_clause_opt
           | UNTIL expression until_do_clause_opt
           | EVERY expression every_do_clause_opt
           | expr1

    suspend_do_clause_opt ::= DO expression

    while_do_clause_opt ::= DO expression

    until_do_clause_opt ::= DO expression

    every_do_clause_opt ::= DO expression

    else_clause_opt ::= ELSE expression

    case_list ::= case_clause
           | case_list endOfExpr case_clause

    case_clause ::= expression COLON expression
           | DEFAULT COLON expression

    expr1 ::= expr1 AMP expr2
           | expr2

    expr2 ::= expr2 QUESTION expr3
           | expr3

    expr3 ::= expr4 COLONEQ expr3
           | expr4 OP_90335 expr3
           | expr4 RECEIVE expr3
           | expr4 OP_92107 expr3
           | expr4

    expr4 ::= expr4 TO expr5
           | expr4 TO expr5 BY expr5
           | expr5

    expr5 ::= expr5 PIPE expr6
           | expr6

    expr6 ::= expr6 LT expr7
           | expr6 LTEQ expr7
           | expr6 EQ expr7
           | expr6 GTEQ expr7
           | expr6 GT expr7
           | expr6 OP_18455 expr7
           | expr6 LSHIFT expr7
           | expr6 LSHIFTEQ expr7
           | expr6 EQEQ expr7
           | expr6 RSHIFTEQ expr7
           | expr6 RSHIFT expr7
           | expr6 OP_16620 expr7
           | expr6 EQEQEQ expr7
           | expr6 OP_36356 expr7
           | expr7

    expr7 ::= expr7 OROR expr8
           | expr7 OP_74775 expr8
           | expr8

    expr8 ::= expr8 PLUS expr9
           | expr8 MINUS expr9
           | expr8 PLUSPLUS expr9
           | expr8 MINUSMINUS expr9
           | expr9

    expr9 ::= expr9 STAR expr10
           | expr9 SLASH expr10
           | expr9 PERCENT expr10
           | expr9 STARSTAR expr10
           | expr10

    expr10 ::= expr11 CARET expr10
           | expr11

    expr11 ::= expr11 BACKSLASH expr12
           | expr11 AT expr12
           | expr11 BANG expr12
           | expr12

    expr12 ::= NOT expr12
           | PIPE expr12
           | BANG expr12
           | STAR expr12
           | PLUS expr12
           | MINUS expr12
           | DOT expr12
           | SLASH expr12
           | BACKSLASH expr12
           | EQ expr12
           | QUESTION expr12
           | TILDE expr12
           | AT expr12
           | CARET expr12
           | expr13

    expr13 ::= LPAREN expression_list RPAREN
           | LBRACE expression_sequence RBRACE
           | LBRACKET expression_list RBRACKET
           | expr13 DOT field_name
           | expr13 LPAREN expression_list RPAREN
           | expr13 LBRACE expression_list RBRACE
           | expr13 LBRACKET subscript_list RBRACKET
           | identifier
           | keyword
           | literal

    expression_list ::= expression_opt
           | expression_list COMMA expression_opt

    subscript_list ::= subscript_
           | subscript_list COMMA subscript_

    subscript_ ::= expression
           | expression COLON expression
           | expression OP_38162 expression
           | expression OP_16932 expression

    keyword ::= AMP identifier

    identifier ::= IDENTIFIER

    literal ::= string_literal
           | integer_literal
           | real_literal

    string_literal ::= STRING

    real_literal ::= REAL_LITERAL

    integer_literal ::= INTEGER_LITERAL

    seq_1 ::= declaration prog

    opt_2 ::= locals_opt | $empty

    opt_3 ::= initial_opt | $empty

    opt_4 ::= parameter_list_opt | $empty

    seq_5 ::= identifier LBRACKET RBRACKET

    seq_6 ::= identifier COMMA parameter_list

%End
