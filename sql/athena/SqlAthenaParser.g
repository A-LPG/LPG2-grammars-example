-- AUTO-GENERATED from antlr/grammars-v4 sql/athena by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlAthenaParser
%options package=lpg.grammars.sql.athena
%options template=dtParserTemplateF.gi
%options import_terminals=SqlAthenaLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    stmt
%End

%Rules
    stmt ::= command opt_1

    command ::= ddl_command
           | dml_command

    ddl_command ::= alter_database
           | alter_table_add_cols
           | alter_table_add_part
           | alter_table_drop_part
           | alter_table_rename_part
           | alter_table_replace_part
           | alter_table_set_location
           | alter_table_set_props
           | create_database
           | create_table
           | create_table_as
           | create_view
           | drop_database
           | drop_table
           | drop_view
           | describe
           | describe_view
           | msck
           | show_columns
           | show_create_table
           | show_create_view
           | show_databases
           | show_partitions
           | show_tables
           | show_tblproperties
           | show_views

    dml_command ::= select
           | insert_into
           | delete_stmt
           | update
           | merge_into
           | optimize_stmt
           | vacuum
           | explain
           | prepare
           | execute
           | deallocate
           | unload

    select ::= opt_5 select_statement

    select_statement ::= SELECT opt_6 select_list opt_10 opt_12 opt_17 opt_19 opt_23 opt_27 opt_31 opt_34

    all_distinct ::= ALL
           | DISTINCT

    order_item ::= expression opt_36 opt_39

    from_item ::= table_name

    count ::= int_number

    with_query ::= id_ AS LPAREN select_statement RPAREN

    grouping_element ::= expression

    condition ::= boolean_expression

    insert_into ::= INSERT INTO destination_table opt_41 grp_42

    value_list ::= LPAREN value list_46 RPAREN

    select_list ::= select_item list_48

    select_item ::= expression opt_51
           | opt_53 STAR

    delete_stmt ::= DELETE FROM opt_55 table_name opt_57

    update ::= UPDATE opt_59 table_name SET col_name EQ expression list_61 opt_63

    merge_into ::= MERGE INTO target_table opt_66 USING grp_67 opt_70 ON search_condition when_clauses

    search_condition ::= predicate

    when_clauses ::= list_72 opt_73

    when_not_matched_clause ::= WHEN NOT MATCHED opt_75 THEN INSERT opt_76 VALUES LPAREN expression_list_ RPAREN

    expression_list_ ::= expression list_78

    column_list ::= col_name list_80

    when_matched_and_clause ::= WHEN MATCHED AND expression THEN update_delete

    when_matched_then_clause ::= WHEN MATCHED THEN update_delete

    update_delete ::= UPDATE SET LPAREN col_name EQ expression list_82 RPAREN
           | DELETE

    optimize_stmt ::= OPTIMIZE opt_84 table_name REWRITE DATA USING BIN_PACK opt_86

    vacuum ::= VACUUM target_table

    target_table ::= table_name

    source_table ::= table_name

    explain ::= EXPLAIN statement opt_90
           | EXPLAIN ANALYZE opt_93 statement

    explain_option ::= FORMAT grp_94
           | TYPE grp_95

    prepare ::= PREPARE statement_name FROM statement

    statement ::= select
           | create_table_as
           | insert_into
           | unload

    execute ::= EXECUTE statement_name opt_99

    parameter ::= value

    value ::= int_number
           | string
           | true_false

    deallocate ::= DEALLOCATE PREPARE statement_name

    unload ::= UNLOAD LPAREN select RPAREN TO string WITH LPAREN property_list RPAREN

    property_list ::= property_name EQ property_value list_101

    property_value ::= value

    predicate ::= true_false
           | boolean_expression

    alter_database ::= ALTER db_schema database_name SET DBPROPERTIES LPAREN kv_pair list_103 RPAREN

    db_schema ::= DATABASE
           | SCHEMA

    kv_pair ::= string EQ grp_104

    alter_table_add_cols ::= ALTER TABLE table_name opt_108 ADD COLUMNS seq_109

    part_col_name_value ::= partition_col_name EQ partition_col_value

    partition_col_name ::= col_name

    partition_col_value ::= value

    alter_table_add_part ::= ALTER TABLE table_name ADD opt_110 list_116

    alter_table_drop_part ::= ALTER TABLE table_name DROP opt_117 PARTITION LPAREN partition_spec RPAREN list_119

    partition_spec ::= part_col_name_value list_121

    alter_table_rename_part ::= ALTER TABLE table_name PARTITION partition_spec RENAME TO PARTITION partition_spec

    alter_table_replace_part ::= ALTER TABLE table_name opt_125 REPLACE COLUMNS LPAREN col_name data_type list_127 RPAREN

    alter_table_set_location ::= ALTER TABLE table_name opt_129 SET LOCATION string

    alter_table_set_props ::= ALTER TABLE table_name SET TBLPROPERTIES LPAREN kv_pair list_131 RPAREN

    create_database ::= CREATE db_schema opt_132 database_name opt_134 opt_136 opt_140

    create_table ::= CREATE EXTERNAL TABLE opt_141 opt_143 table_name opt_147 opt_149 opt_153 opt_157 opt_159 opt_161 LOCATION string opt_163

    table_comment ::= string

    row_format ::= DELIMITED opt_164 opt_165 opt_166 opt_167 opt_168
           | SERDE string opt_170

    table_row_format_field_identifier ::= FIELDS TERMINATED BY string opt_172

    table_row_format_coll_items_identifier ::= COLLECTION ITEMS TERMINATED BY string

    table_row_format_map_keys_identifier ::= MAP KEYS TERMINATED BY string

    table_row_format_lines_identifier ::= LINES TERMINATED BY string

    table_row_null_format ::= NULL_ DEFINED AS string

    file_format ::= SEQUENCEFILE
           | TEXTFILE
           | RCFILE
           | ORC
           | PARQUET
           | AVRO
           | ION
           | INPUTFORMAT string OUTPUTFORMAT string

    num_buckets ::= int_number

    col_def_with_comment ::= col_name data_type opt_174

    col_comment ::= string

    create_table_as ::= CREATE TABLE table_name opt_178 AS query opt_181

    property_name ::= id_

    prop_exp ::= property_name EQ expression

    create_view ::= CREATE opt_182 VIEW view_name AS query

    describe ::= DESCRIBE opt_184 opt_186 table_name opt_188

    field_name ::= id_

    describe_view ::= DESCRIBE opt_189

    drop_database ::= DROP db_schema opt_190 database_name opt_192

    drop_table ::= DROP TABLE opt_193 table_name

    drop_view ::= DROP VIEW opt_194 view_name

    msck ::= MSCK REPAIR TABLE table_name

    show_columns ::= SHOW COLUMNS from_in database_name DOT table_name
           | SHOW COLUMNS from_in table_name opt_196

    show_create_table ::= SHOW CREATE TABLE opt_198 table_name

    show_create_view ::= SHOW CREATE VIEW view_name

    show_databases ::= SHOW grp_199 opt_201

    show_partitions ::= SHOW PARTITIONS table_name

    show_tables ::= SHOW TABLES opt_203 opt_204

    show_tblproperties ::= SHOW TBLPROPERTIES table_name opt_206

    show_views ::= SHOW VIEWS opt_208 opt_210

    query ::= select

    true_false ::= TRUE
           | FALSE

    boolean_expression ::= boolean_expression AND boolean_expression
           | boolean_expression OR boolean_expression
           | list_211 grp_212

    pred ::= expression comparison_operator expression
           | expression IS opt_213 NULL_
           | id_ opt_214 LIKE string
           | expression opt_215 BETWEEN expression AND expression
           | expression opt_216 IN table_subquery
           | expression opt_217 IN LPAREN expression_list_ RPAREN
           | opt_218 EXISTS table_subquery
           | expression comparison_operator grp_219 table_subquery

    table_subquery ::= LPAREN select_statement RPAREN

    comparison_operator ::= LT
           | EQ
           | GT
           | LTEQ
           | GTEQ
           | LTGT
           | NOTEQ

    expression ::= primitive_expression
           | LPAREN expression RPAREN
           | table_subquery
           | id_ LPAREN expression_list_ RPAREN
           | case_expression
           | when_expression
           | grp_220 expression
           | expression grp_221 expression
           | expression grp_222 expression
           | expression DOT expression
           | CAST LPAREN expression AS data_type RPAREN

    case_expression ::= CASE expression list_224 opt_226 END

    when_expression ::= CASE list_228 opt_230 END

    primitive_expression ::= literal
           | id_

    literal ::= number
           | string
           | true_false
           | NULL_

    int_number ::= INTEGRAL_LITERAL

    number ::= int_number
           | REAL_LITERAL
           | FLOAT_LITERAL

    data_type ::= primitive_type
           | ARRAY LT data_type GT
           | MAP LT primitive_type COMMA data_type GT
           | STRUCT LT struct_col_def list_232 GT

    primitive_type ::= BOOLEAN
           | TINYINT
           | SMALLINT
           | INT
           | INTEGER
           | BIGINT
           | DOUBLE
           | FLOAT
           | DECIMAL LPAREN precision COMMA scale RPAREN
           | grp_233 LPAREN int_number RPAREN
           | STRING
           | BINARY
           | DATE
           | TIMESTAMP

    precision ::= int_number

    scale ::= int_number

    struct_col_def ::= col_name COLON data_type opt_235

    col_name ::= id_

    db_name ::= id_

    database_name ::= id_

    statement_name ::= id_

    table_name ::= id_

    view_name ::= id_

    destination_table ::= id_

    string ::= SQ_STRING_LITERAL

    reg_ex ::= string

    alias ::= id_

    target_alias ::= id_

    source_alias ::= id_

    id_ ::= IDENTIFIER
           | DQ_STRING_LITERAL

    if_not_exists ::= IF NOT EXISTS

    if_exists ::= IF EXISTS

    or_replace ::= OR REPLACE

    from_in ::= FROM
           | IN

    opt_1 ::= SEMI | $empty

    seq_2 ::= COMMA with_query

    list_3 ::= $empty | list_3 seq_2

    seq_4 ::= WITH with_query list_3

    opt_5 ::= seq_4 | $empty

    opt_6 ::= all_distinct | $empty

    seq_7 ::= COMMA from_item

    list_8 ::= $empty | list_8 seq_7

    seq_9 ::= FROM from_item list_8

    opt_10 ::= seq_9 | $empty

    seq_11 ::= WHERE condition

    opt_12 ::= seq_11 | $empty

    opt_13 ::= all_distinct | $empty

    seq_14 ::= COMMA grouping_element

    list_15 ::= $empty | list_15 seq_14

    seq_16 ::= GROUP BY opt_13 grouping_element list_15

    opt_17 ::= seq_16 | $empty

    seq_18 ::= HAVING condition

    opt_19 ::= seq_18 | $empty

    grp_21 ::= UNION | INTERSECT | EXCEPT

    opt_22 ::= all_distinct | $empty

    grp_20 ::= grp_21 opt_22 select_statement

    opt_23 ::= grp_20 | $empty

    seq_24 ::= COMMA order_item

    list_25 ::= $empty | list_25 seq_24

    seq_26 ::= ORDER BY order_item list_25

    opt_27 ::= seq_26 | $empty

    grp_29 ::= ROW | ROWS

    opt_30 ::= grp_29 | $empty

    grp_28 ::= OFFSET count opt_30

    opt_31 ::= grp_28 | $empty

    grp_33 ::= count | ALL

    grp_32 ::= LIMIT grp_33

    opt_34 ::= grp_32 | $empty

    grp_35 ::= ASC | DESC

    opt_36 ::= grp_35 | $empty

    grp_38 ::= FIRST | LAST

    grp_37 ::= NULLS grp_38

    opt_39 ::= grp_37 | $empty

    seq_40 ::= LPAREN column_list RPAREN

    opt_41 ::= seq_40 | $empty

    seq_43 ::= COMMA value_list

    list_44 ::= $empty | list_44 seq_43

    grp_42 ::= select_statement | VALUES value_list list_44

    seq_45 ::= COMMA value

    list_46 ::= $empty | list_46 seq_45

    seq_47 ::= COMMA select_item

    list_48 ::= $empty | list_48 seq_47

    opt_49 ::= AS | $empty

    seq_50 ::= opt_49 alias

    opt_51 ::= seq_50 | $empty

    seq_52 ::= table_name DOT

    opt_53 ::= seq_52 | $empty

    seq_54 ::= db_name DOT

    opt_55 ::= seq_54 | $empty

    seq_56 ::= WHERE predicate

    opt_57 ::= seq_56 | $empty

    seq_58 ::= db_name DOT

    opt_59 ::= seq_58 | $empty

    seq_60 ::= COMMA col_name EQ expression

    list_61 ::= $empty | list_61 seq_60

    seq_62 ::= WHERE predicate

    opt_63 ::= seq_62 | $empty

    opt_64 ::= AS | $empty

    seq_65 ::= opt_64 target_alias

    opt_66 ::= seq_65 | $empty

    grp_67 ::= source_table | query

    opt_68 ::= AS | $empty

    seq_69 ::= opt_68 source_alias

    opt_70 ::= seq_69 | $empty

    grp_71 ::= when_matched_and_clause | when_matched_then_clause

    list_72 ::= $empty | list_72 grp_71

    opt_73 ::= when_not_matched_clause | $empty

    seq_74 ::= AND expression

    opt_75 ::= seq_74 | $empty

    opt_76 ::= column_list | $empty

    seq_77 ::= COMMA expression

    list_78 ::= $empty | list_78 seq_77

    seq_79 ::= COMMA col_name

    list_80 ::= $empty | list_80 seq_79

    seq_81 ::= COMMA col_name EQ expression

    list_82 ::= $empty | list_82 seq_81

    seq_83 ::= db_name DOT

    opt_84 ::= seq_83 | $empty

    seq_85 ::= WHERE predicate

    opt_86 ::= seq_85 | $empty

    seq_87 ::= COMMA explain_option

    list_88 ::= $empty | list_88 seq_87

    seq_89 ::= LPAREN explain_option list_88 RPAREN

    opt_90 ::= seq_89 | $empty

    grp_92 ::= TEXT | JSON

    grp_91 ::= LPAREN FORMAT grp_92 RPAREN

    opt_93 ::= grp_91 | $empty

    grp_94 ::= TEXT | GRAPHVIZ | JSON

    grp_95 ::= LOGICAL | DISTRIBUTED | VALIDATE | IO

    seq_96 ::= COMMA parameter

    list_97 ::= $empty | list_97 seq_96

    seq_98 ::= USING parameter list_97

    opt_99 ::= seq_98 | $empty

    seq_100 ::= COMMA property_name EQ property_value

    list_101 ::= $empty | list_101 seq_100

    seq_102 ::= COMMA kv_pair

    list_103 ::= $empty | list_103 seq_102

    grp_104 ::= string | DQ_STRING_LITERAL

    seq_105 ::= COMMA part_col_name_value

    list_106 ::= $empty | list_106 seq_105

    seq_107 ::= PARTITION LPAREN part_col_name_value list_106 RPAREN

    opt_108 ::= seq_107 | $empty

    seq_109 ::= col_name data_type

    opt_110 ::= if_not_exists | $empty

    seq_111 ::= COMMA part_col_name_value

    list_112 ::= $empty | list_112 seq_111

    seq_113 ::= LOCATION string

    opt_114 ::= seq_113 | $empty

    seq_115 ::= PARTITION LPAREN part_col_name_value list_112 RPAREN opt_114

    list_116 ::= seq_115 | list_116 seq_115

    opt_117 ::= if_exists | $empty

    seq_118 ::= COMMA PARTITION LPAREN partition_spec RPAREN

    list_119 ::= $empty | list_119 seq_118

    seq_120 ::= COMMA part_col_name_value

    list_121 ::= $empty | list_121 seq_120

    seq_122 ::= COMMA part_col_name_value

    list_123 ::= $empty | list_123 seq_122

    seq_124 ::= PARTITION LPAREN part_col_name_value list_123 RPAREN

    opt_125 ::= seq_124 | $empty

    seq_126 ::= COMMA col_name data_type

    list_127 ::= $empty | list_127 seq_126

    seq_128 ::= PARTITION LPAREN partition_spec RPAREN

    opt_129 ::= seq_128 | $empty

    seq_130 ::= COMMA kv_pair

    list_131 ::= $empty | list_131 seq_130

    opt_132 ::= if_not_exists | $empty

    seq_133 ::= COMMENT string

    opt_134 ::= seq_133 | $empty

    seq_135 ::= LOCATION string

    opt_136 ::= seq_135 | $empty

    seq_137 ::= COMMA kv_pair

    list_138 ::= $empty | list_138 seq_137

    seq_139 ::= WITH DBPROPERTIES LPAREN kv_pair list_138 RPAREN

    opt_140 ::= seq_139 | $empty

    opt_141 ::= if_not_exists | $empty

    seq_142 ::= db_name DOT

    opt_143 ::= seq_142 | $empty

    seq_144 ::= COMMA col_def_with_comment

    list_145 ::= $empty | list_145 seq_144

    seq_146 ::= LPAREN col_def_with_comment list_145 RPAREN

    opt_147 ::= seq_146 | $empty

    seq_148 ::= COMMENT table_comment

    opt_149 ::= seq_148 | $empty

    seq_150 ::= COMMA col_def_with_comment

    list_151 ::= $empty | list_151 seq_150

    seq_152 ::= PARTITIONED BY LPAREN col_def_with_comment list_151 RPAREN

    opt_153 ::= seq_152 | $empty

    seq_154 ::= COMMA col_name

    list_155 ::= $empty | list_155 seq_154

    seq_156 ::= CLUSTERED BY LPAREN col_name list_155 RPAREN INTO num_buckets BUCKETS

    opt_157 ::= seq_156 | $empty

    seq_158 ::= ROW FORMAT row_format

    opt_159 ::= seq_158 | $empty

    seq_160 ::= STORED AS file_format

    opt_161 ::= seq_160 | $empty

    seq_162 ::= TBLPROPERTIES LPAREN property_list RPAREN

    opt_163 ::= seq_162 | $empty

    opt_164 ::= table_row_format_field_identifier | $empty

    opt_165 ::= table_row_format_coll_items_identifier | $empty

    opt_166 ::= table_row_format_map_keys_identifier | $empty

    opt_167 ::= table_row_format_lines_identifier | $empty

    opt_168 ::= table_row_null_format | $empty

    seq_169 ::= WITH SERDEPROPERTIES LPAREN property_list RPAREN

    opt_170 ::= seq_169 | $empty

    seq_171 ::= ESCAPED BY string

    opt_172 ::= seq_171 | $empty

    seq_173 ::= COMMENT col_comment

    opt_174 ::= seq_173 | $empty

    seq_175 ::= COMMA prop_exp

    list_176 ::= $empty | list_176 seq_175

    seq_177 ::= WITH LPAREN prop_exp list_176 RPAREN

    opt_178 ::= seq_177 | $empty

    opt_179 ::= NO | $empty

    seq_180 ::= WITH opt_179 DATA

    opt_181 ::= seq_180 | $empty

    opt_182 ::= or_replace | $empty

    grp_183 ::= EXTENDED | FORMATTED

    opt_184 ::= grp_183 | $empty

    seq_185 ::= db_name DOT

    opt_186 ::= seq_185 | $empty

    seq_187 ::= PARTITION partition_spec

    opt_188 ::= seq_187 | $empty

    opt_189 ::= view_name | $empty

    opt_190 ::= if_exists | $empty

    grp_191 ::= RESTRICT | CASCADE

    opt_192 ::= grp_191 | $empty

    opt_193 ::= if_exists | $empty

    opt_194 ::= if_exists | $empty

    seq_195 ::= from_in database_name

    opt_196 ::= seq_195 | $empty

    seq_197 ::= db_name DOT

    opt_198 ::= seq_197 | $empty

    grp_199 ::= DATABASES | SCHEMAS

    seq_200 ::= LIKE reg_ex

    opt_201 ::= seq_200 | $empty

    seq_202 ::= IN database_name

    opt_203 ::= seq_202 | $empty

    opt_204 ::= reg_ex | $empty

    seq_205 ::= LPAREN string RPAREN

    opt_206 ::= seq_205 | $empty

    seq_207 ::= IN database_name

    opt_208 ::= seq_207 | $empty

    seq_209 ::= LIKE reg_ex

    opt_210 ::= seq_209 | $empty

    list_211 ::= $empty | list_211 NOT

    grp_212 ::= LPAREN boolean_expression RPAREN | pred

    opt_213 ::= NOT | $empty

    opt_214 ::= NOT | $empty

    opt_215 ::= NOT | $empty

    opt_216 ::= NOT | $empty

    opt_217 ::= NOT | $empty

    opt_218 ::= NOT | $empty

    grp_219 ::= ALL | ANY | SOME

    grp_220 ::= PLUS | MINUS

    grp_221 ::= STAR | DIVIDE | MODULE

    grp_222 ::= PLUS | MINUS

    seq_223 ::= WHEN expression THEN expression

    list_224 ::= seq_223 | list_224 seq_223

    seq_225 ::= ELSE expression

    opt_226 ::= seq_225 | $empty

    seq_227 ::= WHEN expression THEN expression

    list_228 ::= seq_227 | list_228 seq_227

    seq_229 ::= ELSE expression

    opt_230 ::= seq_229 | $empty

    seq_231 ::= COMMA struct_col_def

    list_232 ::= $empty | list_232 seq_231

    grp_233 ::= CHAR | VARCHAR

    seq_234 ::= COMMENT col_comment

    opt_235 ::= seq_234 | $empty

%End
