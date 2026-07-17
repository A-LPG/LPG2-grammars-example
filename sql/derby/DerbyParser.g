-- Derby Parser (LPG) — Wave D curated subset
%Options la=2
%Options fp=DerbyParser
%options package=lpg.grammars.sql.derby
%options template=dtParserTemplateF.gi
%options import_terminals=DerbyLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    sql_script
%End
%Rules

    sql_script ::= stmt_list
    stmt_list ::= stmt | stmt_list stmt
    stmt ::= select_stmt SEMI
           | insert_stmt SEMI
           | create_stmt SEMI
           | drop_stmt SEMI
           | update_stmt SEMI
           | delete_stmt SEMI
    select_stmt ::= SELECT select_list FROM table_ref opt_where
    select_list ::= STAR | expr_list
    expr_list ::= expr | expr_list COMMA expr
    table_ref ::= IDENTIFIER opt_alias
                | IDENTIFIER JOIN IDENTIFIER
                | IDENTIFIER LEFT JOIN IDENTIFIER
    opt_alias ::= $empty | AS IDENTIFIER | IDENTIFIER
    opt_where ::= $empty | WHERE expr
    insert_stmt ::= INSERT INTO IDENTIFIER opt_col_list VALUES LPAREN expr_list RPAREN
    opt_col_list ::= $empty | LPAREN id_list RPAREN
    id_list ::= IDENTIFIER | id_list COMMA IDENTIFIER
    create_stmt ::= CREATE TABLE IDENTIFIER LPAREN col_def_list RPAREN
    col_def_list ::= col_def | col_def_list COMMA col_def
    col_def ::= IDENTIFIER type_name opt_constraints
    type_name ::= INT | INTEGER | VARCHAR | IDENTIFIER
                | VARCHAR LPAREN NUMBER RPAREN
    opt_constraints ::= $empty | PRIMARY KEY | NOT NULLLITERAL
    drop_stmt ::= DROP TABLE IDENTIFIER
    update_stmt ::= UPDATE IDENTIFIER SET assign_list opt_where
    assign_list ::= assign | assign_list COMMA assign
    assign ::= IDENTIFIER EQ expr
    delete_stmt ::= DELETE FROM IDENTIFIER opt_where
    expr ::= primary
           | expr PLUS primary
           | expr MINUS primary
           | expr STAR primary
           | expr SLASH primary
           | expr EQ primary
           | expr LT primary
           | expr GT primary
           | expr AND primary
           | expr OR primary
    primary ::= NUMBER | STRING | IDENTIFIER | NULLLITERAL
              | LPAREN expr RPAREN

%End
