-- Teradata SQL language_subset (LPG)
-- Full antlr2lpg port is in SqlTeradataParser.g.full (~8700 lines) but LPG table
-- generation aborts (partition.h SHRT_MAX) under ~430k S/R conflicts.
-- This curated subset covers SELECT / INSERT / CREATE VIEW for harness samples.
-- Not nested token-stream soup. quality: language_subset.

%Options la=3
%Options fp=SqlTeradataParser
%options package=lpg.grammars.sql.teradata
%options template=dtParserTemplateF.gi
%options import_terminals=SqlTeradataLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    sql_script
%End

%Rules
    sql_script ::= unit_stat list_more opt_semi

    list_more ::= $empty
           | list_more SEMI unit_stat

    opt_semi ::= SEMI
           | $empty

    unit_stat ::= select_stat
           | insert_stat
           | create_view_stat

    select_stat ::= SELECT select_list FROM table_ref opt_where opt_order

    select_list ::= select_item
           | select_list COMMA select_item

    select_item ::= STAR
           | expr opt_as_alias

    opt_as_alias ::= AS id_
           | id_
           | $empty

    table_ref ::= table_name opt_alias

    opt_alias ::= id_
           | AS id_
           | $empty

    table_name ::= id_
           | id_ DOT id_

    opt_where ::= WHERE expr
           | $empty

    opt_order ::= ORDER BY order_item list_order
           | $empty

    list_order ::= $empty
           | list_order COMMA order_item

    order_item ::= expr

    insert_stat ::= INSERT INTO table_name opt_col_list VALUES LPAREN expr_list RPAREN

    opt_col_list ::= LPAREN id_list RPAREN
           | $empty

    id_list ::= id_
           | id_list COMMA id_

    expr_list ::= expr
           | expr_list COMMA expr

    create_view_stat ::= CREATE VIEW table_name AS select_stat

    expr ::= primary
           | expr EQ primary
           | expr NOTEQ primary
           | expr LT primary
           | expr GT primary
           | expr LTEQ primary
           | expr GTEQ primary
           | expr PLUS primary
           | expr MINUS primary
           | expr STAR primary
           | expr SLASH primary

    primary ::= id_
           | id_ DOT id_
           | NUMBER
           | STRING
           | STAR
           | LPAREN expr RPAREN
           | primary IS NOT NULL
           | primary IS NULL

    -- Soft keywords used as column/table names in curated samples
    id_ ::= IDENTIFIER
           | NAME
           | VALUE
           | TYPE
           | DATE
           | TIME
           | ROLE
           | PATH
