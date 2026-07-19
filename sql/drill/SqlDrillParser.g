-- AUTO-GENERATED from antlr/grammars-v4 sql/drill by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlDrillParser
%options package=lpg.grammars.sql.drill
%options template=dtParserTemplateF.gi
%options import_terminals=SqlDrillLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    drill_file
%End

%Rules
    drill_file ::= list_1

    batch ::= sql_command opt_2

    sql_command ::= ddl_command
           | other_command

    ddl_command ::= alter_command
           | create_command
           | drop_command

    create_command ::= create_schema
           | create_table
           | create_temp_table
           | create_function
           | create_view

    create_schema ::= CREATE opt_3 SCHEMA opt_5 opt_9 opt_11 opt_13

    column_definition ::= column_name data_type opt_14 opt_15 opt_16 opt_17

    kv_list ::= kv_pair list_19

    kv_pair ::= string EQ string

    create_table ::= CREATE TABLE table_name opt_20 AS query

    column_list_paren ::= LPAREN column_list RPAREN

    column_list ::= column_name list_22

    create_temp_table ::= CREATE TEMPORARY TABLE name opt_23 opt_24 AS query

    partition_by_clause ::= PARTITION BY column_list_paren

    create_function ::= CREATE FUNCTION USING JAR string

    create_view ::= CREATE opt_25 VIEW opt_27 view_name opt_28 AS query

    alter_command ::= alter_system

    alter_system ::= ALTER SYSTEM grp_29

    option_name ::= BS_STRING_LITERAL

    drop_command ::= drop_table
           | drop_view
           | drop_function

    drop_table ::= DROP TABLE opt_31 opt_33 name

    drop_view ::= DROP VIEW opt_34 opt_36 view_name

    drop_function ::= DROP FUNCTION USING JAR string

    other_command ::= set_command
           | analyze_command
           | reset_command
           | refresh_table_metadata
           | describe_command
           | show_command
           | use_command
           | select_stmt

    set_command ::= opt_38 SET option_name EQ value

    reset_command ::= opt_40 RESET id_

    refresh_table_metadata ::= REFRESH TABLE METADATA opt_42 table_name

    analyze_command ::= ANALYZE TABLE opt_44 opt_47 opt_51 opt_56

    param_list ::= expr_list

    describe_command ::= DESCRIBE opt_58 grp_59 opt_60
           | DESCRIBE grp_61 name opt_63
           | DESCRIBE LPAREN query RPAREN

    show_command ::= SHOW grp_64
           | SHOW FILES opt_67

    use_command ::= USE schema_name

    select_stmt ::= opt_68 select_clause opt_69 opt_70 opt_71 opt_72 opt_73 opt_74 opt_75

    with_clause ::= WITH with_item list_77

    with_item ::= name opt_78 AS query

    select_clause ::= SELECT opt_79 select_item list_81

    select_item ::= grp_82 opt_88

    from_clause ::= FROM table_expression list_90

    table_expression ::= with_clause opt_91
           | table_name opt_92
           | table_subquery opt_93
           | join_clause
           | opt_94 opt_95 lateral_subquery opt_97

    lateral_join_type ::= grp_98 JOIN

    lateral_subquery ::= unnest_table_expr
           | LPAREN select_clause FROM unnest_table_expr list_102 RPAREN

    join_clause ::= table_reference join_type table_reference opt_104

    join_type ::= grp_105 JOIN

    table_reference ::= table_name opt_109

    unnest_table_expr ::= UNNEST LPAREN expression RPAREN correlation_clause

    correlation_clause ::= opt_110 correlation_name opt_111

    where_clause ::= WHERE boolean_expression

    boolean_expression ::= expression AND expression
           | expression OR expression
           | list_112 expression
           | expression comparison_operator expression
           | expression IS opt_113 NULL_
           | string opt_114 LIKE string opt_116
           | expression opt_117 BETWEEN expression AND expression
           | expression opt_118 IN table_subquery
           | expression opt_119 IN LPAREN expr_list RPAREN
           | opt_120 EXISTS table_subquery
           | expression comparison_operator grp_121 table_subquery

    table_subquery ::= LPAREN query opt_122 opt_123 RPAREN

    expression ::= primitive_expression
           | LPAREN expression RPAREN
           | table_subquery
           | function_call
           | grp_124 expression
           | expression grp_125 expression
           | expression grp_126 expression
           | expression DOT expression
           | expression comparison_operator expression
           | expression AND expression
           | expression OR expression
           | NOT expression
           | expression opt_127 IN LPAREN expr_list RPAREN
           | CAST LPAREN expression AS data_type RPAREN

    primitive_expression ::= literal
           | id_

    literal ::= TRUE
           | FALSE
           | NULL_
           | SQ_STRING_LITERAL
           | DECIMAL_LITERAL
           | FLOAT_LITERAL
           | REAL_LITERAL

    function_call ::= function_name LPAREN opt_128 RPAREN

    comparison_operator ::= LT
           | EQ
           | GT
           | LTEQ
           | GTEQ
           | LTGT

    expr_list ::= expression list_130

    group_by_clause ::= GROUP BY expr_list

    having_clause ::= HAVING

    order_by_clause ::= ORDER BY expression opt_132 opt_135

    limit_clause ::= LIMIT
           | FETCH NEXT

    offset_clause ::= OFFSET number grp_136

    number ::= DECIMAL_LITERAL

    query ::= LPAREN query opt_137 opt_138 RPAREN
           | query UNION opt_139 query
           | select_stmt

    select_expression ::= select_clause opt_140 opt_141 opt_142 opt_143 opt_144 opt_145

    data_type ::= BIGINT
           | BINARY
           | BOOLEAN
           | DATE
           | DECIMAL
           | DEC
           | NUMERIC
           | FLOAT
           | DOUBLE opt_146
           | INTEGER
           | INT
           | INTERVAL grp_147
           | SMALLINT
           | TIME
           | TIMESTAMP
           | CHARACTER VARYING
           | CHAR
           | VARCHAR

    default_clause ::= DEFAULT string

    nullability ::= opt_148 NULL_

    format_clause ::= FORMAT string

    properties_clause ::= PROPERTIES LBRACE kv_list RBRACE

    or_replace ::= OR REPLACE

    if_exists ::= IF EXISTS

    id_ ::= IDENTIFIER

    string ::= SQ_STRING_LITERAL

    workspace ::= name

    name ::= IDENTIFIER

    schema_name ::= opt_150 name

    table_name ::= opt_154 grp_155

    view_name ::= name

    correlation_name ::= name

    column_name ::= name

    function_name ::= name

    column_alias ::= name
           | BS_STRING_LITERAL

    table_path ::= BS_STRING_LITERAL

    value ::= literal

    list_1 ::= $empty | list_1 batch

    opt_2 ::= SEMI | $empty

    opt_3 ::= or_replace | $empty

    seq_4 ::= LOAD string

    opt_5 ::= seq_4 | $empty

    seq_6 ::= COMMA column_definition

    list_7 ::= $empty | list_7 seq_6

    seq_8 ::= LPAREN column_definition list_7 RPAREN

    opt_9 ::= seq_8 | $empty

    grp_10 ::= FOR TABLE table_name | PATH string

    opt_11 ::= grp_10 | $empty

    seq_12 ::= PROPERTIES LPAREN kv_list RPAREN

    opt_13 ::= seq_12 | $empty

    opt_14 ::= nullability | $empty

    opt_15 ::= format_clause | $empty

    opt_16 ::= default_clause | $empty

    opt_17 ::= properties_clause | $empty

    seq_18 ::= COMMA kv_pair

    list_19 ::= $empty | list_19 seq_18

    opt_20 ::= column_list_paren | $empty

    seq_21 ::= COMMA column_name

    list_22 ::= $empty | list_22 seq_21

    opt_23 ::= column_list_paren | $empty

    opt_24 ::= partition_by_clause | $empty

    opt_25 ::= or_replace | $empty

    seq_26 ::= workspace DOT

    opt_27 ::= seq_26 | $empty

    opt_28 ::= column_list_paren | $empty

    grp_30 ::= option_name | ALL

    grp_29 ::= SET option_name EQ value | RESET grp_30

    opt_31 ::= if_exists | $empty

    seq_32 ::= workspace DOT

    opt_33 ::= seq_32 | $empty

    opt_34 ::= if_exists | $empty

    seq_35 ::= workspace DOT

    opt_36 ::= seq_35 | $empty

    seq_37 ::= ALTER SESSION

    opt_38 ::= seq_37 | $empty

    seq_39 ::= ALTER SESSION

    opt_40 ::= seq_39 | $empty

    grp_41 ::= COLUMNS column_list_paren | NONE

    opt_42 ::= grp_41 | $empty

    grp_43 ::= table_name | TABLE LPAREN id_ LPAREN param_list RPAREN RPAREN

    opt_44 ::= grp_43 | $empty

    grp_46 ::= column_list_paren | NONE

    grp_45 ::= COLUMNS grp_46

    opt_47 ::= grp_45 | $empty

    seq_48 ::= string LEVEL

    opt_49 ::= seq_48 | $empty

    seq_50 ::= REFRESH METADATA opt_49

    opt_51 ::= seq_50 | $empty

    grp_53 ::= COMPUTE | ESTIMATE

    seq_54 ::= SAMPLE number PERCENT

    opt_55 ::= seq_54 | $empty

    grp_52 ::= grp_53 STATISTICS opt_55

    opt_56 ::= grp_52 | $empty

    seq_57 ::= workspace DOT

    opt_58 ::= seq_57 | $empty

    grp_59 ::= table_name | view_name

    opt_60 ::= column_name | $empty

    grp_61 ::= SCHEMA | DATABASE

    seq_62 ::= DOT workspace

    opt_63 ::= seq_62 | $empty

    grp_64 ::= TABLES | DATABASES | SCHEMAS

    grp_66 ::= FROM | IN

    grp_65 ::= grp_66 id_ DOT id_

    opt_67 ::= grp_65 | $empty

    opt_68 ::= with_clause | $empty

    opt_69 ::= from_clause | $empty

    opt_70 ::= where_clause | $empty

    opt_71 ::= group_by_clause | $empty

    opt_72 ::= having_clause | $empty

    opt_73 ::= order_by_clause | $empty

    opt_74 ::= limit_clause | $empty

    opt_75 ::= offset_clause | $empty

    seq_76 ::= COMMA with_item

    list_77 ::= $empty | list_77 seq_76

    opt_78 ::= column_list_paren | $empty

    opt_79 ::= DISTINCT | $empty

    seq_80 ::= COMMA select_item

    list_81 ::= $empty | list_81 seq_80

    grp_84 ::= table_name | column_alias

    grp_83 ::= grp_84 DOT

    opt_85 ::= grp_83 | $empty

    grp_82 ::= COLUMNS LBRACKET number RBRACKET | opt_85 STAR | expression

    opt_86 ::= AS | $empty

    seq_87 ::= opt_86 column_alias

    opt_88 ::= seq_87 | $empty

    seq_89 ::= COMMA table_expression

    list_90 ::= $empty | list_90 seq_89

    opt_91 ::= correlation_clause | $empty

    opt_92 ::= correlation_clause | $empty

    opt_93 ::= correlation_clause | $empty

    opt_94 ::= LATERAL | $empty

    opt_95 ::= lateral_join_type | $empty

    seq_96 ::= ON TRUE

    opt_97 ::= seq_96 | $empty

    opt_99 ::= INNER | $empty

    opt_100 ::= OUTER | $empty

    grp_98 ::= opt_99 | LEFT opt_100

    seq_101 ::= COMMA select_clause FROM unnest_table_expr

    list_102 ::= $empty | list_102 seq_101

    seq_103 ::= ON boolean_expression

    opt_104 ::= seq_103 | $empty

    opt_106 ::= INNER | $empty

    grp_107 ::= LEFT | RIGHT | FULL

    opt_108 ::= OUTER | $empty

    grp_105 ::= opt_106 | grp_107 opt_108 | CROSS

    opt_109 ::= correlation_clause | $empty

    opt_110 ::= AS | $empty

    opt_111 ::= column_list_paren | $empty

    list_112 ::= NOT | list_112 NOT

    opt_113 ::= NOT | $empty

    opt_114 ::= NOT | $empty

    seq_115 ::= ESCAPE string

    opt_116 ::= seq_115 | $empty

    opt_117 ::= NOT | $empty

    opt_118 ::= NOT | $empty

    opt_119 ::= NOT | $empty

    opt_120 ::= NOT | $empty

    grp_121 ::= ALL | ANY | SOME

    opt_122 ::= order_by_clause | $empty

    opt_123 ::= offset_clause | $empty

    grp_124 ::= PLUS | MINUS

    grp_125 ::= STAR | DIVIDE | MODULE

    grp_126 ::= PLUS | MINUS

    opt_127 ::= NOT | $empty

    opt_128 ::= expr_list | $empty

    seq_129 ::= COMMA expression

    list_130 ::= $empty | list_130 seq_129

    grp_131 ::= ASC | DESC

    opt_132 ::= grp_131 | $empty

    grp_134 ::= FIRST | LAST

    grp_133 ::= NULLS grp_134

    opt_135 ::= grp_133 | $empty

    grp_136 ::= ROW | ROWS

    opt_137 ::= order_by_clause | $empty

    opt_138 ::= offset_clause | $empty

    opt_139 ::= ALL | $empty

    opt_140 ::= from_clause | $empty

    opt_141 ::= where_clause | $empty

    opt_142 ::= group_by_clause | $empty

    opt_143 ::= having_clause | $empty

    opt_144 ::= order_by_clause | $empty

    opt_145 ::= offset_clause | $empty

    opt_146 ::= PRECISION | $empty

    grp_147 ::= YEAR | MONTH | DAY | HOUR | MINUTE | SECOND

    opt_148 ::= NOT | $empty

    seq_149 ::= id_ DOT

    opt_150 ::= seq_149 | $empty

    seq_151 ::= id_ DOT

    opt_152 ::= seq_151 | $empty

    seq_153 ::= opt_152 id_ DOT

    opt_154 ::= seq_153 | $empty

    grp_155 ::= name | table_path

%End
