-- PL/SQL language_subset (LPG)
-- Full antlr2lpg port is in SqlPlsqlParser.g.full (~14700 lines) but LPG table
-- generation aborts on Linux (fortify buffer overflow) under ~193k R/R and
-- ~96k S/R conflicts. This curated subset covers SELECT / INSERT / DELETE for
-- harness samples. Not nested token-stream soup. quality: language_subset.

%Options la=3,backtrack
%Options fp=SqlPlsqlParser
%options package=lpg.grammars.sql.plsql
%options template=btParserTemplateF.gi
%options import_terminals=SqlPlsqlLexer.gi
%options automatic_ast=none
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
           | list_more SEMICOLON unit_stat

    opt_semi ::= SEMICOLON
           | $empty

    unit_stat ::= select_stat
           | insert_stat
           | delete_stat

    select_stat ::= SELECT select_list FROM table_ref opt_where

    select_list ::= select_item
           | select_list COMMA select_item

    select_item ::= STAR
           | expr

    table_ref ::= id_

    opt_where ::= WHERE expr
           | $empty

    insert_stat ::= INSERT INTO table_ref VALUES LPAREN expr_list RPAREN

    expr_list ::= expr
           | expr_list COMMA expr

    delete_stat ::= DELETE FROM table_ref opt_where

    expr ::= primary
           | expr EQ primary

    primary ::= id_
           | UNSIGNED_INTEGER
           | LPAREN expr RPAREN

    -- Single-letter soft keywords from SqlPlsqlKWLexer (e.g. table name "t")
    id_ ::= REGULAR_ID
           | IDENTIFIER
           | A_LETTER
           | C_LETTER
           | E_LETTER
           | G_LETTER
           | H_LETTER
           | K_LETTER
           | M_LETTER
           | P_LETTER
           | T_LETTER
