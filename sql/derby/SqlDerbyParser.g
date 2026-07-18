-- AUTO-GENERATED from antlr/grammars-v4 sql/derby by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlDerbyParser
%options package=lpg.grammars.sql.derby
%options template=dtParserTemplateF.gi
%options import_terminals=SqlDerbyLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    derby_file
%End

%Rules
    sql_id ::= IDENTIFIER

    derby_file ::= list_1

    batch ::= sql_command opt_2

    sql_command ::= ddl_command
           | dml_command
           | other_command

    ddl_command ::= alter_command
           | create_command
           | drop_command

    dml_command ::= select_statement
           | insert_statement
           | update_statement
           | delete_statement
           | merge_statement
           | truncate_table

    keyword ::= ADD
           | ALL
           | ALLOCATE
           | ALTER
           | AND
           | ANY
           | ARE
           | AS
           | ASC
           | ASSERTION
           | AT
           | AUTHORIZATION
           | AVG
           | BEGIN
           | BETWEEN
           | BIGINT
           | BIT
           | BOOLEAN
           | BOTH
           | BY
           | CALL
           | CASCADE
           | CASCADED
           | CASE
           | CAST
           | CHAR
           | CHARACTER
           | CHARACTER_LENGTH
           | CHECK
           | CLOSE
           | COALESCE
           | COLLATE
           | COLLATION
           | COLUMN
           | COMMIT
           | CONNECT
           | CONNECTION
           | CONSTRAINT
           | CONSTRAINTS
           | CONTINUE
           | CONVERT
           | CORRESPONDING
           | CREATE
           | CROSS
           | CURRENT
           | CURRENT_DATE
           | CURRENT_ROLE
           | CURRENT_TIME
           | CURRENT_TIMESTAMP
           | CURRENT_USER
           | CURSOR
           | DEALLOCATE
           | DEC
           | DECIMAL
           | DECLARE
           | DEFAULT
           | DEFERRABLE
           | DEFERRED
           | DELETE
           | DESC
           | DESCRIBE
           | DIAGNOSTICS
           | DISCONNECT
           | DISTINCT
           | DOUBLE
           | DROP
           | ELSE
           | END
           | END_EXEC
           | ESCAPE
           | EXCEPT
           | EXCEPTION
           | EXEC
           | EXECUTE
           | EXISTS
           | EXPLAIN
           | EXTERNAL
           | FALSE
           | FETCH
           | FIRST
           | FLOAT
           | FOR
           | FOREIGN
           | FOUND
           | FROM
           | FULL
           | FUNCTION
           | GET
           | GETCURRENTCONNECTION
           | GLOBAL
           | GO
           | GOTO
           | GRANT
           | GROUP
           | HAVING
           | HOUR
           | IDENTITY
           | IMMEDIATE
           | IN
           | INDICATOR
           | INITIALLY
           | INNER
           | INOUT
           | INPUT
           | INSENSITIVE
           | INSERT
           | INT
           | INTEGER
           | INTERSECT
           | INTO
           | IS
           | ISOLATION
           | JOIN
           | KEY
           | LAST
           | LEADING
           | LEFT
           | LIKE
           | LOWER
           | LTRIM
           | MATCH
           | MAX
           | MIN
           | MINUTE
           | NATIONAL
           | NATURAL
           | NCHAR
           | NVARCHAR
           | NEXT
           | NO
           | NONE
           | NOT
           | NULL_
           | NULLIF
           | NUMERIC
           | OF
           | ON
           | ONLY
           | OPEN
           | OPTION
           | OR
           | ORDER
           | OUTER
           | OUTPUT
           | OVERLAPS
           | PAD
           | PARTIAL
           | PREPARE
           | PRESERVE
           | PRIMARY
           | PRIOR
           | PRIVILEGES
           | PROCEDURE
           | PUBLIC
           | READ
           | REAL
           | REFERENCES
           | RELATIVE
           | RESTRICT
           | REVOKE
           | RIGHT
           | ROLLBACK
           | ROWS
           | RTRIM
           | SCHEMA
           | SCROLL
           | SECOND
           | SELECT
           | SESSION_USER
           | SET
           | SMALLINT
           | SOME
           | SPACE
           | SQL
           | SQLCODE
           | SQLERROR
           | SQLSTATE
           | SUBSTR
           | SUBSTRING
           | SUM
           | SYSTEM_USER
           | TABLE
           | TEMPORARY
           | TIMEZONE_HOUR
           | TIMEZONE_MINUTE
           | TO
           | TRANSACTION
           | TRANSLATE
           | TRANSLATION
           | TRIM
           | TRUE
           | UNION
           | UNIQUE
           | UNKNOWN
           | UPDATE
           | UPPER
           | USER
           | USING
           | VALUES
           | VARCHAR
           | VARYING
           | VIEW
           | WHENEVER
           | WHERE
           | WINDOW
           | WITH
           | WORK
           | WRITE
           | XML
           | XMLEXISTS
           | XMLPARSE
           | XMLQUERY
           | XMLSERIALIZE
           | YEAR

    insert_statement ::= INSERT INTO table_name list_6 query opt_7 opt_8 opt_9

    offset_clause ::= OFFSET grp_10 row_rows

    fetch_clause ::= FETCH first_next grp_11 row_rows ONLY

    first_next ::= FIRST
           | NEXT

    row_rows ::= ROW
           | ROWS

    integer_literal ::= num

    merge_statement ::= MERGE INTO table_name opt_14 USING table_name opt_17 ON search_condition list_18

    merge_when_clause ::= merge_when_matched
           | merge_when_not_matched

    merge_when_matched ::= WHEN MATCHED opt_20 THEN grp_21

    merge_when_not_matched ::= WHEN NOT MATCHED seq_22 THEN merge_insert

    merge_update ::= UPDATE SET column_name EQ value list_24

    merge_insert ::= INSERT opt_28 VALUES LPAREN value list_30 RPAREN

    search_condition ::= boolean_expression

    match_refinement ::= boolean_expression

    update_statement ::= UPDATE table_name SET column_name EQ value list_35 opt_36
           | UPDATE table_name AS correlation_name SET column_name EQ value list_35 opt_36
           | UPDATE table_name SET column_name EQ value list_38 WHERE CURRENT OF cursor_nName

    where_clause ::= WHERE boolean_expression

    boolean_expression ::= expression AND expression
           | expression OR expression
           | NOT expression
           | expression comparison_operator expression
           | expression IS opt_39 NULL_
           | character_expression opt_40 LIKE character_expression opt_42
           | expression opt_43 BETWEEN expression AND expression
           | expression opt_44 IN table_subquery
           | expression opt_45 IN LPAREN expression list_47 RPAREN
           | opt_48 EXISTS table_subquery
           | expression comparison_operator grp_49 table_subquery

    table_subquery ::= LPAREN query opt_50 opt_51 opt_52 RPAREN

    character_expression ::= string

    comparison_operator ::= LT
           | EQ
           | GT
           | LTEQ
           | GTEQ
           | LTGT

    value ::= expression
           | DEFAULT

    delete_statement ::= DELETE FROM table_name opt_55 opt_56
           | DELETE FROM table_name WHERE CURRENT OF cursor_nName

    other_command ::= CALL procedure_name LPAREN expr_list RPAREN
           | DECLARE GLOBAL TEMPORARY TABLE table_name column_definition list_58 opt_61 NOT LOGGED opt_63
           | GRANT privilege_type ON opt_64 grp_65 TO grantees
           | GRANT EXECUTE ON FUNCTION function_name TO grantees
           | GRANT EXECUTE ON PROCEDURE procedure_name TO grantees
           | GRANT USAGE ON SEQUENCE sequence_name TO grantees
           | GRANT USAGE ON TYPE type_name TO grantees
           | GRANT USAGE ON DERBY AGGREGATE aggregate_name TO grantees
           | GRANT role_name list_67 TO grantees
           | LOCK TABLE table_name IN grp_68 MODE
           | RENAME COLUMN table_name DOT simple_column_name TO simple_column_name
           | RENAME INDEX index_name TO index_name
           | RENAME TABLE RENAME TABLE table_name TO table_name
           | REVOKE privilege_type ON opt_69 grp_70 FROM revokees
           | REVOKE EXECUTE ON FUNCTION function_name FROM revokees RESTRICT
           | REVOKE EXECUTE ON PROCEDURE procedure_name FROM revokees RESTRICT
           | REVOKE USAGE ON SEQUENCE sequence_name FROM revokees RESTRICT
           | REVOKE USAGE ON TYPE type_name FROM revokees RESTRICT
           | REVOKE USAGE ON DERBY AGGREGATE aggregate_name FROM revokees RESTRICT
           | REVOKE role_name list_72 FROM revokees
           | SET CONSTRAINTS constraint_name_list grp_73
           | SET opt_74 ISOLATION opt_75 isolation_level
           | SET ROLE grp_76
           | SET opt_77 SCHEMA opt_78 grp_79
           | SET CURRENT SQLID opt_80 grp_81

    grantees ::= grantee list_83

    grantee ::= authorization_identifier
           | role_name
           | PUBLIC

    isolation_level ::= UR
           | DIRTY READ
           | READ UNCOMMITTED
           | CS
           | READ COMMITTED
           | CURSOR STABILITY
           | RS
           | RR
           | REPEATABLE READ
           | SERIALIZABLE
           | RESET

    constraint_name_list ::= ALL
           | constraint_name list_85

    column_definition ::= simple_column_name opt_86 list_87

    with_default ::= opt_88 DEFAULT default_constant_expression
           | generated_column_spec
           | generation_clause

    default_constant_expression ::= NULL_
           | CURRENT grp_89
           | USER
           | CURRENT_USER
           | SESSION_USER
           | CURRENT_ROLE
           | DATE
           | TIME
           | TIMESTAMP
           | CURRENT DATE
           | CURRENT_DATE
           | CURRENT TIME
           | CURRENT_TIME
           | CURRENT TIMESTAMP
           | CURRENT_TIMESTAMP
           | literal

    generated_column_spec ::= GENERATED always_by_default AS IDENTITY opt_92

    generation_clause ::= GENERATED ALWAYS AS LPAREN values_expression RPAREN

    column_level_constraint ::= opt_94 grp_95 opt_96

    table_level_constraint ::= opt_98 grp_99 opt_101

    references_clause ::= REFERENCES table_name opt_103 opt_106 opt_108
           | opt_110 opt_113

    no_action_restrict ::= NO ACTION
           | RESTRICT

    constraint_characteristics ::= constraint_check_time opt_116
           | opt_117 DEFERRABLE opt_118

    constraint_check_time ::= INITIALLY DEFERRED
           | INITIALLY IMMEDIATE

    simple_column_name_list ::= simple_column_name list_120

    truncate_table ::= TRUNCATE opt_121 table_name

    privilege_type ::= ALL PRIVILEGES
           | privilege_list

    privilege_list ::= table_privilege list_123

    table_privilege ::= DELETE
           | INSERT
           | REFERENCES opt_124
           | SELECT opt_125
           | TRIGGER
           | UPDATE opt_126

    column_list ::= LPAREN column_identifier list_128 RPAREN

    column_identifier ::= id_

    revokees ::= revokee list_130

    revokee ::= authorization_identifier
           | role_name
           | PUBLIC

    authorization_identifier ::= id_

    alter_command ::= alter_table

    alter_table ::= ALTER TABLE table_name ADD COLUMN column_definition
           | ADD constraint_clause
           | DROP opt_131 column_name opt_132
           | DROP grp_133
           | ALTER opt_134 column_alteration
           | LOCKSIZE row_table

    constraint_clause ::= column_level_constraint
           | table_level_constraint

    cascade_restrict ::= CASCADE
           | RESTRICT

    row_table ::= ROW
           | TABLE

    column_alteration ::= column_name SET DATA TYPE BLOB integer
           | column_name SET DATA TYPE CLOB integer
           | column_name SET DATA TYPE VARCHAR integer
           | column_name SET DATA TYPE VARCHAR integer FOR BIT DATA
           | column_name SET INCREMENT BY integer_constant
           | column_name RESTART WITH integer_constant
           | column_name SET GENERATED always_by_default
           | column_name set_drop NOT NULL_
           | column_name opt_135 NULL_
           | column_name opt_136 DEFAULT defaultValue
           | column_name SET opt_137 CYCLE
           | column_name DROP DEFAULT

    integer ::= num

    integer_constant ::= num

    defaultValue ::= constant_expression_null

    constant_expression_null ::= num
           | string
           | NULL_

    always_by_default ::= ALWAYS
           | BY DEFAULT

    set_drop ::= SET
           | DROP

    with_set ::= WITH
           | SET

    create_command ::= create_derby_aggregate
           | create_function
           | create_index
           | create_procedure
           | create_role
           | create_schema
           | create_sequence
           | create_synonym
           | create_table
           | create_trigger
           | create_type
           | create_view

    create_derby_aggregate ::= CREATE DERBY AGGREGATE aggregate_name FOR value_data_type seq_138 EXTERNAL NAME string

    value_data_type ::= data_type

    create_function ::= CREATE FUNCTION function_name LPAREN function_parameter list_140 RPAREN RETURNS return_data_type list_141

    function_parameter ::= opt_142 data_type

    return_data_type ::= table_type
           | data_type

    table_type ::= TABLE LPAREN column_element seq_143 RPAREN

    column_element ::= id_ data_type

    function_element ::= LANGUAGE JAVA
           | grp_144
           | EXTERNAL NAME single_quoted_string
           | PARAMETER STYLE grp_145
           | EXTERNAL SECURITY grp_146
           | grp_147
           | grp_148

    create_index ::= CREATE opt_149 INDEX index_name ON table_name LPAREN simple_column_name opt_150 list_153 RPAREN

    create_procedure ::= CREATE PROCEDURE procedure_name LPAREN procedure_parameter list_155 RPAREN list_156

    procedure_parameter ::= opt_158 opt_159 data_type

    data_type ::= BIGINT
           | grp_160 opt_164
           | BOOLEAN
           | grp_165 opt_167
           | grp_168 opt_172
           | DATE
           | grp_173 opt_177
           | DOUBLE
           | DOUBLE PRECISION
           | FLOAT opt_179
           | grp_180
           | LONG VARCHAR
           | LONG VARCHAR FOR BIT DATA
           | REAL
           | SMALLINT
           | TIME
           | TIMESTAMP
           | grp_181 opt_183
           | XML

    procedure_element ::= opt_184 RESULT SETS integer
           | LANGUAGE JAVA
           | grp_185
           | EXTERNAL NAME single_quoted_string
           | PARAMETER STYLE grp_186
           | EXTERNAL SECURITY grp_187
           | grp_188

    create_role ::= CREATE ROLE role_name

    create_schema ::= CREATE SCHEMA grp_189

    create_sequence ::= CREATE SEQUENCE sequence_name list_191

    sequence_element ::= AS data_type
           | START WITH signedInteger
           | INCREMENT BY signedInteger
           | MAXVALUE signedInteger
           | NO MAXVALUE
           | MINVALUE signedInteger
           | NO MINVALUE
           | CYCLE
           | NO CYCLE

    signedInteger ::= num

    create_synonym ::= CREATE SYNONYM synonym_name FOR grp_192

    create_table ::= CREATE TABLE table_name LPAREN column_definition list_58 RPAREN
           | CREATE TABLE table_name WITH NO DATA

    create_trigger ::= CREATE TRIGGER trigger_name

    create_type ::= CREATE TYPE type_name EXTERNAL NAME single_quoted_string LANGUAGE JAVA

    single_quoted_string ::= string

    create_view ::= CREATE VIEW view_name opt_196 AS query opt_197 opt_198 opt_199

    query ::= LPAREN query opt_200 opt_201 opt_202 RPAREN
           | query INTERSECT opt_203 query
           | query EXCEPT opt_204 query
           | query UNION opt_205 query
           | select_expression
           | values_expression

    select_expression ::= SELECT opt_206 select_item list_208 from_clause opt_209 opt_210 opt_211 opt_212 opt_213 opt_214

    select_item ::= STAR
           | grp_215 DOT STAR
           | expression opt_217

    simple_column_name ::= id_

    drop_command ::= drop_derby_aggregate
           | drop_function
           | drop_index
           | drop_procedure
           | drop_role
           | drop_schema
           | drop_sequence
           | drop_synonym
           | drop_table
           | drop_trigger
           | drop_type
           | drop_view

    drop_derby_aggregate ::= DROP DERBY AGGREGATE aggregate_name RESTRICT

    drop_function ::= DROP FUNCTION function_name

    drop_index ::= DROP INDEX index_name

    drop_procedure ::= DROP PROCEDURE procedure_name

    drop_role ::= DROP ROLE role_name

    drop_schema ::= DROP SCHEMA schema_name RESTRICT

    drop_sequence ::= DROP SEQUENCE sequence_name RESTRICT

    drop_synonym ::= DROP SYNONYM synonym_name

    drop_table ::= DROP TABLE table_name

    drop_trigger ::= DROP TRIGGER trigger_name

    drop_type ::= DROP TYPE type_name RESTRICT

    drop_view ::= DROP VIEW view_name

    string ::= STRING_LITERAL

    table_name ::= id_
           | id_ DOT id_

    schema_name ::= id_

    role_name ::= id_

    aggregate_name ::= id_

           | id_ DOT id_
    constraint_name ::= id_

           | id_ DOT id_
    column_name ::= id_

           | id_ DOT id_
    correlation_name ::= id_

    function_name ::= id_

           | id_ DOT id_
    index_name ::= id_

           | id_ DOT id_
    procedure_name ::= id_

           | id_ DOT id_
    parameter_name ::= id_

    sequence_name ::= id_

           | id_ DOT id_
    synonym_name ::= id_

           | id_ DOT id_
    trigger_name ::= id_

           | id_ DOT id_
    type_name ::= id_

           | id_ DOT id_
    user_name ::= id_

    view_name ::= id_
           | id_ DOT id_

    cursor_nName ::= id_

    id_ ::= sql_id
           | DOUBLE_QUOTE_ID

    num ::= NUMBER

    expr_list ::= expression list_244

    expression ::= primitive_expression
           | LPAREN expression RPAREN
           | table_subquery
           | function_call
           | case_expression
           | grp_245 expression
           | expression grp_246 expression
           | expression grp_247 expression
           | expression DOT expression
           | expression comparison_operator expression
           | expression AND expression
           | expression OR expression
           | NOT expression
           | expression opt_248 IN LPAREN expr_list RPAREN
           | CAST LPAREN expression AS data_type RPAREN

    primitive_expression ::= DEFAULT
           | literal
           | id_

    function_call ::= function_name LPAREN opt_249 RPAREN
           | standard_built_in_function LPAREN opt_250 RPAREN
           | aggreagate_built_in_function LPAREN opt_251 RPAREN

    literal ::= string
           | NUMBER
           | sign NUMBER
           | opt_253 grp_254
           | TRUE
           | FALSE
           | NULL_

    sign ::= PLUS
           | MINUS

    case_expression ::= searched_case
           | simple_case
           | extended_case

    searched_case ::= CASE WHEN boolean_expression THEN expression list_256 opt_258 END

    simple_case ::= CASE value_expression WHEN value_expression list_260 THEN expression list_264 opt_266 END

    extended_case ::= CASE value_expression WHEN when_operand list_268 THEN expression list_272 opt_274 END

    when_operand ::= value_expression
           | comparison_operator expression
           | IS opt_275 NULL_
           | opt_276 LIKE string opt_278
           | opt_279 BETWEEN expression AND expression
           | opt_280 IN table_subquery
           | opt_281 IN LPAREN expr_list RPAREN
           | comparison_operator grp_282 table_subquery

    value_expression ::= expression

    standard_built_in_function ::= ABS
           | ABSVAL
           | ACOS
           | ASIN
           | ATAN
           | ATAN2
           | BIGINT
           | CAST
           | CEIL
           | CEILING
           | CHAR
           | PIPE_PIPE
           | COS
           | NULLIF
           | CURRENT_DATE
           | CURRENT ISOLATION
           | CURRENT_TIME
           | CURRENT_TIMESTAMP
           | CURRENT_USER
           | DATE
           | DAY
           | DEGREES
           | DOUBLE
           | EXP
           | FLOOR
           | HOUR
           | IDENTITY_VAL_LOCAL
           | INT
           | INTEGER
           | LENGTH
           | LN
           | LOG
           | LOG10
           | LOCATE
           | LCASE
           | LOWER
           | LTRIM
           | MINUTE
           | MOD
           | MONTH
           | PI
           | RADIANS
           | RTRIM
           | SECOND
           | SESSION_USER
           | SIN
           | SMALLINT
           | SQRT
           | SUBSTR
           | TAN
           | TIME
           | TIMESTAMP
           | TRIM
           | UCASE
           | UPPER
           | USER
           | VARCHAR
           | YEAR

    aggreagate_built_in_function ::= AVG
           | COUNT
           | MAX
           | MIN
           | STDDEV_POP
           | STDDEV_SAMP
           | SUM
           | VAR_POP
           | VAR_SAMP

    select_statement ::= query opt_283 opt_284 opt_285 opt_286 opt_289

    for_update_clause ::= FOR grp_290

    all_distinct ::= ALL
           | DISTINCT

    from_clause ::= FROM table_expression list_296

    table_expression ::= table_view_or_function_expression
           | table_expression join_operation

    join_operation ::= opt_297 JOIN table_expression grp_298
           | LEFT opt_299 JOIN table_expression grp_300
           | RIGHT opt_301 JOIN table_expression grp_302
           | CROSS JOIN grp_303
           | NATURAL opt_307 JOIN grp_308

    table_view_or_function_expression ::= grp_309 opt_310
           | grp_311 correlation_clause

    using_clause ::= USING LPAREN simple_column_name list_313 RPAREN

    correlation_clause ::= opt_314 correlation_name opt_318

    table_function_invocation ::= TABLE function_name LPAREN opt_322 RPAREN

    function_arg ::= expression

    group_by_clause ::= GROUP BY grp_323

    having_clause ::= HAVING boolean_expression

    order_by_clause ::= ORDER BY order_by_item list_329

    order_by_item ::= grp_330 opt_331 opt_333

    asc_desc ::= ASC
           | DESC

    columnPosition ::= num

    values_expression ::= grp_334 opt_343 opt_344 opt_345

    list_1 ::= $empty
           | list_1 batch

    opt_2 ::= SEMI
           | $empty

    seq_3 ::= COMMA simple_column_name

    list_4 ::= $empty
           | list_4 seq_3

    seq_5 ::= LPAREN simple_column_name list_4 RPAREN

    list_6 ::= $empty
           | list_6 seq_5

    opt_7 ::= order_by_clause
           | $empty

    opt_8 ::= offset_clause
           | $empty

    opt_9 ::= fetch_clause
           | $empty

    grp_10 ::= integer_literal
           | QUESTION

    grp_11 ::= integer_literal
           | QUESTION

    opt_12 ::= AS
           | $empty

    seq_13 ::= opt_12 correlation_name

    opt_14 ::= seq_13
           | $empty

    opt_15 ::= AS
           | $empty

    seq_16 ::= opt_15 correlation_name

    opt_17 ::= seq_16
           | $empty

    list_18 ::= $empty
           | list_18 merge_when_clause

    seq_19 ::= AND match_refinement

    opt_20 ::= seq_19
           | $empty

    grp_21 ::= merge_update
           | DELETE

    seq_22 ::= AND match_refinement

    seq_23 ::= COMMA column_name EQ value

    list_24 ::= $empty
           | list_24 seq_23

    seq_25 ::= COMMA simple_column_name

    list_26 ::= $empty
           | list_26 seq_25

    seq_27 ::= LPAREN simple_column_name list_26 RPAREN

    opt_28 ::= seq_27
           | $empty

    seq_29 ::= COMMA value

    list_30 ::= $empty
           | list_30 seq_29

    opt_31 ::= AS
           | $empty

    seq_32 ::= opt_31 correlation_name

    opt_33 ::= seq_32
           | $empty

    seq_34 ::= COMMA column_name EQ value

    list_35 ::= $empty
           | list_35 seq_34

    opt_36 ::= where_clause
           | $empty

    seq_37 ::= COMMA column_name EQ value

    list_38 ::= $empty
           | list_38 seq_37

    opt_39 ::= NOT
           | $empty

    opt_40 ::= NOT
           | $empty

    seq_41 ::= ESCAPE string

    opt_42 ::= seq_41
           | $empty

    opt_43 ::= NOT
           | $empty

    opt_44 ::= NOT
           | $empty

    opt_45 ::= NOT
           | $empty

    seq_46 ::= COMMA expression

    list_47 ::= $empty
           | list_47 seq_46

    opt_48 ::= NOT
           | $empty

    grp_49 ::= ALL
           | ANY
           | SOME

    opt_50 ::= order_by_clause
           | $empty

    opt_51 ::= offset_clause
           | $empty

    opt_52 ::= fetch_clause
           | $empty

    opt_53 ::= AS
           | $empty

    seq_54 ::= opt_53 correlation_name

    opt_55 ::= seq_54
           | $empty

    opt_56 ::= where_clause
           | $empty

    seq_57 ::= COMMA column_definition

    list_58 ::= $empty
           | list_58 seq_57

    grp_60 ::= DELETE
           | PRESERVE

    grp_59 ::= ON COMMIT grp_60 ROWS

    opt_61 ::= grp_59
           | $empty

    seq_62 ::= ON ROLLBACK DELETE ROWS

    opt_63 ::= seq_62
           | $empty

    opt_64 ::= TABLE
           | $empty

    grp_65 ::= table_name
           | view_name

    seq_66 ::= COMMA role_name

    list_67 ::= $empty
           | list_67 seq_66

    grp_68 ::= SHARE
           | EXCLUSIVE

    opt_69 ::= TABLE
           | $empty

    grp_70 ::= table_name
           | view_name

    seq_71 ::= COMMA role_name

    list_72 ::= $empty
           | list_72 seq_71

    grp_73 ::= DEFERRED
           | IMMEDIATE

    opt_74 ::= CURRENT
           | $empty

    opt_75 ::= EQ
           | $empty

    grp_76 ::= role_name
           | string
           | QUESTION
           | NONE

    opt_77 ::= CURRENT
           | $empty

    opt_78 ::= EQ
           | $empty

    grp_79 ::= schema_name
           | USER
           | QUESTION
           | string

    opt_80 ::= EQ
           | $empty

    grp_81 ::= schema_name
           | USER
           | QUESTION
           | string

    seq_82 ::= COMMA grantee

    list_83 ::= $empty
           | list_83 seq_82

    seq_84 ::= COMMA constraint_name

    list_85 ::= $empty
           | list_85 seq_84

    opt_86 ::= data_type
           | $empty

    list_87 ::= $empty
           | list_87 with_default

    opt_88 ::= WITH
           | $empty

    grp_89 ::= SCHEMA
           | SQLID

    opt_91 ::= NO
           | $empty

    grp_90 ::= LPAREN START WITH integer_constant
           | INCREMENT BY integer_constant
           | opt_91 CYCLE RPAREN

    opt_92 ::= grp_90
           | $empty

    seq_93 ::= CONSTRAINT constraint_name

    opt_94 ::= seq_93
           | $empty

    grp_95 ::= NOT NULL_
           | CHECK LPAREN search_condition RPAREN
           | PRIMARY KEY
           | UNIQUE
           | references_clause

    opt_96 ::= constraint_characteristics
           | $empty

    seq_97 ::= CONSTRAINT constraint_name

    opt_98 ::= seq_97
           | $empty

    grp_100 ::= PRIMARY KEY LPAREN simple_column_name_list RPAREN
           | UNIQUE LPAREN simple_column_name_list RPAREN
           | FOREIGN KEY LPAREN simple_column_name_list RPAREN references_clause

    grp_99 ::= CHECK LPAREN search_condition RPAREN
           | grp_100

    opt_101 ::= constraint_characteristics
           | $empty

    seq_102 ::= LPAREN simple_column_name_list RPAREN

    opt_103 ::= seq_102
           | $empty

    grp_105 ::= NO ACTION
           | RESTRICT
           | CASCADE
           | SET NULL_

    grp_104 ::= ON DELETE grp_105

    opt_106 ::= grp_104
           | $empty

    seq_107 ::= ON UPDATE no_action_restrict

    opt_108 ::= seq_107
           | $empty

    seq_109 ::= ON UPDATE no_action_restrict

    opt_110 ::= seq_109
           | $empty

    grp_112 ::= NO ACTION
           | RESTRICT
           | CASCADE
           | SET NULL_

    grp_111 ::= ON DELETE grp_112

    opt_113 ::= grp_111
           | $empty

    opt_114 ::= NOT
           | $empty

    seq_115 ::= opt_114 DEFERRABLE

    opt_116 ::= seq_115
           | $empty

    opt_117 ::= NOT
           | $empty

    opt_118 ::= constraint_check_time
           | $empty

    seq_119 ::= COMMA simple_column_name

    list_120 ::= $empty
           | list_120 seq_119

    opt_121 ::= TABLE
           | $empty

    seq_122 ::= COMMA table_privilege

    list_123 ::= $empty
           | list_123 seq_122

    opt_124 ::= column_list
           | $empty

    opt_125 ::= column_list
           | $empty

    opt_126 ::= column_list
           | $empty

    seq_127 ::= COMMA column_identifier

    list_128 ::= $empty
           | list_128 seq_127

    seq_129 ::= COMMA revokee

    list_130 ::= $empty
           | list_130 seq_129

    opt_131 ::= COLUMN
           | $empty

    opt_132 ::= cascade_restrict
           | $empty

    grp_133 ::= PRIMARY KEY
           | FOREIGN KEY constraint_name
           | UNIQUE constraint_name
           | CHECK constraint_name
           | CONSTRAINT constraint_name

    opt_134 ::= COLUMN
           | $empty

    opt_135 ::= NOT
           | $empty

    opt_136 ::= with_set
           | $empty

    opt_137 ::= NO
           | $empty

    seq_138 ::= RETURNS value_data_type

    seq_139 ::= COMMA function_parameter

    list_140 ::= $empty
           | list_140 seq_139

    list_141 ::= $empty
           | list_141 function_element

    opt_142 ::= parameter_name
           | $empty

    seq_143 ::= COMMA column_element

    grp_144 ::= DETERMINISTIC
           | NOT DETERMINISTIC

    grp_145 ::= JAVA
           | DERBY_JDBC_RESULT_SET
           | DERBY

    grp_146 ::= DEFINER
           | INVOKER

    grp_147 ::= NO SQL
           | CONTAINS SQL
           | READS SQL DATA

    grp_148 ::= RETURNS NULL_ ON NULL_ INPUT
           | CALLED ON NULL_ INPUT

    opt_149 ::= UNIQUE
           | $empty

    opt_150 ::= asc_desc
           | $empty

    opt_151 ::= asc_desc
           | $empty

    seq_152 ::= COMMA simple_column_name opt_151

    list_153 ::= $empty
           | list_153 seq_152

    seq_154 ::= COMMA procedure_parameter

    list_155 ::= $empty
           | list_155 seq_154

    list_156 ::= $empty
           | list_156 procedure_element

    grp_157 ::= IN
           | OUT
           | INOUT

    opt_158 ::= grp_157
           | $empty

    opt_159 ::= parameter_name
           | $empty

    grp_160 ::= BLOB
           | BINARY LARGE OBJECT

    grp_162 ::= KILO
           | MEGA
           | GIGA

    opt_163 ::= grp_162
           | $empty

    grp_161 ::= LPAREN num opt_163 RPAREN

    opt_164 ::= grp_161
           | $empty

    grp_165 ::= CHAR
           | CHARACTER

    seq_166 ::= LPAREN num RPAREN

    opt_167 ::= seq_166
           | $empty

    grp_168 ::= CLOB
           | CHARACTER LARGE OBJECT

    grp_170 ::= KILO
           | MEGA
           | GIGA

    opt_171 ::= grp_170
           | $empty

    grp_169 ::= LPAREN num opt_171 RPAREN

    opt_172 ::= grp_169
           | $empty

    grp_173 ::= DECIMAL
           | DEC
           | NUMERIC

    seq_174 ::= COMMA num

    opt_175 ::= seq_174
           | $empty

    seq_176 ::= LPAREN num opt_175 RPAREN

    opt_177 ::= seq_176
           | $empty

    seq_178 ::= LPAREN num RPAREN

    opt_179 ::= seq_178
           | $empty

    grp_180 ::= INT
           | INTEGER

    grp_181 ::= VARCHAR
           | CHAR VARYING
           | CHARACTER VARYING

    seq_182 ::= LPAREN num RPAREN

    opt_183 ::= seq_182
           | $empty

    opt_184 ::= DYNAMIC
           | $empty

    grp_185 ::= DETERMINISTIC
           | NOT DETERMINISTIC

    grp_186 ::= JAVA
           | DERBY

    grp_187 ::= DEFINER
           | INVOKER

    grp_188 ::= NO SQL
           | MODIFIES SQL DATA
           | CONTAINS SQL
           | READS SQL DATA

    grp_189 ::= schema_name AUTHORIZATION user_name
           | schema_name
           | AUTHORIZATION user_name

    seq_190 ::= COMMA sequence_element

    list_191 ::= $empty
           | list_191 seq_190

    grp_192 ::= view_name
           | table_name

    seq_193 ::= COMMA simple_column_name

    list_194 ::= $empty
           | list_194 seq_193

    seq_195 ::= LPAREN simple_column_name list_194 RPAREN

    opt_196 ::= seq_195
           | $empty

    opt_197 ::= order_by_clause
           | $empty

    opt_198 ::= offset_clause
           | $empty

    opt_199 ::= fetch_clause
           | $empty

    opt_200 ::= order_by_clause
           | $empty

    opt_201 ::= offset_clause
           | $empty

    opt_202 ::= fetch_clause
           | $empty

    opt_203 ::= all_distinct
           | $empty

    opt_204 ::= all_distinct
           | $empty

    opt_205 ::= all_distinct
           | $empty

    opt_206 ::= all_distinct
           | $empty

    seq_207 ::= COMMA select_item

    list_208 ::= $empty
           | list_208 seq_207

    opt_209 ::= where_clause
           | $empty

    opt_210 ::= group_by_clause
           | $empty

    opt_211 ::= having_clause
           | $empty

    opt_212 ::= order_by_clause
           | $empty

    opt_213 ::= offset_clause
           | $empty

    opt_214 ::= fetch_clause
           | $empty

    grp_215 ::= table_name
           | correlation_name

    seq_216 ::= AS simple_column_name

    opt_217 ::= seq_216
           | $empty

    seq_218 ::= schema_name DOT

    opt_219 ::= seq_218
           | $empty

    seq_220 ::= schema_name DOT

    opt_221 ::= seq_220
           | $empty

    seq_222 ::= schema_name DOT

    opt_223 ::= seq_222
           | $empty

    grp_225 ::= table_name
           | correlation_name

    grp_224 ::= grp_225 DOT

    opt_226 ::= grp_224
           | $empty

    seq_227 ::= schema_name DOT

    opt_228 ::= seq_227
           | $empty

    seq_229 ::= schema_name DOT

    opt_230 ::= seq_229
           | $empty

    seq_231 ::= schema_name DOT

    opt_232 ::= seq_231
           | $empty

    seq_233 ::= schema_name DOT

    opt_234 ::= seq_233
           | $empty

    seq_235 ::= schema_name DOT

    opt_236 ::= seq_235
           | $empty

    seq_237 ::= schema_name DOT

    opt_238 ::= seq_237
           | $empty

    seq_239 ::= schema_name DOT

    opt_240 ::= seq_239
           | $empty

    seq_241 ::= schema_name DOT

    opt_242 ::= seq_241
           | $empty

    seq_243 ::= COMMA expression

    list_244 ::= $empty
           | list_244 seq_243

    grp_245 ::= PLUS
           | MINUS

    grp_246 ::= STAR
           | DIVIDE
           | MODULE

    grp_247 ::= PLUS
           | MINUS

    opt_248 ::= NOT
           | $empty

    opt_249 ::= expr_list
           | $empty

    opt_250 ::= expr_list
           | $empty

    opt_251 ::= expr_list
           | $empty

    opt_252 ::= sign
           | $empty

    opt_253 ::= sign
           | $empty

    grp_254 ::= NUMBER

    seq_255 ::= WHEN boolean_expression THEN expression

    list_256 ::= $empty
           | list_256 seq_255

    seq_257 ::= ELSE expression

    opt_258 ::= seq_257
           | $empty

    seq_259 ::= COMMA value_expression

    list_260 ::= $empty
           | list_260 seq_259

    seq_261 ::= COMMA value_expression

    list_262 ::= $empty
           | list_262 seq_261

    seq_263 ::= WHEN value_expression list_262 THEN expression

    list_264 ::= $empty
           | list_264 seq_263

    seq_265 ::= ELSE expression

    opt_266 ::= seq_265
           | $empty

    seq_267 ::= COMMA when_operand

    list_268 ::= $empty
           | list_268 seq_267

    seq_269 ::= COMMA when_operand

    list_270 ::= $empty
           | list_270 seq_269

    seq_271 ::= WHEN when_operand list_270 THEN expression

    list_272 ::= $empty
           | list_272 seq_271

    seq_273 ::= ELSE expression

    opt_274 ::= seq_273
           | $empty

    opt_275 ::= NOT
           | $empty

    opt_276 ::= NOT
           | $empty

    seq_277 ::= ESCAPE string

    opt_278 ::= seq_277
           | $empty

    opt_279 ::= NOT
           | $empty

    opt_280 ::= NOT
           | $empty

    opt_281 ::= NOT
           | $empty

    grp_282 ::= ALL
           | ANY
           | SOME

    opt_283 ::= order_by_clause
           | $empty

    opt_284 ::= offset_clause
           | $empty

    opt_285 ::= fetch_clause
           | $empty

    opt_286 ::= for_update_clause
           | $empty

    grp_288 ::= RR
           | RS
           | CS
           | UR

    grp_287 ::= WITH grp_288

    opt_289 ::= grp_287
           | $empty

    seq_291 ::= COMMA simple_column_name

    list_292 ::= $empty
           | list_292 seq_291

    seq_293 ::= OF simple_column_name list_292

    opt_294 ::= seq_293
           | $empty

    grp_290 ::= READ ONLY
           | FETCH ONLY
           | UPDATE opt_294

    seq_295 ::= COMMA table_expression

    list_296 ::= $empty
           | list_296 seq_295

    opt_297 ::= INNER
           | $empty

    grp_298 ::= ON boolean_expression
           | using_clause

    opt_299 ::= OUTER
           | $empty

    grp_300 ::= ON boolean_expression
           | using_clause

    opt_301 ::= OUTER
           | $empty

    grp_302 ::= ON boolean_expression
           | using_clause

    grp_303 ::= table_view_or_function_expression
           | table_expression

    grp_305 ::= LEFT
           | RIGHT

    opt_306 ::= OUTER
           | $empty

    grp_304 ::= grp_305 opt_306
           | INNER

    opt_307 ::= grp_304
           | $empty

    grp_308 ::= table_view_or_function_expression
           | table_expression

    grp_309 ::= table_name
           | view_name

    opt_310 ::= correlation_clause
           | $empty

    grp_311 ::= table_subquery
           | table_function_invocation

    seq_312 ::= COMMA simple_column_name

    list_313 ::= $empty
           | list_313 seq_312

    opt_314 ::= AS
           | $empty

    seq_315 ::= COMMA simple_column_name

    list_316 ::= $empty
           | list_316 seq_315

    seq_317 ::= LPAREN simple_column_name list_316 RPAREN

    opt_318 ::= seq_317
           | $empty

    seq_319 ::= COMMA function_arg

    list_320 ::= $empty
           | list_320 seq_319

    seq_321 ::= function_arg list_320

    opt_322 ::= seq_321
           | $empty

    seq_324 ::= COMMA column_name

    list_325 ::= $empty
           | list_325 seq_324

    seq_326 ::= COMMA column_name

    list_327 ::= $empty
           | list_327 seq_326

    grp_323 ::= column_name list_325
           | ROLLUP LPAREN column_name list_327 RPAREN

    seq_328 ::= COMMA order_by_item

    list_329 ::= $empty
           | list_329 seq_328

    grp_330 ::= column_name
           | columnPosition
           | expression

    opt_331 ::= asc_desc
           | $empty

    grp_332 ::= NULLS FIRST
           | NULLS LAST

    opt_333 ::= grp_332
           | $empty

    seq_335 ::= COMMA value

    list_336 ::= $empty
           | list_336 seq_335

    seq_337 ::= COMMA value

    list_338 ::= $empty
           | list_338 seq_337

    seq_339 ::= COMMA LPAREN value list_338 RPAREN

    list_340 ::= $empty
           | list_340 seq_339

    seq_341 ::= COMMA value

    list_342 ::= $empty
           | list_342 seq_341

    grp_334 ::= VALUES LPAREN value list_336 RPAREN list_340
           | VALUES value list_342

    opt_343 ::= order_by_clause
           | $empty

    opt_344 ::= offset_clause
           | $empty

    opt_345 ::= fetch_clause
           | $empty

%End
