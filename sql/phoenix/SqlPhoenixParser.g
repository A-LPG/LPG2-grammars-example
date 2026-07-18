-- AUTO-GENERATED from antlr/grammars-v4 sql/phoenix by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlPhoenixParser
%options package=lpg.grammars.sql.phoenix
%options template=dtParserTemplateF.gi
%options import_terminals=SqlPhoenixLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    phoenix_file
%End

%Rules
    phoenix_file ::= list_1

    batch ::= sql_command opt_2

    sql_command ::= ddl_command
           | dml_command
           | other_command

    ddl_command ::= alter_command
           | alter_index_command
           | create_function_command
           | create_index_command
           | create_schema_command
           | create_sequence_command
           | create_table_command
           | create_view_command
           | drop_function_command
           | drop_index_command
           | drop_schema_command
           | drop_sequence_command
           | drop_table_command
           | drop_view_command

    dml_command ::= select_command
           | upsert_values_command
           | upsert_select_command
           | delete_command

    other_command ::= use_command
           | explain_command
           | update_statistics_command
           | declare_cursor_command
           | fetch_next_command
           | close_command
           | open_cursor_command
           | grant_command
           | revoke_command

    alter_command ::= ALTER opt_4 table_ref grp_5

    alter_index_command ::= ALTER INDEX opt_9 index_name ON table_ref grp_10

    create_function_command ::= CREATE opt_11 FUNCTION func_name LPAREN func_argument_list RPAREN RETURNS data_type AS class_name opt_13

    create_index_command ::= CREATE opt_14 INDEX opt_15 index_name ON table_ref LPAREN expression_asc_desc_list RPAREN opt_17 opt_18 opt_19 opt_21

    create_schema_command ::= CREATE SCHEMA opt_22 schema_name

    create_sequence_command ::= CREATE SEQUENCE opt_23 sequence_ref opt_26 opt_29 opt_31 opt_33 opt_34 opt_36

    create_table_command ::= CREATE TABLE opt_37 table_ref LPAREN column_def_list opt_38 RPAREN opt_39 opt_41

    create_view_command ::= CREATE VIEW opt_42 new_table_ref opt_44 opt_48 opt_49

    constraint ::= CONSTRAINT constraint_name PRIMARY KEY LPAREN constraint_column_list RPAREN

    constraint_column_list ::= constraint_column list_51

    constraint_column ::= column_name opt_52 opt_53

    constraint_name ::= name

    new_table_ref ::= table_ref

    table_options ::= options_

    existing_table_ref ::= table_ref

    expression_asc_desc_list ::= expression opt_54 list_57

    split_point_list ::= split_point list_59

    split_point ::= literal
           | bind_parameter

    index_options ::= options_list

    options_list ::= list_60

    options_ ::= option list_62

    option ::= opt_64 name EQ literal

    func_argument_list ::= func_argument list_66

    func_argument ::= data_type opt_67 opt_69 opt_71 opt_73

    class_name ::= string

    jar_path ::= string

    drop_table_command ::= DROP TABLE opt_74 table_ref opt_75

    drop_view_command ::= DROP VIEW opt_76 table_ref opt_77

    drop_schema_command ::= DROP SCHEMA opt_78 schema_name

    drop_sequence_command ::= DROP SEQUENCE opt_79 sequence_ref

    drop_index_command ::= DROP INDEX opt_80 index_name ON table_ref

    drop_function_command ::= DROP FUNCTION opt_81 func_name

    index_name ::= name

    func_name ::= name

    if_exists ::= IF EXISTS

    if_not_exists ::= IF NOT EXISTS

    table_ref ::= opt_83 table_name

    use_command ::= USE grp_84

    explain_command ::= EXPLAIN grp_85

    update_statistics_command ::= UPDATE STATISTICS table_ref opt_87 opt_89

    declare_cursor_command ::= DECLARE CURSOR cursor_name FOR select_statement

    open_cursor_command ::= OPEN CURSOR cursor_name

    fetch_next_command ::= FETCH NEXT opt_91 FROM cursor_name

    close_command ::= CLOSE cursor_name

    grant_command ::= GRANT permission_string opt_92 TO opt_93 user_string

    revoke_command ::= REVOKE opt_94 FROM opt_95 user_string

    on_schema_table ::= ON grp_96

    permission_string ::= string

    user_string ::= string

    cursor_name ::= name

    guide_post_options ::= opt_98 name EQ literal list_100

    upsert_values_command ::= UPSERT INTO table_name opt_103 VALUES LPAREN literal list_105 RPAREN opt_108

    column_ref_list ::= column_ref list_110

    column_def_list ::= column_def list_112

    upsert_select_command ::= UPSERT opt_113 INTO table_name opt_116 select_command

    delete_command ::= DELETE opt_117 FROM table_name opt_118 opt_119 opt_120

    order_by_clause ::= ORDER BY order_list

    limit_clause ::= LIMIT bind_parameter_number

    order_list ::= order list_122

    where_clause ::= WHERE expression

    select_command ::= select_statement opt_123 opt_124 opt_125 opt_128 opt_131

    select_statement ::= SELECT opt_132 opt_134 select_expression list_136 FROM table_spec opt_137 opt_138 opt_142 opt_144

    union_list ::= list_145

    union ::= UNION ALL select_statement

    join_list ::= list_146

    join_item ::= opt_147 JOIN table_spec ON expression

    row_rows ::= ROW
           | ROWS

    bind_parameter_number ::= bind_parameter
           | number

    order ::= expression opt_148 opt_150

    first_last ::= FIRST
           | LAST

    first_next ::= FIRST
           | NEXT

    bind_parameter ::= QUESTION
           | COLON number

    number ::= DECIMAL_LITERAL

    hint ::= EMPTY_LIT

    hint_name ::= scan_hint
           | index_hint
           | cache_hint
           | small_hint
           | join_hint
           | seek_to_column_hint
           | serial_hint

    scan_hint ::= SKIP_SCAN
           | RANGE_SCAN

    index_hint ::= INDEX
           | NO_INDEX
           | USE_INDEX_OVER_DATA_TABLE
           | USE_DATA_OVER_INDEX_TABLE

    cache_hint ::= NO_CACHE

    small_hint ::= SMALL

    join_hint ::= USE_SORT_MERGE_JOIN
           | NO_STAR_JOIN
           | NO_CHILD_PARENT_JOIN_OPTIMIZATION

    seek_to_column_hint ::= SEEK_TO_COLUMN
           | NO_SEEK_TO_COLUMN

    serial_hint ::= SERIAL

    select_expression ::= STAR
           | family_name DOT STAR
           | expression opt_153

    family_name ::= name

    quoted_name ::= DOUBLE_QUOTE_ID

    column_alias ::= alias

    alias ::= name

    name ::= ID
           | quoted_name

    table_spec ::= aliased_table_ref
           | LPAREN select_command RPAREN opt_156

    aliased_table_ref ::= table_ref opt_159 opt_163 opt_165

    table_alias ::= alias

    positive_decimal ::= number

    schema_name ::= name

    table_name ::= name

    column_def ::= column_ref data_type opt_168 opt_170 opt_174

    column_ref ::= opt_176 column_name

    column_name ::= name

    data_type ::= grp_177 opt_181

    asc_desc ::= ASC
           | DESC

    any_all ::= ANY
           | ALL

    join_type ::= INNER
           | grp_182 opt_183

    expression ::= literal
           | bind_parameter
           | opt_187 column_name
           | MINUS expression
           | expression PIPEPIPE expression
           | expression grp_188 expression
           | expression grp_189 expression
           | expression comp_op expression
           | expression comp_op any_all LP select_command RP
           | expression grp_190 expression
           | expression IS opt_191 NULL_
           | expression opt_192 IN LP grp_193 RP
           | expression opt_194 BETWEEN expression AND expression
           | opt_195 EXISTS LP select_command RP
           | ID LP expression_list RP
           | NOT expression
           | expression AND expression
           | expression OR expression
           | row_value_constructor
           | case
           | case_when
           | cast
           | sequence
           | array_constructor

    comp_op ::= EQ
           | GT
           | GE
           | LT
           | LE
           | NE
           | NE2

    expression_list ::= expression list_197

    literal ::= string
           | numeric
           | true_false
           | NULL_

    string ::= STRING_LITERAL

    numeric ::= integer
           | decimal

    integer ::= opt_198 DECIMAL_LITERAL

    decimal ::= opt_199 number opt_201

    true_false ::= TRUE
           | FALSE

    case ::= CASE expression WHEN expression THEN expression list_203 opt_205 END

    case_when ::= CASE WHEN expression THEN expression opt_207 opt_209 END

    row_value_constructor ::= LPAREN expression_list RPAREN

    cast ::= CAST LPAREN expression AS data_type RPAREN

    sequence ::= grp_210 grp_211 FOR sequence_ref

    sequence_ref ::= opt_213 sequence_name

    sequence_name ::= name

    array_constructor ::= ARRAY LBRACKET expression list_215 RBRACKET

    dimension_int ::= integer

    precision_int ::= integer

    scale_int ::= integer

    sql_data_type ::= CHAR LPAREN precision_int RPAREN
           | VARCHAR opt_217
           | DECIMAL opt_219
           | TINYINT
           | SMALLINT
           | INTEGER
           | BIGINT
           | FLOAT
           | DOUBLE
           | TIMESTAMP
           | DATE
           | TIME
           | BINARY LPAREN precision_int RPAREN
           | VARBINARY LPAREN precision_int RPAREN

    hbase_data_type ::= UNSIGNED_TIMESTAMP
           | UNSIGNED_DATE
           | UNSIGNED_TIME
           | UNSIGNED_TINYINT
           | UNSIGNED_SMALLINT
           | UNSIGNED_INT
           | UNSIGNED_LONG
           | UNSIGNED_FLOAT
           | UNSIGNED_DOUBLE

    list_1 ::= $empty | list_1 batch

    opt_2 ::= SEMI | $empty

    grp_3 ::= TABLE | VIEW

    opt_4 ::= grp_3 | $empty

    opt_6 ::= if_not_exists | $empty

    opt_7 ::= options_ | $empty

    opt_8 ::= if_exists | $empty

    grp_5 ::= ADD opt_6 column_def_list opt_7 | DROP COLUMN opt_8 column_ref_list | SET options_

    opt_9 ::= if_exists | $empty

    grp_10 ::= DISABLE | REBUILD | UNUSABLE | USABLE

    opt_11 ::= TEMPORARY | $empty

    seq_12 ::= USING JAR jar_path

    opt_13 ::= seq_12 | $empty

    opt_14 ::= LOCAL | $empty

    opt_15 ::= if_not_exists | $empty

    seq_16 ::= INCLUDE LPAREN column_ref_list RPAREN

    opt_17 ::= seq_16 | $empty

    opt_18 ::= ASYNC | $empty

    opt_19 ::= index_options | $empty

    seq_20 ::= SPLIT ON split_point_list

    opt_21 ::= seq_20 | $empty

    opt_22 ::= if_not_exists | $empty

    opt_23 ::= if_not_exists | $empty

    opt_24 ::= WITH | $empty

    seq_25 ::= START opt_24 bind_parameter_number

    opt_26 ::= seq_25 | $empty

    opt_27 ::= BY | $empty

    seq_28 ::= INCREMENT opt_27 bind_parameter_number

    opt_29 ::= seq_28 | $empty

    seq_30 ::= MINVALUE bind_parameter_number

    opt_31 ::= seq_30 | $empty

    seq_32 ::= MAXVALUE bind_parameter_number

    opt_33 ::= seq_32 | $empty

    opt_34 ::= CYCLE | $empty

    seq_35 ::= CACHE bind_parameter_number

    opt_36 ::= seq_35 | $empty

    opt_37 ::= if_not_exists | $empty

    opt_38 ::= constraint | $empty

    opt_39 ::= table_options | $empty

    seq_40 ::= SPLIT ON LPAREN split_point_list RPAREN

    opt_41 ::= seq_40 | $empty

    opt_42 ::= if_not_exists | $empty

    seq_43 ::= LPAREN column_def_list RPAREN

    opt_44 ::= seq_43 | $empty

    seq_45 ::= WHERE expression

    opt_46 ::= seq_45 | $empty

    seq_47 ::= AS SELECT STAR FROM existing_table_ref opt_46

    opt_48 ::= seq_47 | $empty

    opt_49 ::= table_options | $empty

    seq_50 ::= COMMA constraint_column

    list_51 ::= $empty | list_51 seq_50

    opt_52 ::= asc_desc | $empty

    opt_53 ::= ROW_TIMESTAMP | $empty

    opt_54 ::= asc_desc | $empty

    opt_55 ::= asc_desc | $empty

    seq_56 ::= COMMA expression opt_55

    list_57 ::= $empty | list_57 seq_56

    seq_58 ::= COMMA split_point

    list_59 ::= $empty | list_59 seq_58

    list_60 ::= options_ | list_60 options_

    seq_61 ::= COMMA option

    list_62 ::= $empty | list_62 seq_61

    seq_63 ::= family_name DOT

    opt_64 ::= seq_63 | $empty

    seq_65 ::= COMMA func_argument

    list_66 ::= $empty | list_66 seq_65

    opt_67 ::= CONSTANT | $empty

    seq_68 ::= DEFAULTVALUE EQ string

    opt_69 ::= seq_68 | $empty

    seq_70 ::= MINVALUE EQ string

    opt_71 ::= seq_70 | $empty

    seq_72 ::= MAXVALUE EQ string

    opt_73 ::= seq_72 | $empty

    opt_74 ::= if_exists | $empty

    opt_75 ::= CASCADE | $empty

    opt_76 ::= if_exists | $empty

    opt_77 ::= CASCADE | $empty

    opt_78 ::= if_exists | $empty

    opt_79 ::= if_exists | $empty

    opt_80 ::= if_exists | $empty

    opt_81 ::= if_exists | $empty

    seq_82 ::= schema_name DOT

    opt_83 ::= seq_82 | $empty

    grp_84 ::= schema_name | DEFAULT

    grp_85 ::= select_command | upsert_select_command | delete_command

    grp_86 ::= ALL | INDEX | COLUMN

    opt_87 ::= grp_86 | $empty

    seq_88 ::= SET guide_post_options

    opt_89 ::= seq_88 | $empty

    seq_90 ::= number ROWS

    opt_91 ::= seq_90 | $empty

    opt_92 ::= on_schema_table | $empty

    opt_93 ::= GROUP | $empty

    opt_94 ::= on_schema_table | $empty

    opt_95 ::= GROUP | $empty

    grp_96 ::= SCHEMA schema_name | table_ref

    seq_97 ::= family_name DOT

    opt_98 ::= seq_97 | $empty

    seq_99 ::= COMMA name EQ literal

    list_100 ::= $empty | list_100 seq_99

    grp_102 ::= column_ref_list | column_def_list

    grp_101 ::= LPAREN grp_102 RPAREN

    opt_103 ::= grp_101 | $empty

    seq_104 ::= COMMA literal

    list_105 ::= $empty | list_105 seq_104

    grp_107 ::= IGNORE | UPDATE column_ref EQ expression

    grp_106 ::= ON DUPLICATE KEY grp_107

    opt_108 ::= grp_106 | $empty

    seq_109 ::= COMMA column_ref

    list_110 ::= $empty | list_110 seq_109

    seq_111 ::= COMMA column_def

    list_112 ::= $empty | list_112 seq_111

    opt_113 ::= hint | $empty

    grp_115 ::= column_ref_list | column_def_list

    grp_114 ::= LPAREN grp_115 RPAREN

    opt_116 ::= grp_114 | $empty

    opt_117 ::= hint | $empty

    opt_118 ::= where_clause | $empty

    opt_119 ::= order_by_clause | $empty

    opt_120 ::= limit_clause | $empty

    seq_121 ::= COMMA order

    list_122 ::= $empty | list_122 seq_121

    opt_123 ::= union_list | $empty

    opt_124 ::= order_by_clause | $empty

    opt_125 ::= limit_clause | $empty

    opt_126 ::= row_rows | $empty

    seq_127 ::= OFFSET bind_parameter_number opt_126

    opt_128 ::= seq_127 | $empty

    opt_129 ::= row_rows | $empty

    seq_130 ::= FETCH first_next bind_parameter_number opt_129 ONLY

    opt_131 ::= seq_130 | $empty

    opt_132 ::= hint | $empty

    grp_133 ::= DISTINCT | ALL

    opt_134 ::= grp_133 | $empty

    seq_135 ::= COMMA select_expression

    list_136 ::= $empty | list_136 seq_135

    opt_137 ::= join_list | $empty

    opt_138 ::= where_clause | $empty

    seq_139 ::= COMMA expression

    list_140 ::= $empty | list_140 seq_139

    seq_141 ::= GROUP BY expression list_140

    opt_142 ::= seq_141 | $empty

    seq_143 ::= HAVING expression

    opt_144 ::= seq_143 | $empty

    list_145 ::= union | list_145 union

    list_146 ::= join_item | list_146 join_item

    opt_147 ::= join_type | $empty

    opt_148 ::= asc_desc | $empty

    seq_149 ::= NULLS first_last

    opt_150 ::= seq_149 | $empty

    opt_151 ::= AS | $empty

    seq_152 ::= opt_151 column_alias

    opt_153 ::= seq_152 | $empty

    opt_154 ::= AS | $empty

    seq_155 ::= opt_154 table_alias

    opt_156 ::= seq_155 | $empty

    opt_157 ::= AS | $empty

    seq_158 ::= opt_157 table_alias

    opt_159 ::= seq_158 | $empty

    seq_160 ::= COMMA column_def

    opt_161 ::= seq_160 | $empty

    seq_162 ::= LPAREN column_def opt_161 RPAREN

    opt_163 ::= seq_162 | $empty

    seq_164 ::= TABLESAMPLE LPAREN positive_decimal RPAREN

    opt_165 ::= seq_164 | $empty

    opt_166 ::= NOT | $empty

    seq_167 ::= opt_166 NULL_

    opt_168 ::= seq_167 | $empty

    seq_169 ::= DEFAULT literal

    opt_170 ::= seq_169 | $empty

    opt_171 ::= asc_desc | $empty

    opt_172 ::= ROW_TIMESTAMP | $empty

    seq_173 ::= PRIMARY KEY opt_171 opt_172

    opt_174 ::= seq_173 | $empty

    seq_175 ::= family_name DOT

    opt_176 ::= seq_175 | $empty

    grp_177 ::= sql_data_type | hbase_data_type

    seq_178 ::= LBRACKET dimension_int RBRACKET

    opt_179 ::= seq_178 | $empty

    seq_180 ::= ARRAY opt_179

    opt_181 ::= seq_180 | $empty

    grp_182 ::= LEFT | RIGHT

    opt_183 ::= OUTER | $empty

    seq_184 ::= schema_name DOT

    opt_185 ::= seq_184 | $empty

    seq_186 ::= opt_185 table_name DOT

    opt_187 ::= seq_186 | $empty

    grp_188 ::= STAR | DIV | MOD

    grp_189 ::= PLUS | MINUS

    grp_190 ::= LIKE | ILIKE

    opt_191 ::= NOT | $empty

    opt_192 ::= NOT | $empty

    grp_193 ::= select_command | expression_list

    opt_194 ::= NOT | $empty

    opt_195 ::= NOT | $empty

    seq_196 ::= COMMA expression

    list_197 ::= $empty | list_197 seq_196

    opt_198 ::= MINUS | $empty

    opt_199 ::= MINUS | $empty

    seq_200 ::= DOT number

    opt_201 ::= seq_200 | $empty

    seq_202 ::= WHEN expression THEN expression

    list_203 ::= $empty | list_203 seq_202

    seq_204 ::= ELSE expression

    opt_205 ::= seq_204 | $empty

    seq_206 ::= WHEN expression THEN expression

    opt_207 ::= seq_206 | $empty

    seq_208 ::= ELSE expression

    opt_209 ::= seq_208 | $empty

    grp_210 ::= NEXT | CURRENT

    grp_211 ::= VALUE | number VALUES

    seq_212 ::= schema_name DOT

    opt_213 ::= seq_212 | $empty

    seq_214 ::= COMMA expression

    list_215 ::= $empty | list_215 seq_214

    seq_216 ::= LPAREN precision_int RPAREN

    opt_217 ::= seq_216 | $empty

    seq_218 ::= precision_int COMMA scale_int

    opt_219 ::= seq_218 | $empty

%End
