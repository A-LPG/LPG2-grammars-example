-- Structural subset of grammars-v4 FusionTablesSql.g4:
-- fusionTablesSql / sql_stmt / select / insert / update / delete / create / drop / show / describe

%Options la=3
%Options fp=FusionTablesParser
%options package=lpg.grammars.fusion_tables
%options template=dtParserTemplateF.gi
%options import_terminals=FusionTablesLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    fusionTablesSql
%End

%Rules
    fusionTablesSql ::= stmt_list

    stmt_list ::= sql_stmt
                | stmt_list sql_stmt

    sql_stmt ::= select_stmt SEMI
               | insert_stmt SEMI
               | update_stmt SEMI
               | delete_stmt SEMI
               | create_table_as_select_stmt SEMI
               | create_view_stmt SEMI
               | drop_table_stmt SEMI
               | show_tables_stmt SEMI
               | describe_stmt SEMI

    select_stmt ::= K_SELECT result_columns K_FROM IDENTIFIER
                  | K_SELECT result_columns K_FROM IDENTIFIER K_WHERE eq_comparison

    result_columns ::= STAR
                     | column_list

    column_list ::= IDENTIFIER
                  | column_list COMMA IDENTIFIER

    eq_comparison ::= IDENTIFIER EQ STRING

    create_table_as_select_stmt ::= K_CREATE K_TABLE IDENTIFIER K_AS K_SELECT STAR K_FROM IDENTIFIER

    create_view_stmt ::= K_CREATE K_VIEW IDENTIFIER K_AS LPAREN K_SELECT column_list K_FROM IDENTIFIER RPAREN

    drop_table_stmt ::= K_DROP K_TABLE IDENTIFIER

    insert_stmt ::= K_INSERT K_INTO IDENTIFIER LPAREN column_list RPAREN K_VALUES LPAREN value_list RPAREN

    value_list ::= STRING
                 | value_list COMMA STRING

    update_stmt ::= K_UPDATE IDENTIFIER K_SET IDENTIFIER EQ STRING K_WHERE eq_comparison

    delete_stmt ::= K_DELETE K_FROM IDENTIFIER K_WHERE eq_comparison

    show_tables_stmt ::= K_SHOW K_TABLES

    describe_stmt ::= K_DESCRIBE IDENTIFIER
%End
