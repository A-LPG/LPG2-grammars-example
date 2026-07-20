-- AUTO-GENERATED from antlr/grammars-v4 sql/postgresql by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=SqlPostgresqlParser
%options package=lpg.grammars.sql.postgresql
%options template=btParserTemplateF.gi
%options import_terminals=SqlPostgresqlLexer.gi
%options automatic_ast=none
%options conflicts

%Define
    $ast_class /.Object./
    $ast_type /.Object./
%End


%Eof
    EOF_TOKEN
%End

%Start
    HarnessStart
%End

%Rules
    HarnessStart ::= root /.
                    setResult("ok");
                ./

    root ::= stmtblock

    stmtblock ::= stmtmulti

    stmtmulti ::= opt_1 list_4

    stmt ::= altereventtrigstmt
           | altercollationstmt
           | alterdatabasestmt
           | alterdatabasesetstmt
           | alterdefaultprivilegesstmt
           | alterdomainstmt
           | alterenumstmt
           | alterextensionstmt
           | alterextensioncontentsstmt
           | alterfdwstmt
           | alterforeignserverstmt
           | alterfunctionstmt
           | altergroupstmt
           | alterobjectdependsstmt
           | alterobjectschemastmt
           | alterownerstmt
           | alteroperatorstmt
           | altertypestmt
           | alterpolicystmt
           | alterseqstmt
           | altersystemstmt
           | altertablestmt
           | altertblspcstmt
           | altercompositetypestmt
           | alterpublicationstmt
           | alterrolesetstmt
           | alterrolestmt
           | altersubscriptionstmt
           | alterstatsstmt
           | altertsconfigurationstmt
           | altertsdictionarystmt
           | alterusermappingstmt
           | analyzestmt
           | callstmt
           | checkpointstmt
           | closeportalstmt
           | clusterstmt
           | commentstmt
           | constraintssetstmt
           | copystmt
           | createamstmt
           | createasstmt
           | createassertionstmt
           | createcaststmt
           | createconversionstmt
           | createdomainstmt
           | createextensionstmt
           | createfdwstmt
           | createforeignserverstmt
           | createforeigntablestmt
           | createfunctionstmt
           | creategroupstmt
           | creatematviewstmt
           | createopclassstmt
           | createopfamilystmt
           | createpublicationstmt
           | alteropfamilystmt
           | createpolicystmt
           | createplangstmt
           | createschemastmt
           | createseqstmt
           | createstmt
           | createsubscriptionstmt
           | createstatsstmt
           | createtablespacestmt
           | createtransformstmt
           | createtrigstmt
           | createeventtrigstmt
           | createrolestmt
           | createuserstmt
           | createusermappingstmt
           | createdbstmt
           | deallocatestmt
           | declarecursorstmt
           | definestmt
           | deletestmt
           | discardstmt
           | dostmt
           | dropcaststmt
           | dropopclassstmt
           | dropopfamilystmt
           | dropownedstmt
           | dropstmt
           | dropsubscriptionstmt
           | droptablespacestmt
           | droptransformstmt
           | droprolestmt
           | dropusermappingstmt
           | dropdbstmt
           | executestmt
           | explainstmt
           | fetchstmt
           | grantstmt
           | grantrolestmt
           | importforeignschemastmt
           | indexstmt
           | insertstmt
           | mergestmt
           | listenstmt
           | refreshmatviewstmt
           | loadstmt
           | lockstmt
           | notifystmt
           | preparestmt
           | reassignownedstmt
           | reindexstmt
           | removeaggrstmt
           | removefuncstmt
           | removeoperstmt
           | renamestmt
           | revokestmt
           | revokerolestmt
           | rulestmt
           | seclabelstmt
           | selectstmt
           | transactionstmt
           | truncatestmt
           | unlistenstmt
           | updatestmt
           | vacuumstmt
           | variableresetstmt
           | variablesetstmt
           | variableshowstmt
           | viewstmt

    callstmt ::= CALL func_application

    createrolestmt ::= CREATE ROLE roleid opt_5 optrolelist

    with_ ::= WITH

    optrolelist ::= list_6

    alteroptrolelist ::= list_7

    alteroptroleelem ::= PASSWORD grp_8
           | grp_9 PASSWORD sconst
           | INHERIT
           | CONNECTION LIMIT signediconst
           | VALID UNTIL sconst
           | USER role_list
           | identifier

    createoptroleelem ::= alteroptroleelem
           | SYSID iconst
           | ADMIN role_list
           | ROLE role_list
           | IN_P grp_10 role_list

    createuserstmt ::= CREATE USER roleid opt_11 optrolelist

    alterrolestmt ::= ALTER grp_12 rolespec opt_13 alteroptrolelist

    in_database_ ::= IN_P DATABASE name

    alterrolesetstmt ::= ALTER grp_14 opt_15 rolespec opt_16 setresetclause

    droprolestmt ::= DROP grp_17 opt_19 role_list

    creategroupstmt ::= CREATE GROUP_P roleid opt_20 optrolelist

    altergroupstmt ::= ALTER GROUP_P rolespec add_drop USER role_list

    add_drop ::= ADD_P
           | DROP

    createschemastmt ::= CREATE SCHEMA opt_22 grp_23 optschemaeltlist

    optschemaname ::= colid

    optschemaeltlist ::= list_25

    schema_stmt ::= createstmt
           | indexstmt
           | createseqstmt
           | createtrigstmt
           | grantstmt
           | viewstmt

    variablesetstmt ::= SET opt_27 set_rest

    set_rest ::= TRANSACTION transaction_mode_list
           | SESSION CHARACTERISTICS AS TRANSACTION transaction_mode_list
           | set_rest_more

    generic_set ::= var_name grp_28 grp_29

    set_rest_more ::= generic_set
           | var_name FROM CURRENT_P
           | TIME ZONE zone_value
           | CATALOG sconst
           | SCHEMA sconst
           | NAMES opt_30
           | ROLE nonreservedword_or_sconst
           | SESSION AUTHORIZATION nonreservedword_or_sconst
           | XML_P OPTION document_or_content
           | TRANSACTION SNAPSHOT sconst

    var_name ::= colid list_32

    var_list ::= var_value list_34

    var_value ::= boolean_or_string_
           | numericonly

    iso_level ::= READ grp_35
           | REPEATABLE READ
           | SERIALIZABLE

    boolean_or_string_ ::= TRUE_P
           | FALSE_P
           | ON
           | nonreservedword_or_sconst

    zone_value ::= sconst
           | identifier
           | constinterval sconst opt_36
           | constinterval OPEN_PAREN iconst CLOSE_PAREN sconst
           | numericonly
           | DEFAULT
           | LOCAL

    encoding_ ::= sconst
           | DEFAULT

    nonreservedword_or_sconst ::= nonreservedword
           | sconst

    variableresetstmt ::= RESET reset_rest

    reset_rest ::= generic_reset
           | TIME ZONE
           | TRANSACTION ISOLATION LEVEL
           | SESSION AUTHORIZATION

    generic_reset ::= var_name
           | ALL

    setresetclause ::= SET set_rest
           | variableresetstmt

    functionsetresetclause ::= SET set_rest_more
           | variableresetstmt

    variableshowstmt ::= SHOW grp_37

    constraintssetstmt ::= SET CONSTRAINTS constraints_set_list constraints_set_mode

    constraints_set_list ::= ALL
           | qualified_name_list

    constraints_set_mode ::= DEFERRED
           | IMMEDIATE

    checkpointstmt ::= CHECKPOINT

    discardstmt ::= DISCARD grp_38

    altertablestmt ::= ALTER TABLE opt_40 relation_expr grp_41
           | ALTER TABLE ALL IN_P TABLESPACE name opt_43 SET TABLESPACE name opt_44
           | ALTER INDEX opt_46 qualified_name grp_47
           | ALTER INDEX ALL IN_P TABLESPACE name opt_49 SET TABLESPACE name opt_50
           | ALTER SEQUENCE opt_52 qualified_name alter_table_cmds
           | ALTER VIEW opt_54 qualified_name alter_table_cmds
           | ALTER MATERIALIZED VIEW opt_56 qualified_name alter_table_cmds
           | ALTER MATERIALIZED VIEW ALL IN_P TABLESPACE name opt_58 SET TABLESPACE name opt_59
           | ALTER FOREIGN TABLE opt_61 relation_expr alter_table_cmds

    alter_table_cmds ::= alter_table_cmd list_63

    partition_cmd ::= ATTACH PARTITION qualified_name partitionboundspec
           | DETACH PARTITION qualified_name

    index_partition_cmd ::= ATTACH PARTITION qualified_name

    alter_table_cmd ::= ADD_P columnDef
           | ADD_P IF_P NOT EXISTS columnDef
           | ADD_P COLUMN columnDef
           | ADD_P COLUMN IF_P NOT EXISTS columnDef
           | ALTER opt_64 colid alter_column_default
           | ALTER opt_65 colid DROP NOT NULL_P
           | ALTER opt_66 colid SET NOT NULL_P
           | ALTER opt_67 colid DROP EXPRESSION
           | ALTER opt_68 colid DROP EXPRESSION IF_P EXISTS
           | ALTER opt_69 colid SET STATISTICS signediconst
           | ALTER opt_70 iconst SET STATISTICS signediconst
           | ALTER opt_71 colid SET reloptions
           | ALTER opt_72 colid RESET reloptions
           | ALTER opt_73 colid SET STORAGE colid
           | ALTER opt_74 colid ADD_P GENERATED generated_when AS IDENTITY_P opt_75
           | ALTER opt_76 colid alter_identity_column_option_list
           | ALTER opt_77 colid DROP IDENTITY_P
           | ALTER opt_78 colid DROP IDENTITY_P IF_P EXISTS
           | DROP opt_79 IF_P EXISTS colid opt_80
           | DROP opt_81 colid opt_82
           | ALTER opt_83 colid opt_84 TYPE_P typename opt_85 opt_86
           | ALTER opt_87 colid alter_generic_options
           | ADD_P tableconstraint
           | ALTER CONSTRAINT name constraintattributespec
           | VALIDATE CONSTRAINT name
           | DROP CONSTRAINT IF_P EXISTS name opt_88
           | DROP CONSTRAINT name opt_89
           | SET WITHOUT OIDS
           | CLUSTER ON name
           | SET WITHOUT CLUSTER
           | SET LOGGED
           | SET UNLOGGED
           | ENABLE_P TRIGGER name
           | ENABLE_P ALWAYS TRIGGER name
           | ENABLE_P REPLICA TRIGGER name
           | ENABLE_P TRIGGER ALL
           | ENABLE_P TRIGGER USER
           | DISABLE_P TRIGGER name
           | DISABLE_P TRIGGER ALL
           | DISABLE_P TRIGGER USER
           | ENABLE_P RULE name
           | ENABLE_P ALWAYS RULE name
           | ENABLE_P REPLICA RULE name
           | DISABLE_P RULE name
           | INHERIT qualified_name
           | NO INHERIT qualified_name
           | OF any_name
           | NOT OF
           | OWNER TO rolespec
           | SET TABLESPACE name
           | SET reloptions
           | RESET reloptions
           | REPLICA IDENTITY_P replica_identity
           | ENABLE_P ROW LEVEL SECURITY
           | DISABLE_P ROW LEVEL SECURITY
           | FORCE ROW LEVEL SECURITY
           | NO FORCE ROW LEVEL SECURITY
           | alter_generic_options

    alter_column_default ::= SET DEFAULT a_expr
           | DROP DEFAULT

    drop_behavior_ ::= CASCADE
           | RESTRICT

    collate_clause_ ::= COLLATE any_name

    alter_using ::= USING a_expr

    replica_identity ::= NOTHING
           | FULL
           | DEFAULT
           | USING INDEX name

    reloptions ::= OPEN_PAREN reloption_list CLOSE_PAREN

    reloptions_ ::= WITH reloptions

    reloption_list ::= reloption_elem list_91

    reloption_elem ::= colLabel opt_95

    alter_identity_column_option_list ::= list_96

    alter_identity_column_option ::= RESTART opt_99
           | SET grp_100

    partitionboundspec ::= FOR VALUES WITH OPEN_PAREN hash_partbound CLOSE_PAREN
           | FOR VALUES IN_P OPEN_PAREN expr_list CLOSE_PAREN
           | FOR VALUES FROM OPEN_PAREN expr_list CLOSE_PAREN TO OPEN_PAREN expr_list CLOSE_PAREN
           | DEFAULT

    hash_partbound_elem ::= nonreservedword iconst

    hash_partbound ::= hash_partbound_elem list_102

    altercompositetypestmt ::= ALTER TYPE_P any_name alter_type_cmds

    alter_type_cmds ::= alter_type_cmd list_104

    alter_type_cmd ::= ADD_P ATTRIBUTE tablefuncelement opt_105
           | DROP ATTRIBUTE opt_107 colid opt_108
           | ALTER ATTRIBUTE colid opt_109 TYPE_P typename opt_110 opt_111

    closeportalstmt ::= CLOSE grp_112

    copystmt ::= COPY opt_113 qualified_name opt_114 copy_from opt_115 copy_file_name opt_116 opt_117 copy_options opt_118
           | COPY OPEN_PAREN preparablestmt CLOSE_PAREN TO opt_119 copy_file_name opt_120 copy_options

    copy_from ::= FROM
           | TO

    program_ ::= PROGRAM

    copy_file_name ::= sconst
           | STDIN
           | STDOUT

    copy_options ::= copy_opt_list
           | OPEN_PAREN copy_generic_opt_list CLOSE_PAREN

    copy_opt_list ::= list_121

    copy_opt_item ::= BINARY
           | FREEZE
           | DELIMITER opt_122 sconst
           | NULL_P opt_123 sconst
           | CSV
           | HEADER_P
           | QUOTE opt_124 sconst
           | ESCAPE opt_125 sconst
           | FORCE QUOTE columnlist
           | FORCE QUOTE STAR
           | FORCE NOT NULL_P columnlist
           | FORCE NULL_P columnlist
           | ENCODING sconst

    binary_ ::= BINARY

    copy_delimiter ::= opt_126 DELIMITERS sconst

    using_ ::= USING

    copy_generic_opt_list ::= copy_generic_opt_elem list_128

    copy_generic_opt_elem ::= colLabel opt_129

    copy_generic_opt_arg ::= boolean_or_string_
           | numericonly
           | STAR
           | OPEN_PAREN copy_generic_opt_arg_list CLOSE_PAREN

    copy_generic_opt_arg_list ::= copy_generic_opt_arg_list_item list_131

    copy_generic_opt_arg_list_item ::= boolean_or_string_

    createstmt ::= CREATE opt_132 TABLE opt_134 qualified_name grp_135

    opttemp ::= TEMPORARY
           | TEMP
           | LOCAL grp_155
           | GLOBAL grp_156
           | UNLOGGED

    opttableelementlist ::= tableelementlist

    opttypedtableelementlist ::= OPEN_PAREN typedtableelementlist CLOSE_PAREN

    tableelementlist ::= tableelement list_158

    typedtableelementlist ::= typedtableelement list_160

    tableelement ::= tableconstraint
           | tablelikeclause
           | columnDef

    typedtableelement ::= columnOptions
           | tableconstraint

    columnDef ::= colid typename opt_161 colquallist

    columnOptions ::= colid opt_163 colquallist

    colquallist ::= list_164

    colconstraint ::= CONSTRAINT name colconstraintelem
           | colconstraintelem
           | constraintattr
           | COLLATE any_name

    colconstraintelem ::= NOT NULL_P
           | NULL_P
           | UNIQUE opt_165 opt_166
           | PRIMARY KEY opt_167 opt_168
           | CHECK OPEN_PAREN a_expr CLOSE_PAREN opt_169
           | DEFAULT b_expr
           | GENERATED generated_when AS grp_170
           | REFERENCES qualified_name opt_172 opt_173 opt_174

    generated_when ::= ALWAYS
           | BY DEFAULT

    constraintattr ::= DEFERRABLE
           | NOT DEFERRABLE
           | INITIALLY grp_175

    tablelikeclause ::= LIKE qualified_name tablelikeoptionlist

    tablelikeoptionlist ::= list_178

    tablelikeoption ::= COMMENTS
           | CONSTRAINTS
           | DEFAULTS
           | IDENTITY_P
           | GENERATED
           | INDEXES
           | STATISTICS
           | STORAGE
           | ALL

    tableconstraint ::= CONSTRAINT name constraintelem
           | constraintelem

    constraintelem ::= CHECK OPEN_PAREN a_expr CLOSE_PAREN constraintattributespec
           | UNIQUE grp_179
           | PRIMARY KEY grp_183
           | EXCLUDE opt_187 OPEN_PAREN exclusionconstraintlist CLOSE_PAREN opt_188 opt_189 opt_190 opt_191 constraintattributespec
           | FOREIGN KEY OPEN_PAREN columnlist CLOSE_PAREN REFERENCES qualified_name opt_192 opt_193 opt_194 constraintattributespec

    no_inherit_ ::= NO INHERIT

    column_list_ ::= OPEN_PAREN columnlist CLOSE_PAREN

    columnlist ::= columnElem list_196

    columnElem ::= colid

    c_include_ ::= INCLUDE OPEN_PAREN columnlist CLOSE_PAREN

    key_match ::= MATCH grp_197

    exclusionconstraintlist ::= exclusionconstraintelem list_199

    exclusionconstraintelem ::= index_elem WITH grp_200

    exclusionwhereclause ::= WHERE OPEN_PAREN a_expr CLOSE_PAREN

    key_actions ::= key_update
           | key_delete
           | key_update key_delete
           | key_delete key_update

    key_update ::= ON UPDATE key_action

    key_delete ::= ON DELETE_P key_action

    key_action ::= NO ACTION
           | RESTRICT
           | CASCADE
           | SET grp_201

    optinherit ::= INHERITS OPEN_PAREN qualified_name_list CLOSE_PAREN

    optpartitionspec ::= partitionspec

    partitionspec ::= PARTITION BY colid OPEN_PAREN part_params CLOSE_PAREN

    part_params ::= part_elem list_203

    part_elem ::= colid opt_204 opt_205
           | func_expr_windowless opt_206 opt_207
           | OPEN_PAREN a_expr CLOSE_PAREN opt_208 opt_209

    table_access_method_clause ::= USING name

    optwith ::= WITH reloptions
           | WITHOUT OIDS

    oncommitoption ::= ON COMMIT grp_210

    opttablespace ::= TABLESPACE name

    optconstablespace ::= USING INDEX TABLESPACE name

    existingindex ::= USING INDEX name

    createstatsstmt ::= CREATE STATISTICS opt_212 any_name opt_213 ON expr_list FROM from_list

    alterstatsstmt ::= ALTER STATISTICS opt_215 any_name SET STATISTICS signediconst

    createasstmt ::= CREATE opt_216 TABLE opt_218 create_as_target AS selectstmt opt_219

    create_as_target ::= qualified_name opt_220 opt_221 opt_222 opt_223 opt_224

    with_data_ ::= WITH grp_225

    creatematviewstmt ::= CREATE opt_226 MATERIALIZED VIEW opt_228 create_mv_target AS selectstmt opt_229

    create_mv_target ::= qualified_name opt_230 opt_231 opt_232 opt_233

    optnolog ::= UNLOGGED

    refreshmatviewstmt ::= REFRESH MATERIALIZED VIEW opt_234 qualified_name opt_235

    createseqstmt ::= CREATE opt_236 SEQUENCE opt_238 qualified_name opt_239

    alterseqstmt ::= ALTER SEQUENCE opt_241 qualified_name seqoptlist

    optseqoptlist ::= seqoptlist

    optparenthesizedseqoptlist ::= OPEN_PAREN seqoptlist CLOSE_PAREN

    seqoptlist ::= list_242

    seqoptelem ::= AS simpletypename
           | CACHE numericonly
           | CYCLE
           | INCREMENT opt_243 numericonly
           | MAXVALUE numericonly
           | MINVALUE numericonly
           | NO grp_244
           | OWNED BY any_name
           | SEQUENCE NAME_P any_name
           | START opt_245 numericonly
           | RESTART opt_246 opt_247

    by_ ::= BY

    numericonly ::= fconst
           | PLUS fconst
           | MINUS fconst
           | signediconst

    numericonly_list ::= numericonly list_249

    createplangstmt ::= CREATE opt_250 opt_251 opt_252 LANGUAGE name opt_256

    trusted_ ::= TRUSTED

    handler_name ::= name opt_257

    inline_handler_ ::= INLINE_P handler_name

    validator_clause ::= VALIDATOR handler_name
           | NO VALIDATOR

    validator_ ::= validator_clause

    procedural_ ::= PROCEDURAL

    createtablespacestmt ::= CREATE TABLESPACE name opt_258 LOCATION sconst opt_259

    opttablespaceowner ::= OWNER rolespec

    droptablespacestmt ::= DROP TABLESPACE opt_261 name

    createextensionstmt ::= CREATE EXTENSION opt_263 name opt_264 create_extension_opt_list

    create_extension_opt_list ::= list_265

    create_extension_opt_item ::= SCHEMA name
           | VERSION_P nonreservedword_or_sconst
           | FROM nonreservedword_or_sconst
           | CASCADE

    alterextensionstmt ::= ALTER EXTENSION name UPDATE alter_extension_opt_list

    alter_extension_opt_list ::= list_266

    alter_extension_opt_item ::= TO nonreservedword_or_sconst

    alterextensioncontentsstmt ::= ALTER EXTENSION name add_drop object_type_name name
           | ALTER EXTENSION name add_drop object_type_any_name any_name
           | ALTER EXTENSION name add_drop AGGREGATE aggregate_with_argtypes
           | ALTER EXTENSION name add_drop CAST OPEN_PAREN typename AS typename CLOSE_PAREN
           | ALTER EXTENSION name add_drop DOMAIN_P typename
           | ALTER EXTENSION name add_drop FUNCTION function_with_argtypes
           | ALTER EXTENSION name add_drop OPERATOR operator_with_argtypes
           | ALTER EXTENSION name add_drop OPERATOR CLASS any_name USING name
           | ALTER EXTENSION name add_drop OPERATOR FAMILY any_name USING name
           | ALTER EXTENSION name add_drop PROCEDURE function_with_argtypes
           | ALTER EXTENSION name add_drop ROUTINE function_with_argtypes
           | ALTER EXTENSION name add_drop TRANSFORM FOR typename LANGUAGE name
           | ALTER EXTENSION name add_drop TYPE_P typename

    createfdwstmt ::= CREATE FOREIGN DATA_P WRAPPER name opt_267 opt_268

    fdw_option ::= HANDLER handler_name
           | NO HANDLER
           | VALIDATOR handler_name
           | NO VALIDATOR

    fdw_options ::= list_269

    fdw_options_ ::= fdw_options

    alterfdwstmt ::= ALTER FOREIGN DATA_P WRAPPER name opt_270 alter_generic_options
           | ALTER FOREIGN DATA_P WRAPPER name fdw_options

    create_generic_options ::= OPTIONS OPEN_PAREN generic_option_list CLOSE_PAREN

    generic_option_list ::= generic_option_elem list_272

    alter_generic_options ::= OPTIONS OPEN_PAREN alter_generic_option_list CLOSE_PAREN

    alter_generic_option_list ::= alter_generic_option_elem list_274

    alter_generic_option_elem ::= generic_option_elem
           | SET generic_option_elem
           | ADD_P generic_option_elem
           | DROP generic_option_name

    generic_option_elem ::= generic_option_name generic_option_arg

    generic_option_name ::= colLabel

    generic_option_arg ::= sconst

    createforeignserverstmt ::= CREATE SERVER name opt_275 opt_276 FOREIGN DATA_P WRAPPER name opt_277
           | CREATE SERVER IF_P NOT EXISTS name opt_278 opt_279 FOREIGN DATA_P WRAPPER name opt_280

    type_ ::= TYPE_P sconst

    foreign_server_version ::= VERSION_P grp_281

    foreign_server_version_ ::= foreign_server_version

    alterforeignserverstmt ::= ALTER SERVER name grp_282

    createforeigntablestmt ::= CREATE FOREIGN TABLE qualified_name OPEN_PAREN opt_284 CLOSE_PAREN opt_285 SERVER name opt_286
           | CREATE FOREIGN TABLE IF_P NOT EXISTS qualified_name OPEN_PAREN opt_287 CLOSE_PAREN opt_288 SERVER name opt_289
           | CREATE FOREIGN TABLE qualified_name PARTITION OF qualified_name opt_290 partitionboundspec SERVER name opt_291
           | CREATE FOREIGN TABLE IF_P NOT EXISTS qualified_name PARTITION OF qualified_name opt_292 partitionboundspec SERVER name opt_293

    importforeignschemastmt ::= IMPORT_P FOREIGN SCHEMA name opt_294 FROM SERVER name INTO name opt_295

    import_qualification_type ::= LIMIT TO
           | EXCEPT

    import_qualification ::= import_qualification_type OPEN_PAREN relation_expr_list CLOSE_PAREN

    createusermappingstmt ::= CREATE USER MAPPING FOR auth_ident SERVER name opt_296
           | CREATE USER MAPPING IF_P NOT EXISTS FOR auth_ident SERVER name opt_297

    auth_ident ::= rolespec
           | USER

    dropusermappingstmt ::= DROP USER MAPPING FOR auth_ident SERVER name
           | DROP USER MAPPING IF_P EXISTS FOR auth_ident SERVER name

    alterusermappingstmt ::= ALTER USER MAPPING FOR auth_ident SERVER name alter_generic_options

    createpolicystmt ::= CREATE POLICY name ON qualified_name opt_298 opt_299 opt_300 opt_301 opt_302

    alterpolicystmt ::= ALTER POLICY name ON qualified_name opt_303 opt_304 opt_305

    rowsecurityoptionalexpr ::= USING OPEN_PAREN a_expr CLOSE_PAREN

    rowsecurityoptionalwithcheck ::= WITH CHECK OPEN_PAREN a_expr CLOSE_PAREN

    rowsecuritydefaulttorole ::= TO role_list

    rowsecurityoptionaltorole ::= TO role_list

    rowsecuritydefaultpermissive ::= AS identifier

    rowsecuritydefaultforcmd ::= FOR row_security_cmd

    row_security_cmd ::= ALL
           | SELECT
           | INSERT
           | UPDATE
           | DELETE_P

    createamstmt ::= CREATE ACCESS METHOD name TYPE_P am_type HANDLER handler_name

    am_type ::= INDEX
           | TABLE

    createtrigstmt ::= CREATE TRIGGER name triggeractiontime triggerevents ON qualified_name opt_306 opt_307 opt_308 EXECUTE function_or_procedure func_name OPEN_PAREN triggerfuncargs CLOSE_PAREN
           | CREATE CONSTRAINT TRIGGER name AFTER triggerevents ON qualified_name opt_309 constraintattributespec FOR EACH ROW opt_310 EXECUTE function_or_procedure func_name OPEN_PAREN triggerfuncargs CLOSE_PAREN

    triggeractiontime ::= BEFORE
           | AFTER
           | INSTEAD OF

    triggerevents ::= triggeroneevent list_312

    triggeroneevent ::= INSERT
           | DELETE_P
           | UPDATE
           | UPDATE OF columnlist
           | TRUNCATE

    triggerreferencing ::= REFERENCING triggertransitions

    triggertransitions ::= list_313

    triggertransition ::= transitionoldornew transitionrowortable opt_314 transitionrelname

    transitionoldornew ::= NEW
           | OLD

    transitionrowortable ::= TABLE
           | ROW

    transitionrelname ::= colid

    triggerforspec ::= FOR opt_315 triggerfortype

    triggerforopteach ::= EACH

    triggerfortype ::= ROW
           | STATEMENT

    triggerwhen ::= WHEN OPEN_PAREN a_expr CLOSE_PAREN

    function_or_procedure ::= FUNCTION
           | PROCEDURE

    triggerfuncargs ::= grp_316 list_318

    triggerfuncarg ::= iconst
           | fconst
           | sconst
           | colLabel

    optconstrfromtable ::= FROM qualified_name

    constraintattributespec ::= list_319

    constraintattributeElem ::= NOT DEFERRABLE
           | DEFERRABLE
           | INITIALLY IMMEDIATE
           | INITIALLY DEFERRED
           | NOT VALID
           | NO INHERIT

    createeventtrigstmt ::= CREATE EVENT TRIGGER name ON colLabel EXECUTE function_or_procedure func_name OPEN_PAREN CLOSE_PAREN
           | CREATE EVENT TRIGGER name ON colLabel WHEN event_trigger_when_list EXECUTE function_or_procedure func_name OPEN_PAREN CLOSE_PAREN

    event_trigger_when_list ::= event_trigger_when_item list_321

    event_trigger_when_item ::= colid IN_P OPEN_PAREN event_trigger_value_list CLOSE_PAREN

    event_trigger_value_list ::= sconst list_323

    altereventtrigstmt ::= ALTER EVENT TRIGGER name enable_trigger

    enable_trigger ::= ENABLE_P
           | ENABLE_P REPLICA
           | ENABLE_P ALWAYS
           | DISABLE_P

    createassertionstmt ::= CREATE ASSERTION any_name CHECK OPEN_PAREN a_expr CLOSE_PAREN constraintattributespec

    definestmt ::= CREATE opt_324 AGGREGATE func_name aggr_args definition
           | CREATE opt_325 AGGREGATE func_name old_aggr_definition
           | CREATE OPERATOR any_operator definition
           | CREATE TYPE_P any_name definition
           | CREATE TYPE_P any_name
           | CREATE TYPE_P any_name AS OPEN_PAREN opt_326 CLOSE_PAREN
           | CREATE TYPE_P any_name AS ENUM_P OPEN_PAREN opt_327 CLOSE_PAREN
           | CREATE TYPE_P any_name AS RANGE definition
           | CREATE TEXT_P SEARCH PARSER any_name definition
           | CREATE TEXT_P SEARCH DICTIONARY any_name definition
           | CREATE TEXT_P SEARCH TEMPLATE any_name definition
           | CREATE TEXT_P SEARCH CONFIGURATION any_name definition
           | CREATE COLLATION any_name definition
           | CREATE COLLATION IF_P NOT EXISTS any_name definition
           | CREATE COLLATION any_name FROM any_name
           | CREATE COLLATION IF_P NOT EXISTS any_name FROM any_name

    definition ::= OPEN_PAREN def_list CLOSE_PAREN

    def_list ::= def_elem list_329

    def_elem ::= colLabel opt_331

    def_arg ::= func_type
           | reserved_keyword
           | qual_all_op
           | numericonly
           | sconst
           | NONE

    old_aggr_definition ::= OPEN_PAREN old_aggr_list CLOSE_PAREN

    old_aggr_list ::= old_aggr_elem list_333

    old_aggr_elem ::= identifier EQUAL def_arg

    enum_val_list_ ::= enum_val_list

    enum_val_list ::= sconst list_335

    alterenumstmt ::= ALTER TYPE_P any_name ADD_P VALUE_P opt_336 sconst
           | ALTER TYPE_P any_name ADD_P VALUE_P opt_337 sconst BEFORE sconst
           | ALTER TYPE_P any_name ADD_P VALUE_P opt_338 sconst AFTER sconst
           | ALTER TYPE_P any_name RENAME VALUE_P sconst TO sconst

    if_not_exists_ ::= IF_P NOT EXISTS

    createopclassstmt ::= CREATE OPERATOR CLASS any_name opt_339 FOR TYPE_P typename USING name opt_340 AS opclass_item_list

    opclass_item_list ::= opclass_item list_342

    opclass_item ::= OPERATOR iconst any_operator opt_343 opt_344
           | OPERATOR iconst operator_with_argtypes opt_345 opt_346
           | FUNCTION iconst function_with_argtypes
           | FUNCTION iconst OPEN_PAREN type_list CLOSE_PAREN function_with_argtypes
           | STORAGE typename

    default_ ::= DEFAULT

    opfamily_ ::= FAMILY any_name

    opclass_purpose ::= FOR SEARCH
           | FOR ORDER BY any_name

    recheck_ ::= RECHECK

    createopfamilystmt ::= CREATE OPERATOR FAMILY any_name USING name

    alteropfamilystmt ::= ALTER OPERATOR FAMILY any_name USING name ADD_P opclass_item_list
           | ALTER OPERATOR FAMILY any_name USING name DROP opclass_drop_list

    opclass_drop_list ::= opclass_drop list_348

    opclass_drop ::= OPERATOR iconst OPEN_PAREN type_list CLOSE_PAREN
           | FUNCTION iconst OPEN_PAREN type_list CLOSE_PAREN

    dropopclassstmt ::= DROP OPERATOR CLASS any_name USING name opt_349
           | DROP OPERATOR CLASS IF_P EXISTS any_name USING name opt_350

    dropopfamilystmt ::= DROP OPERATOR FAMILY any_name USING name opt_351
           | DROP OPERATOR FAMILY IF_P EXISTS any_name USING name opt_352

    dropownedstmt ::= DROP OWNED BY role_list opt_353

    reassignownedstmt ::= REASSIGN OWNED BY role_list TO rolespec

    dropstmt ::= DROP object_type_any_name IF_P EXISTS any_name_list_ opt_354
           | DROP object_type_any_name any_name_list_ opt_355
           | DROP drop_type_name IF_P EXISTS name_list opt_356
           | DROP drop_type_name name_list opt_357
           | DROP object_type_name_on_any_name name ON any_name opt_358
           | DROP object_type_name_on_any_name IF_P EXISTS name ON any_name opt_359
           | DROP TYPE_P type_name_list opt_360
           | DROP TYPE_P IF_P EXISTS type_name_list opt_361
           | DROP DOMAIN_P type_name_list opt_362
           | DROP DOMAIN_P IF_P EXISTS type_name_list opt_363
           | DROP INDEX CONCURRENTLY any_name_list_ opt_364
           | DROP INDEX CONCURRENTLY IF_P EXISTS any_name_list_ opt_365

    object_type_any_name ::= TABLE
           | SEQUENCE
           | VIEW
           | MATERIALIZED VIEW
           | INDEX
           | FOREIGN TABLE
           | COLLATION
           | CONVERSION_P
           | STATISTICS
           | TEXT_P SEARCH PARSER
           | TEXT_P SEARCH DICTIONARY
           | TEXT_P SEARCH TEMPLATE
           | TEXT_P SEARCH CONFIGURATION

    object_type_name ::= drop_type_name
           | DATABASE
           | ROLE
           | SUBSCRIPTION
           | TABLESPACE

    drop_type_name ::= ACCESS METHOD
           | EVENT TRIGGER
           | EXTENSION
           | FOREIGN DATA_P WRAPPER
           | opt_366 LANGUAGE
           | PUBLICATION
           | SCHEMA
           | SERVER

    object_type_name_on_any_name ::= POLICY
           | RULE
           | TRIGGER

    any_name_list_ ::= any_name list_368

    any_name ::= colid opt_369

    attrs ::= list_371

    type_name_list ::= typename list_373

    truncatestmt ::= TRUNCATE opt_374 relation_expr_list opt_375 opt_376

    restart_seqs_ ::= CONTINUE_P IDENTITY_P
           | RESTART IDENTITY_P

    commentstmt ::= COMMENT ON object_type_any_name any_name IS comment_text
           | COMMENT ON COLUMN any_name IS comment_text
           | COMMENT ON object_type_name name IS comment_text
           | COMMENT ON TYPE_P typename IS comment_text
           | COMMENT ON DOMAIN_P typename IS comment_text
           | COMMENT ON AGGREGATE aggregate_with_argtypes IS comment_text
           | COMMENT ON FUNCTION function_with_argtypes IS comment_text
           | COMMENT ON OPERATOR operator_with_argtypes IS comment_text
           | COMMENT ON CONSTRAINT name ON any_name IS comment_text
           | COMMENT ON CONSTRAINT name ON DOMAIN_P any_name IS comment_text
           | COMMENT ON object_type_name_on_any_name name ON any_name IS comment_text
           | COMMENT ON PROCEDURE function_with_argtypes IS comment_text
           | COMMENT ON ROUTINE function_with_argtypes IS comment_text
           | COMMENT ON TRANSFORM FOR typename LANGUAGE name IS comment_text
           | COMMENT ON OPERATOR CLASS any_name USING name IS comment_text
           | COMMENT ON OPERATOR FAMILY any_name USING name IS comment_text
           | COMMENT ON LARGE_P OBJECT_P numericonly IS comment_text
           | COMMENT ON CAST OPEN_PAREN typename AS typename CLOSE_PAREN IS comment_text

    comment_text ::= sconst
           | NULL_P

    seclabelstmt ::= SECURITY LABEL opt_377 ON object_type_any_name any_name IS security_label
           | SECURITY LABEL opt_378 ON COLUMN any_name IS security_label
           | SECURITY LABEL opt_379 ON object_type_name name IS security_label
           | SECURITY LABEL opt_380 ON TYPE_P typename IS security_label
           | SECURITY LABEL opt_381 ON DOMAIN_P typename IS security_label
           | SECURITY LABEL opt_382 ON AGGREGATE aggregate_with_argtypes IS security_label
           | SECURITY LABEL opt_383 ON FUNCTION function_with_argtypes IS security_label
           | SECURITY LABEL opt_384 ON LARGE_P OBJECT_P numericonly IS security_label
           | SECURITY LABEL opt_385 ON PROCEDURE function_with_argtypes IS security_label
           | SECURITY LABEL opt_386 ON ROUTINE function_with_argtypes IS security_label

    provider_ ::= FOR nonreservedword_or_sconst

    security_label ::= sconst
           | NULL_P

    fetchstmt ::= FETCH fetch_args
           | MOVE fetch_args

    fetch_args ::= cursor_name
           | from_in cursor_name
           | NEXT opt_387 cursor_name
           | PRIOR opt_388 cursor_name
           | FIRST_P opt_389 cursor_name
           | LAST_P opt_390 cursor_name
           | ABSOLUTE_P signediconst opt_391 cursor_name
           | RELATIVE_P signediconst opt_392 cursor_name
           | signediconst opt_393 cursor_name
           | ALL opt_394 cursor_name
           | FORWARD opt_395 cursor_name
           | FORWARD signediconst opt_396 cursor_name
           | FORWARD ALL opt_397 cursor_name
           | BACKWARD opt_398 cursor_name
           | BACKWARD signediconst opt_399 cursor_name
           | BACKWARD ALL opt_400 cursor_name

    from_in ::= FROM
           | IN_P

    from_in_ ::= from_in

    grantstmt ::= GRANT privileges ON privilege_target TO grantee_list opt_401

    revokestmt ::= REVOKE privileges ON privilege_target FROM grantee_list opt_402
           | REVOKE GRANT OPTION FOR privileges ON privilege_target FROM grantee_list opt_403

    privileges ::= privilege_list
           | ALL
           | ALL PRIVILEGES
           | ALL OPEN_PAREN columnlist CLOSE_PAREN
           | ALL PRIVILEGES OPEN_PAREN columnlist CLOSE_PAREN

    privilege_list ::= privilege list_405

    privilege ::= SELECT opt_406
           | REFERENCES opt_407
           | CREATE opt_408
           | colid opt_409

    privilege_target ::= qualified_name_list
           | TABLE qualified_name_list
           | SEQUENCE qualified_name_list
           | FOREIGN DATA_P WRAPPER name_list
           | FOREIGN SERVER name_list
           | FUNCTION function_with_argtypes_list
           | PROCEDURE function_with_argtypes_list
           | ROUTINE function_with_argtypes_list
           | DATABASE name_list
           | DOMAIN_P any_name_list_
           | LANGUAGE name_list
           | LARGE_P OBJECT_P numericonly_list
           | SCHEMA name_list
           | TABLESPACE name_list
           | TYPE_P any_name_list_
           | ALL TABLES IN_P SCHEMA name_list
           | ALL SEQUENCES IN_P SCHEMA name_list
           | ALL FUNCTIONS IN_P SCHEMA name_list
           | ALL PROCEDURES IN_P SCHEMA name_list
           | ALL ROUTINES IN_P SCHEMA name_list

    grantee_list ::= grantee list_411

    grantee ::= rolespec
           | GROUP_P rolespec

    grant_grant_option_ ::= WITH GRANT OPTION

    grantrolestmt ::= GRANT privilege_list TO role_list opt_412 opt_413

    revokerolestmt ::= REVOKE privilege_list FROM role_list opt_414 opt_415
           | REVOKE ADMIN OPTION FOR privilege_list FROM role_list opt_416 opt_417

    grant_admin_option_ ::= WITH ADMIN OPTION

    granted_by_ ::= GRANTED BY rolespec

    alterdefaultprivilegesstmt ::= ALTER DEFAULT PRIVILEGES defacloptionlist defaclaction

    defacloptionlist ::= list_418

    defacloption ::= IN_P SCHEMA name_list
           | FOR ROLE role_list
           | FOR USER role_list

    defaclaction ::= GRANT privileges ON defacl_privilege_target TO grantee_list opt_419
           | REVOKE privileges ON defacl_privilege_target FROM grantee_list opt_420
           | REVOKE GRANT OPTION FOR privileges ON defacl_privilege_target FROM grantee_list opt_421

    defacl_privilege_target ::= TABLES
           | FUNCTIONS
           | ROUTINES
           | SEQUENCES
           | TYPES_P
           | SCHEMAS

    indexstmt ::= CREATE opt_422 INDEX opt_423 opt_426 ON relation_expr opt_427 OPEN_PAREN index_params CLOSE_PAREN opt_428 opt_429 opt_430 opt_431 opt_432
           | CREATE opt_433 INDEX opt_434 opt_435 name ON relation_expr opt_436 OPEN_PAREN index_params CLOSE_PAREN opt_437 opt_438 opt_439 opt_440 opt_441

    unique_ ::= UNIQUE

    nulls_distinct ::= NULLS_P opt_442 DISTINCT

    single_name_ ::= colid

    concurrently_ ::= CONCURRENTLY

    index_name_ ::= name

    access_method_clause ::= USING name

    index_params ::= index_elem list_444

    index_elem_options ::= opt_445 opt_446 opt_447 opt_448
           | opt_449 any_name reloptions opt_450 opt_451

    index_elem ::= colid index_elem_options
           | func_expr_windowless index_elem_options
           | OPEN_PAREN a_expr CLOSE_PAREN index_elem_options

    include_ ::= INCLUDE OPEN_PAREN index_including_params CLOSE_PAREN

    index_including_params ::= index_elem list_453

    collate_ ::= COLLATE any_name

    class_ ::= any_name

    asc_desc_ ::= ASC
           | DESC

    nulls_order_ ::= NULLS_P FIRST_P
           | NULLS_P LAST_P

    createfunctionstmt ::= CREATE opt_454 grp_455 func_name func_args_with_defaults opt_458 createfunc_opt_list

    or_replace_ ::= OR REPLACE

    func_args ::= OPEN_PAREN opt_459 CLOSE_PAREN

    func_args_list ::= func_arg list_461

    function_with_argtypes_list ::= function_with_argtypes list_463

    function_with_argtypes ::= func_name func_args
           | type_func_name_keyword
           | colid opt_464

    func_args_with_defaults ::= OPEN_PAREN opt_465 CLOSE_PAREN

    func_args_with_defaults_list ::= func_arg_with_default list_467

    func_arg ::= arg_class opt_468 func_type
           | param_name opt_469 func_type
           | func_type

    arg_class ::= IN_P opt_470
           | OUT_P
           | INOUT
           | VARIADIC

    param_name ::= type_function_name

    func_return ::= func_type

    func_type ::= typename
           | opt_471 type_function_name attrs PERCENT TYPE_P

    func_arg_with_default ::= func_arg opt_474

    aggr_arg ::= func_arg

    aggr_args ::= OPEN_PAREN grp_475 CLOSE_PAREN

    aggr_args_list ::= aggr_arg list_477

    aggregate_with_argtypes ::= func_name aggr_args

    aggregate_with_argtypes_list ::= aggregate_with_argtypes list_479

    createfunc_opt_list ::= list_480

    common_func_opt_item ::= CALLED ON NULL_P INPUT_P
           | RETURNS NULL_P ON NULL_P INPUT_P
           | STRICT_P
           | IMMUTABLE
           | STABLE
           | VOLATILE
           | EXTERNAL SECURITY DEFINER
           | EXTERNAL SECURITY INVOKER
           | SECURITY DEFINER
           | SECURITY INVOKER
           | LEAKPROOF
           | NOT LEAKPROOF
           | COST numericonly
           | ROWS numericonly
           | SUPPORT any_name
           | functionsetresetclause
           | PARALLEL colid

    createfunc_opt_item ::= AS func_as
           | LANGUAGE nonreservedword_or_sconst
           | TRANSFORM transform_type_list
           | WINDOW
           | common_func_opt_item

    func_as ::= sconst
           | sconst COMMA sconst

    transform_type_list ::= FOR TYPE_P typename list_482

    definition_ ::= WITH definition

    table_func_column ::= param_name func_type

    table_func_column_list ::= table_func_column list_484

    alterfunctionstmt ::= ALTER grp_485 function_with_argtypes alterfunc_opt_list opt_486

    alterfunc_opt_list ::= list_487

    restrict_ ::= RESTRICT

    removefuncstmt ::= DROP FUNCTION function_with_argtypes_list opt_488
           | DROP FUNCTION IF_P EXISTS function_with_argtypes_list opt_489
           | DROP PROCEDURE function_with_argtypes_list opt_490
           | DROP PROCEDURE IF_P EXISTS function_with_argtypes_list opt_491
           | DROP ROUTINE function_with_argtypes_list opt_492
           | DROP ROUTINE IF_P EXISTS function_with_argtypes_list opt_493

    removeaggrstmt ::= DROP AGGREGATE aggregate_with_argtypes_list opt_494
           | DROP AGGREGATE IF_P EXISTS aggregate_with_argtypes_list opt_495

    removeoperstmt ::= DROP OPERATOR operator_with_argtypes_list opt_496
           | DROP OPERATOR IF_P EXISTS operator_with_argtypes_list opt_497

    oper_argtypes ::= OPEN_PAREN typename CLOSE_PAREN
           | OPEN_PAREN typename COMMA typename CLOSE_PAREN
           | OPEN_PAREN NONE COMMA typename CLOSE_PAREN
           | OPEN_PAREN typename COMMA NONE CLOSE_PAREN

    any_operator ::= list_499 all_op

    operator_with_argtypes_list ::= operator_with_argtypes list_501

    operator_with_argtypes ::= any_operator oper_argtypes

    dostmt ::= DO dostmt_opt_list

    dostmt_opt_list ::= list_502

    dostmt_opt_item ::= sconst
           | LANGUAGE nonreservedword_or_sconst

    createcaststmt ::= CREATE CAST OPEN_PAREN typename AS typename CLOSE_PAREN WITH FUNCTION function_with_argtypes opt_503
           | CREATE CAST OPEN_PAREN typename AS typename CLOSE_PAREN WITHOUT FUNCTION opt_504
           | CREATE CAST OPEN_PAREN typename AS typename CLOSE_PAREN WITH INOUT opt_505

    cast_context ::= AS IMPLICIT_P
           | AS ASSIGNMENT

    dropcaststmt ::= DROP CAST opt_506 OPEN_PAREN typename AS typename CLOSE_PAREN opt_507

    if_exists_ ::= IF_P EXISTS

    createtransformstmt ::= CREATE opt_508 TRANSFORM FOR typename LANGUAGE name OPEN_PAREN transform_element_list CLOSE_PAREN

    transform_element_list ::= FROM SQL_P WITH FUNCTION function_with_argtypes COMMA TO SQL_P WITH FUNCTION function_with_argtypes
           | TO SQL_P WITH FUNCTION function_with_argtypes COMMA FROM SQL_P WITH FUNCTION function_with_argtypes
           | FROM SQL_P WITH FUNCTION function_with_argtypes
           | TO SQL_P WITH FUNCTION function_with_argtypes

    droptransformstmt ::= DROP TRANSFORM opt_509 FOR typename LANGUAGE name opt_510

    reindexstmt ::= REINDEX opt_511 reindex_target_relation opt_512 qualified_name
           | REINDEX opt_513 SCHEMA opt_514 name
           | REINDEX opt_515 reindex_target_all opt_516 opt_517

    reindex_target_relation ::= INDEX
           | TABLE

    reindex_target_all ::= SYSTEM_P
           | DATABASE

    reindex_option_list ::= OPEN_PAREN utility_option_list CLOSE_PAREN

    altertblspcstmt ::= ALTER TABLESPACE name SET reloptions
           | ALTER TABLESPACE name RESET reloptions

    renamestmt ::= ALTER AGGREGATE aggregate_with_argtypes RENAME TO name
           | ALTER COLLATION any_name RENAME TO name
           | ALTER CONVERSION_P any_name RENAME TO name
           | ALTER DATABASE name RENAME TO name
           | ALTER DOMAIN_P any_name RENAME TO name
           | ALTER DOMAIN_P any_name RENAME CONSTRAINT name TO name
           | ALTER FOREIGN DATA_P WRAPPER name RENAME TO name
           | ALTER FUNCTION function_with_argtypes RENAME TO name
           | ALTER GROUP_P roleid RENAME TO roleid
           | ALTER opt_518 LANGUAGE name RENAME TO name
           | ALTER OPERATOR CLASS any_name USING name RENAME TO name
           | ALTER OPERATOR FAMILY any_name USING name RENAME TO name
           | ALTER POLICY name ON qualified_name RENAME TO name
           | ALTER POLICY IF_P EXISTS name ON qualified_name RENAME TO name
           | ALTER PROCEDURE function_with_argtypes RENAME TO name
           | ALTER PUBLICATION name RENAME TO name
           | ALTER ROUTINE function_with_argtypes RENAME TO name
           | ALTER SCHEMA name RENAME TO name
           | ALTER SERVER name RENAME TO name
           | ALTER SUBSCRIPTION name RENAME TO name
           | ALTER TABLE relation_expr RENAME TO name
           | ALTER TABLE IF_P EXISTS relation_expr RENAME TO name
           | ALTER SEQUENCE qualified_name RENAME TO name
           | ALTER SEQUENCE IF_P EXISTS qualified_name RENAME TO name
           | ALTER VIEW qualified_name RENAME TO name
           | ALTER VIEW IF_P EXISTS qualified_name RENAME TO name
           | ALTER MATERIALIZED VIEW qualified_name RENAME TO name
           | ALTER MATERIALIZED VIEW IF_P EXISTS qualified_name RENAME TO name
           | ALTER INDEX qualified_name RENAME TO name
           | ALTER INDEX IF_P EXISTS qualified_name RENAME TO name
           | ALTER FOREIGN TABLE relation_expr RENAME TO name
           | ALTER FOREIGN TABLE IF_P EXISTS relation_expr RENAME TO name
           | ALTER TABLE relation_expr RENAME opt_519 name TO name
           | ALTER TABLE IF_P EXISTS relation_expr RENAME opt_520 name TO name
           | ALTER VIEW qualified_name RENAME opt_521 name TO name
           | ALTER VIEW IF_P EXISTS qualified_name RENAME opt_522 name TO name
           | ALTER MATERIALIZED VIEW qualified_name RENAME opt_523 name TO name
           | ALTER MATERIALIZED VIEW IF_P EXISTS qualified_name RENAME opt_524 name TO name
           | ALTER TABLE relation_expr RENAME CONSTRAINT name TO name
           | ALTER TABLE IF_P EXISTS relation_expr RENAME CONSTRAINT name TO name
           | ALTER FOREIGN TABLE relation_expr RENAME opt_525 name TO name
           | ALTER FOREIGN TABLE IF_P EXISTS relation_expr RENAME opt_526 name TO name
           | ALTER RULE name ON qualified_name RENAME TO name
           | ALTER TRIGGER name ON qualified_name RENAME TO name
           | ALTER EVENT TRIGGER name RENAME TO name
           | ALTER ROLE roleid RENAME TO roleid
           | ALTER USER roleid RENAME TO roleid
           | ALTER TABLESPACE name RENAME TO name
           | ALTER STATISTICS any_name RENAME TO name
           | ALTER TEXT_P SEARCH PARSER any_name RENAME TO name
           | ALTER TEXT_P SEARCH DICTIONARY any_name RENAME TO name
           | ALTER TEXT_P SEARCH TEMPLATE any_name RENAME TO name
           | ALTER TEXT_P SEARCH CONFIGURATION any_name RENAME TO name
           | ALTER TYPE_P any_name RENAME TO name
           | ALTER TYPE_P any_name RENAME ATTRIBUTE name TO name opt_527

    column_ ::= COLUMN

    set_data_ ::= SET DATA_P

    alterobjectdependsstmt ::= ALTER FUNCTION function_with_argtypes opt_528 DEPENDS ON EXTENSION name
           | ALTER PROCEDURE function_with_argtypes opt_529 DEPENDS ON EXTENSION name
           | ALTER ROUTINE function_with_argtypes opt_530 DEPENDS ON EXTENSION name
           | ALTER TRIGGER name ON qualified_name opt_531 DEPENDS ON EXTENSION name
           | ALTER MATERIALIZED VIEW qualified_name opt_532 DEPENDS ON EXTENSION name
           | ALTER INDEX qualified_name opt_533 DEPENDS ON EXTENSION name

    no_ ::= NO

    alterobjectschemastmt ::= ALTER AGGREGATE aggregate_with_argtypes SET SCHEMA name
           | ALTER COLLATION any_name SET SCHEMA name
           | ALTER CONVERSION_P any_name SET SCHEMA name
           | ALTER DOMAIN_P any_name SET SCHEMA name
           | ALTER EXTENSION name SET SCHEMA name
           | ALTER FUNCTION function_with_argtypes SET SCHEMA name
           | ALTER OPERATOR operator_with_argtypes SET SCHEMA name
           | ALTER OPERATOR CLASS any_name USING name SET SCHEMA name
           | ALTER OPERATOR FAMILY any_name USING name SET SCHEMA name
           | ALTER PROCEDURE function_with_argtypes SET SCHEMA name
           | ALTER ROUTINE function_with_argtypes SET SCHEMA name
           | ALTER TABLE relation_expr SET SCHEMA name
           | ALTER TABLE IF_P EXISTS relation_expr SET SCHEMA name
           | ALTER STATISTICS any_name SET SCHEMA name
           | ALTER TEXT_P SEARCH PARSER any_name SET SCHEMA name
           | ALTER TEXT_P SEARCH DICTIONARY any_name SET SCHEMA name
           | ALTER TEXT_P SEARCH TEMPLATE any_name SET SCHEMA name
           | ALTER TEXT_P SEARCH CONFIGURATION any_name SET SCHEMA name
           | ALTER SEQUENCE qualified_name SET SCHEMA name
           | ALTER SEQUENCE IF_P EXISTS qualified_name SET SCHEMA name
           | ALTER VIEW qualified_name SET SCHEMA name
           | ALTER VIEW IF_P EXISTS qualified_name SET SCHEMA name
           | ALTER MATERIALIZED VIEW qualified_name SET SCHEMA name
           | ALTER MATERIALIZED VIEW IF_P EXISTS qualified_name SET SCHEMA name
           | ALTER FOREIGN TABLE relation_expr SET SCHEMA name
           | ALTER FOREIGN TABLE IF_P EXISTS relation_expr SET SCHEMA name
           | ALTER TYPE_P any_name SET SCHEMA name

    alteroperatorstmt ::= ALTER OPERATOR operator_with_argtypes SET OPEN_PAREN operator_def_list CLOSE_PAREN

    operator_def_list ::= operator_def_elem list_535

    operator_def_elem ::= colLabel EQUAL NONE
           | colLabel EQUAL operator_def_arg

    operator_def_arg ::= func_type
           | reserved_keyword
           | qual_all_op
           | numericonly
           | sconst

    altertypestmt ::= ALTER TYPE_P any_name SET OPEN_PAREN operator_def_list CLOSE_PAREN

    alterownerstmt ::= ALTER AGGREGATE aggregate_with_argtypes OWNER TO rolespec
           | ALTER COLLATION any_name OWNER TO rolespec
           | ALTER CONVERSION_P any_name OWNER TO rolespec
           | ALTER DATABASE name OWNER TO rolespec
           | ALTER DOMAIN_P any_name OWNER TO rolespec
           | ALTER FUNCTION function_with_argtypes OWNER TO rolespec
           | ALTER opt_536 LANGUAGE name OWNER TO rolespec
           | ALTER LARGE_P OBJECT_P numericonly OWNER TO rolespec
           | ALTER OPERATOR operator_with_argtypes OWNER TO rolespec
           | ALTER OPERATOR CLASS any_name USING name OWNER TO rolespec
           | ALTER OPERATOR FAMILY any_name USING name OWNER TO rolespec
           | ALTER PROCEDURE function_with_argtypes OWNER TO rolespec
           | ALTER ROUTINE function_with_argtypes OWNER TO rolespec
           | ALTER SCHEMA name OWNER TO rolespec
           | ALTER TYPE_P any_name OWNER TO rolespec
           | ALTER TABLESPACE name OWNER TO rolespec
           | ALTER STATISTICS any_name OWNER TO rolespec
           | ALTER TEXT_P SEARCH DICTIONARY any_name OWNER TO rolespec
           | ALTER TEXT_P SEARCH CONFIGURATION any_name OWNER TO rolespec
           | ALTER FOREIGN DATA_P WRAPPER name OWNER TO rolespec
           | ALTER SERVER name OWNER TO rolespec
           | ALTER EVENT TRIGGER name OWNER TO rolespec
           | ALTER PUBLICATION name OWNER TO rolespec
           | ALTER SUBSCRIPTION name OWNER TO rolespec

    createpublicationstmt ::= CREATE PUBLICATION name opt_537 opt_538

    publication_for_tables_ ::= publication_for_tables

    publication_for_tables ::= FOR TABLE relation_expr_list
           | FOR ALL TABLES

    alterpublicationstmt ::= ALTER PUBLICATION name SET definition
           | ALTER PUBLICATION name ADD_P TABLE relation_expr_list
           | ALTER PUBLICATION name SET TABLE relation_expr_list
           | ALTER PUBLICATION name DROP TABLE relation_expr_list

    createsubscriptionstmt ::= CREATE SUBSCRIPTION name CONNECTION sconst PUBLICATION publication_name_list opt_539

    publication_name_list ::= publication_name_item list_541

    publication_name_item ::= colLabel

    altersubscriptionstmt ::= ALTER SUBSCRIPTION name SET definition
           | ALTER SUBSCRIPTION name CONNECTION sconst
           | ALTER SUBSCRIPTION name REFRESH PUBLICATION opt_542
           | ALTER SUBSCRIPTION name SET PUBLICATION publication_name_list opt_543
           | ALTER SUBSCRIPTION name ENABLE_P
           | ALTER SUBSCRIPTION name DISABLE_P

    dropsubscriptionstmt ::= DROP SUBSCRIPTION name opt_544
           | DROP SUBSCRIPTION IF_P EXISTS name opt_545

    rulestmt ::= CREATE opt_546 RULE name AS ON event TO qualified_name opt_547 DO opt_548 ruleactionlist

    ruleactionlist ::= NOTHING
           | ruleactionstmt
           | OPEN_PAREN ruleactionmulti CLOSE_PAREN

    ruleactionmulti ::= opt_549 list_552

    ruleactionstmt ::= selectstmt
           | insertstmt
           | updatestmt
           | deletestmt
           | notifystmt

    ruleactionstmtOrEmpty ::= ruleactionstmt

    event ::= SELECT
           | UPDATE
           | DELETE_P
           | INSERT

    instead_ ::= INSTEAD
           | ALSO

    notifystmt ::= NOTIFY colid opt_553

    notify_payload ::= COMMA sconst

    listenstmt ::= LISTEN colid

    unlistenstmt ::= UNLISTEN colid
           | UNLISTEN STAR

    transactionstmt ::= ABORT_P opt_554 opt_555
           | BEGIN_P opt_556 opt_557
           | START TRANSACTION opt_558
           | COMMIT opt_559 opt_560
           | END_P opt_561 opt_562
           | ROLLBACK opt_563 opt_564
           | SAVEPOINT colid
           | RELEASE SAVEPOINT colid
           | RELEASE colid
           | ROLLBACK opt_565 TO SAVEPOINT colid
           | ROLLBACK opt_566 TO colid
           | PREPARE TRANSACTION sconst
           | COMMIT PREPARED sconst
           | ROLLBACK PREPARED sconst

    transaction_ ::= WORK
           | TRANSACTION

    transaction_mode_item ::= ISOLATION LEVEL iso_level
           | READ ONLY
           | READ WRITE
           | DEFERRABLE
           | NOT DEFERRABLE

    transaction_mode_list ::= transaction_mode_item list_569

    transaction_mode_list_or_empty ::= transaction_mode_list

    transaction_chain_ ::= AND opt_570 CHAIN

    viewstmt ::= CREATE opt_572 opt_573 grp_574 AS selectstmt opt_578

    check_option_ ::= WITH opt_580 CHECK OPTION

    loadstmt ::= LOAD file_name

    createdbstmt ::= CREATE DATABASE name opt_581 opt_582

    createdb_opt_list ::= createdb_opt_items

    createdb_opt_items ::= list_583

    createdb_opt_item ::= createdb_opt_name opt_584 grp_585

    createdb_opt_name ::= identifier
           | CONNECTION LIMIT
           | ENCODING
           | LOCATION
           | OWNER
           | TABLESPACE
           | TEMPLATE

    equal_ ::= EQUAL

    alterdatabasestmt ::= ALTER DATABASE name grp_586

    alterdatabasesetstmt ::= ALTER DATABASE name setresetclause

    dropdbstmt ::= DROP DATABASE opt_590 name opt_593

    drop_option_list ::= drop_option list_595

    drop_option ::= FORCE

    altercollationstmt ::= ALTER COLLATION any_name REFRESH VERSION_P

    altersystemstmt ::= ALTER SYSTEM_P grp_596 generic_set

    createdomainstmt ::= CREATE DOMAIN_P any_name opt_597 typename colquallist

    alterdomainstmt ::= ALTER DOMAIN_P any_name grp_598

    as_ ::= AS

    altertsdictionarystmt ::= ALTER TEXT_P SEARCH DICTIONARY any_name definition

    altertsconfigurationstmt ::= ALTER TEXT_P SEARCH CONFIGURATION any_name ADD_P MAPPING FOR name_list any_with any_name_list_
           | ALTER TEXT_P SEARCH CONFIGURATION any_name ALTER MAPPING FOR name_list any_with any_name_list_
           | ALTER TEXT_P SEARCH CONFIGURATION any_name ALTER MAPPING REPLACE any_name any_with any_name
           | ALTER TEXT_P SEARCH CONFIGURATION any_name ALTER MAPPING FOR name_list REPLACE any_name any_with any_name
           | ALTER TEXT_P SEARCH CONFIGURATION any_name DROP MAPPING FOR name_list
           | ALTER TEXT_P SEARCH CONFIGURATION any_name DROP MAPPING IF_P EXISTS FOR name_list

    any_with ::= WITH

    createconversionstmt ::= CREATE opt_602 CONVERSION_P any_name FOR sconst TO sconst FROM any_name

    clusterstmt ::= CLUSTER opt_603 qualified_name opt_604
           | CLUSTER opt_605
           | CLUSTER opt_606 name ON qualified_name

    cluster_index_specification ::= USING name

    vacuumstmt ::= VACUUM opt_607 opt_608 opt_609 opt_610 opt_611
           | VACUUM OPEN_PAREN vac_analyze_option_list CLOSE_PAREN opt_612

    analyzestmt ::= analyze_keyword opt_613 opt_614
           | analyze_keyword OPEN_PAREN vac_analyze_option_list CLOSE_PAREN opt_615

    utility_option_list ::= utility_option_elem list_617

    vac_analyze_option_list ::= vac_analyze_option_elem list_619

    analyze_keyword ::= ANALYZE
           | ANALYSE

    utility_option_elem ::= utility_option_name opt_620

    utility_option_name ::= nonreservedword
           | analyze_keyword
           | FORMAT_LA

    utility_option_arg ::= boolean_or_string_
           | numericonly

    vac_analyze_option_elem ::= vac_analyze_option_name opt_621

    vac_analyze_option_name ::= nonreservedword
           | analyze_keyword

    vac_analyze_option_arg ::= boolean_or_string_
           | numericonly

    analyze_ ::= analyze_keyword

    verbose_ ::= VERBOSE

    full_ ::= FULL

    freeze_ ::= FREEZE

    name_list_ ::= OPEN_PAREN name_list CLOSE_PAREN

    vacuum_relation ::= qualified_name opt_622

    vacuum_relation_list ::= vacuum_relation list_624

    vacuum_relation_list_ ::= vacuum_relation_list

    explainstmt ::= EXPLAIN explainablestmt
           | EXPLAIN analyze_keyword opt_625 explainablestmt
           | EXPLAIN VERBOSE explainablestmt
           | EXPLAIN OPEN_PAREN explain_option_list CLOSE_PAREN explainablestmt

    explainablestmt ::= selectstmt
           | insertstmt
           | updatestmt
           | deletestmt
           | declarecursorstmt
           | createasstmt
           | creatematviewstmt
           | refreshmatviewstmt
           | executestmt

    explain_option_list ::= explain_option_elem list_627

    explain_option_elem ::= explain_option_name opt_628

    explain_option_name ::= nonreservedword
           | analyze_keyword

    explain_option_arg ::= boolean_or_string_
           | numericonly

    preparestmt ::= PREPARE name opt_629 AS preparablestmt

    prep_type_clause ::= OPEN_PAREN type_list CLOSE_PAREN

    preparablestmt ::= selectstmt
           | insertstmt
           | updatestmt
           | deletestmt

    executestmt ::= EXECUTE name opt_630
           | CREATE opt_631 TABLE create_as_target AS EXECUTE name opt_632 opt_633
           | CREATE opt_634 TABLE IF_P NOT EXISTS create_as_target AS EXECUTE name opt_635 opt_636

    execute_param_clause ::= OPEN_PAREN expr_list CLOSE_PAREN

    deallocatestmt ::= DEALLOCATE name
           | DEALLOCATE PREPARE name
           | DEALLOCATE ALL
           | DEALLOCATE PREPARE ALL

    insertstmt ::= opt_637 INSERT INTO insert_target insert_rest opt_638 opt_639

    insert_target ::= qualified_name opt_641

    insert_rest ::= selectstmt
           | OVERRIDING override_kind VALUE_P selectstmt
           | OPEN_PAREN insert_column_list CLOSE_PAREN opt_643 selectstmt
           | DEFAULT VALUES

    override_kind ::= USER
           | SYSTEM_P

    insert_column_list ::= insert_column_item list_645

    insert_column_item ::= colid opt_indirection

    on_conflict_ ::= ON CONFLICT opt_646 DO grp_647

    conf_expr_ ::= OPEN_PAREN index_params CLOSE_PAREN opt_649
           | ON CONSTRAINT name

    returning_clause ::= RETURNING target_list

    mergestmt ::= MERGE opt_650 qualified_name opt_651 USING grp_652 opt_653 ON a_expr grp_654 opt_657

    merge_insert_clause ::= WHEN NOT MATCHED opt_659 opt_660 INSERT opt_662 values_clause

    merge_update_clause ::= WHEN MATCHED opt_664 opt_665 UPDATE SET set_clause_list

    merge_delete_clause ::= WHEN MATCHED opt_666 DELETE_P

    deletestmt ::= opt_667 DELETE_P FROM relation_expr_opt_alias opt_668 opt_669 opt_670

    using_clause ::= USING from_list

    lockstmt ::= LOCK_P opt_671 relation_expr_list opt_672 opt_673

    lock_ ::= IN_P lock_type MODE

    lock_type ::= ACCESS grp_674
           | ROW grp_675
           | SHARE opt_677
           | EXCLUSIVE

    nowait_ ::= NOWAIT

    nowait_or_skip_ ::= NOWAIT
           | SKIP_P LOCKED

    updatestmt ::= opt_678 UPDATE relation_expr_opt_alias SET set_clause_list opt_679 opt_680 opt_681

    set_clause_list ::= set_clause list_683

    set_clause ::= set_target EQUAL a_expr
           | OPEN_PAREN set_target_list CLOSE_PAREN EQUAL a_expr

    set_target ::= colid opt_indirection

    set_target_list ::= set_target list_685

    declarecursorstmt ::= DECLARE cursor_name cursor_options CURSOR opt_686 FOR selectstmt

    cursor_name ::= name

    cursor_options ::= list_688

    hold_ ::= WITH HOLD
           | WITHOUT HOLD

    selectstmt ::= select_no_parens
           | select_with_parens

    select_with_parens ::= OPEN_PAREN select_no_parens CLOSE_PAREN
           | OPEN_PAREN select_with_parens CLOSE_PAREN

    select_no_parens ::= select_clause opt_689 opt_693
           | with_clause select_clause opt_694 opt_698

    select_clause ::= simple_select_intersect list_702

    simple_select_intersect ::= simple_select_pramary list_705

    simple_select_pramary ::= grp_706
           | values_clause
           | TABLE relation_expr
           | select_with_parens

    with_clause ::= WITH opt_722 cte_list

    cte_list ::= common_table_expr list_724

    common_table_expr ::= name opt_725 AS opt_726 OPEN_PAREN preparablestmt CLOSE_PAREN

    materialized_ ::= MATERIALIZED
           | NOT MATERIALIZED

    with_clause_ ::= with_clause

    into_clause ::= INTO opttempTableName

    strict_ ::= STRICT_P

    opttempTableName ::= opt_728 grp_729 opt_730 qualified_name
           | UNLOGGED opt_731 qualified_name
           | TABLE qualified_name
           | qualified_name

    table_ ::= TABLE

    all_or_distinct ::= ALL
           | DISTINCT

    distinct_clause ::= DISTINCT opt_733

    all_clause_ ::= ALL

    sort_clause_ ::= sort_clause

    sort_clause ::= ORDER BY sortby_list

    sortby_list ::= sortby list_735

    sortby ::= a_expr grp_736 opt_738

    select_limit ::= limit_clause opt_739
           | offset_clause opt_740

    select_limit_ ::= select_limit

    limit_clause ::= LIMIT select_limit_value opt_742
           | FETCH first_or_next grp_743

    offset_clause ::= OFFSET grp_746

    select_limit_value ::= a_expr
           | ALL

    select_offset_value ::= a_expr

    select_fetch_first_value ::= c_expr
           | PLUS i_or_f_const
           | MINUS i_or_f_const

    i_or_f_const ::= iconst
           | fconst

    row_or_rows ::= ROW
           | ROWS

    first_or_next ::= FIRST_P
           | NEXT

    group_clause ::= GROUP_P BY group_by_list

    group_by_list ::= group_by_item list_748

    group_by_item ::= empty_grouping_set
           | cube_clause
           | rollup_clause
           | grouping_sets_clause
           | a_expr

    empty_grouping_set ::= OPEN_PAREN CLOSE_PAREN

    rollup_clause ::= ROLLUP OPEN_PAREN expr_list CLOSE_PAREN

    cube_clause ::= CUBE OPEN_PAREN expr_list CLOSE_PAREN

    grouping_sets_clause ::= GROUPING SETS OPEN_PAREN group_by_list CLOSE_PAREN

    having_clause ::= HAVING a_expr

    for_locking_clause ::= for_locking_items
           | FOR READ ONLY

    for_locking_clause_ ::= for_locking_clause

    for_locking_items ::= list_749

    for_locking_item ::= for_locking_strength opt_750 opt_751

    for_locking_strength ::= FOR grp_752

    locked_rels_list ::= OF qualified_name_list

    values_clause ::= VALUES OPEN_PAREN expr_list CLOSE_PAREN list_757

    from_clause ::= FROM from_list

    from_list ::= table_ref list_759

    table_ref ::= grp_760 list_778

    alias_clause ::= opt_779 colid opt_781

    func_alias_clause ::= alias_clause
           | grp_782 OPEN_PAREN tablefuncelementlist CLOSE_PAREN

    join_type ::= grp_784 opt_785

    join_qual ::= USING OPEN_PAREN name_list CLOSE_PAREN
           | ON a_expr

    relation_expr ::= qualified_name opt_786
           | ONLY grp_787

    relation_expr_list ::= relation_expr list_789

    relation_expr_opt_alias ::= relation_expr opt_792

    tablesample_clause ::= TABLESAMPLE func_name OPEN_PAREN expr_list CLOSE_PAREN opt_793

    repeatable_clause_ ::= REPEATABLE OPEN_PAREN a_expr CLOSE_PAREN

    func_table ::= func_expr_windowless opt_794
           | ROWS FROM OPEN_PAREN rowsfrom_list CLOSE_PAREN opt_795

    rowsfrom_item ::= func_expr_windowless opt_796

    rowsfrom_list ::= rowsfrom_item list_798

    col_def_list_ ::= AS OPEN_PAREN tablefuncelementlist CLOSE_PAREN

    ordinality_ ::= WITH ORDINALITY

    where_clause ::= WHERE a_expr

    where_or_current_clause ::= WHERE grp_799

    opttablefuncelementlist ::= tablefuncelementlist

    tablefuncelementlist ::= tablefuncelement list_801

    tablefuncelement ::= colid typename opt_802

    xmltable ::= XMLTABLE OPEN_PAREN grp_803 CLOSE_PAREN

    xmltable_column_list ::= xmltable_column_el list_805

    xmltable_column_el ::= colid grp_806

    xmltable_column_option_list ::= list_808

    xmltable_column_option_el ::= DEFAULT a_expr
           | identifier a_expr
           | NOT NULL_P
           | NULL_P

    xml_namespace_list ::= xml_namespace_el list_810

    xml_namespace_el ::= b_expr AS colLabel
           | DEFAULT b_expr

    typename ::= opt_811 simpletypename grp_812

    opt_array_bounds ::= list_817

    simpletypename ::= generictype
           | numeric
           | bit
           | character
           | constdatetime
           | constinterval grp_818
           | jsonType

    consttypename ::= numeric
           | constbit
           | constcharacter
           | constdatetime
           | jsonType

    generictype ::= type_function_name opt_820 opt_821

    type_modifiers_ ::= OPEN_PAREN expr_list CLOSE_PAREN

    numeric ::= INT_P
           | INTEGER
           | SMALLINT
           | BIGINT
           | REAL
           | FLOAT_P opt_822
           | DOUBLE_P PRECISION
           | DECIMAL_P opt_823
           | DEC opt_824
           | NUMERIC opt_825
           | BOOLEAN_P

    float_ ::= OPEN_PAREN iconst CLOSE_PAREN

    bit ::= bitwithlength
           | bitwithoutlength

    constbit ::= bitwithlength
           | bitwithoutlength

    bitwithlength ::= BIT opt_826 OPEN_PAREN expr_list CLOSE_PAREN

    bitwithoutlength ::= BIT opt_827

    character ::= character_c opt_829

    constcharacter ::= character_c opt_831

    character_c ::= grp_832 opt_833
           | VARCHAR
           | NATIONAL grp_834 opt_835

    varying_ ::= VARYING

    constdatetime ::= grp_836 opt_838 opt_839

    constinterval ::= INTERVAL

    timezone_ ::= WITH TIME ZONE
           | WITHOUT TIME ZONE

    interval_ ::= YEAR_P
           | MONTH_P
           | DAY_P
           | HOUR_P
           | MINUTE_P
           | interval_second
           | YEAR_P TO MONTH_P
           | DAY_P TO grp_840
           | HOUR_P TO grp_841
           | MINUTE_P TO interval_second

    interval_second ::= SECOND_P opt_843

    jsonType ::= JSON

    escape_ ::= ESCAPE a_expr

    a_expr ::= a_expr_qual

    a_expr_qual ::= a_expr_lessless opt_844

    opt_844 ::= grp_844 | $empty

    a_expr_lessless ::= a_expr_or list_847

    a_expr_or ::= a_expr_and list_849

    a_expr_and ::= a_expr_between list_851

    a_expr_between ::= a_expr_in opt_855

    a_expr_in ::= a_expr_unary_not opt_858

    a_expr_unary_not ::= opt_859 a_expr_isnull

    a_expr_isnull ::= a_expr_is_not opt_861

    a_expr_is_not ::= a_expr_compare opt_866

    a_expr_compare ::= a_expr_like opt_870

    a_expr_like ::= a_expr_qual_op opt_875

    a_expr_qual_op ::= a_expr_unary_qualop list_877

    a_expr_unary_qualop ::= opt_878 a_expr_add

    a_expr_add ::= a_expr_mul list_881

    a_expr_mul ::= a_expr_caret list_884

    a_expr_caret ::= a_expr_unary_sign opt_886

    a_expr_unary_sign ::= opt_888 a_expr_at_time_zone

    a_expr_at_time_zone ::= a_expr_collate opt_890

    a_expr_collate ::= a_expr_typecast opt_892


    c_expr ::= EXISTS select_with_parens
           | ARRAY select_with_parens
           | ARRAY array_expr
           | PARAM opt_indirection
           | GROUPING OPEN_PAREN expr_list CLOSE_PAREN
           | UNIQUE select_with_parens
           | columnref
           | aexprconst
           | PLSQLVARIABLENAME
           | OPEN_PAREN a_expr CLOSE_PAREN opt_indirection
           | case_expr
           | func_expr
           | select_with_parens opt_896
           | explicit_row
           | implicit_row
           | row OVERLAPS row

    a_expr_typecast ::= c_expr list_894

    b_expr ::= c_expr
           | b_expr TYPECAST typename
           | grp_895 b_expr
           | b_expr CARET b_expr UNIQUE select_with_parens
           | columnref
           | aexprconst
           | OPEN_PAREN a_expr CLOSE_PAREN opt_indirection
           | case_expr
           | func_expr
           | select_with_parens opt_896
           | explicit_row
           | implicit_row
           | row OVERLAPS row
           | DEFAULT

    plsqlvariablename ::= PLSQLVARIABLENAME

    func_application ::= func_name OPEN_PAREN grp_897 CLOSE_PAREN

    func_expr ::= func_application opt_904 opt_905 opt_906
           | func_expr_common_subexpr

    func_expr_windowless ::= func_application
           | func_expr_common_subexpr

    func_expr_common_subexpr ::= COLLATION FOR OPEN_PAREN a_expr CLOSE_PAREN
           | CURRENT_DATE
           | CURRENT_TIME opt_908
           | CURRENT_TIMESTAMP opt_910
           | LOCALTIME opt_912
           | LOCALTIMESTAMP opt_914
           | CURRENT_ROLE
           | CURRENT_USER
           | SESSION_USER
           | SYSTEM_USER
           | USER
           | CURRENT_CATALOG
           | CURRENT_SCHEMA
           | CAST OPEN_PAREN a_expr AS typename CLOSE_PAREN
           | EXTRACT OPEN_PAREN opt_915 CLOSE_PAREN
           | NORMALIZE OPEN_PAREN a_expr opt_917 CLOSE_PAREN
           | OVERLAY OPEN_PAREN grp_918 CLOSE_PAREN
           | POSITION OPEN_PAREN opt_920 CLOSE_PAREN
           | SUBSTRING OPEN_PAREN grp_921 CLOSE_PAREN
           | TREAT OPEN_PAREN a_expr AS typename CLOSE_PAREN
           | TRIM OPEN_PAREN opt_924 trim_list CLOSE_PAREN
           | NULLIF OPEN_PAREN a_expr COMMA a_expr CLOSE_PAREN
           | COALESCE OPEN_PAREN expr_list CLOSE_PAREN
           | GREATEST OPEN_PAREN expr_list CLOSE_PAREN
           | LEAST OPEN_PAREN expr_list CLOSE_PAREN
           | XMLCONCAT OPEN_PAREN expr_list CLOSE_PAREN
           | XMLELEMENT OPEN_PAREN NAME_P colLabel opt_927 CLOSE_PAREN
           | XMLEXISTS OPEN_PAREN c_expr xmlexists_argument CLOSE_PAREN
           | XMLFOREST OPEN_PAREN xml_attribute_list CLOSE_PAREN
           | XMLPARSE OPEN_PAREN document_or_content a_expr opt_928 CLOSE_PAREN
           | XMLPI OPEN_PAREN NAME_P colLabel opt_930 CLOSE_PAREN
           | XMLROOT OPEN_PAREN XML_P a_expr COMMA xml_root_version opt_931 CLOSE_PAREN
           | XMLSERIALIZE OPEN_PAREN document_or_content a_expr AS simpletypename CLOSE_PAREN
           | JSON_OBJECT OPEN_PAREN grp_932 CLOSE_PAREN
           | JSON_ARRAY OPEN_PAREN grp_937 CLOSE_PAREN
           | JSON OPEN_PAREN json_value_expr opt_943 CLOSE_PAREN
           | JSON_SCALAR OPEN_PAREN a_expr CLOSE_PAREN
           | JSON_SERIALIZE OPEN_PAREN json_value_expr opt_944 CLOSE_PAREN
           | MERGE_ACTION OPEN_PAREN CLOSE_PAREN
           | JSON_QUERY OPEN_PAREN json_value_expr COMMA a_expr opt_945 opt_946 json_wrapper_behavior opt_947 opt_948 CLOSE_PAREN
           | JSON_EXISTS OPEN_PAREN json_value_expr COMMA a_expr opt_949 opt_950 CLOSE_PAREN
           | JSON_VALUE OPEN_PAREN json_value_expr COMMA a_expr opt_951 opt_952 opt_953 CLOSE_PAREN

    xml_root_version ::= VERSION_P a_expr
           | VERSION_P NO VALUE_P

    xml_root_standalone_ ::= COMMA STANDALONE_P YES_P
           | COMMA STANDALONE_P NO
           | COMMA STANDALONE_P NO VALUE_P

    xml_attributes ::= XMLATTRIBUTES OPEN_PAREN xml_attribute_list CLOSE_PAREN

    xml_attribute_list ::= xml_attribute_el list_955

    xml_attribute_el ::= a_expr opt_957

    document_or_content ::= DOCUMENT_P
           | CONTENT_P

    xml_whitespace_option ::= PRESERVE WHITESPACE_P
           | STRIP_P WHITESPACE_P

    xmlexists_argument ::= PASSING c_expr
           | PASSING c_expr xml_passing_mech
           | PASSING xml_passing_mech c_expr
           | PASSING xml_passing_mech c_expr xml_passing_mech

    xml_passing_mech ::= BY grp_958

    within_group_clause ::= WITHIN GROUP_P OPEN_PAREN sort_clause CLOSE_PAREN

    filter_clause ::= FILTER OPEN_PAREN WHERE a_expr CLOSE_PAREN

    window_clause ::= WINDOW window_definition_list

    window_definition_list ::= window_definition list_960

    window_definition ::= colid AS window_specification

    over_clause ::= OVER grp_961

    window_specification ::= OPEN_PAREN opt_962 opt_963 opt_964 opt_965 CLOSE_PAREN

    existing_window_name_ ::= colid

    partition_clause_ ::= PARTITION BY expr_list

    frame_clause_ ::= RANGE frame_extent opt_966
           | ROWS frame_extent opt_967
           | GROUPS frame_extent opt_968

    frame_extent ::= frame_bound
           | BETWEEN frame_bound AND frame_bound

    frame_bound ::= UNBOUNDED grp_969
           | CURRENT_P ROW
           | a_expr grp_970

    window_exclusion_clause_ ::= EXCLUDE grp_971

    row ::= ROW OPEN_PAREN opt_972 CLOSE_PAREN
           | OPEN_PAREN expr_list COMMA a_expr CLOSE_PAREN

    explicit_row ::= ROW OPEN_PAREN opt_973 CLOSE_PAREN

    implicit_row ::= OPEN_PAREN expr_list COMMA a_expr CLOSE_PAREN

    sub_type ::= ANY
           | SOME
           | ALL

    all_op ::= Operator
           | mathop

    mathop ::= PLUS
           | MINUS
           | STAR
           | SLASH
           | PERCENT
           | CARET
           | LT
           | GT
           | EQUAL
           | LESS_EQUALS
           | GREATER_EQUALS
           | NOT_EQUALS

    qual_op ::= Operator
           | OPERATOR OPEN_PAREN any_operator CLOSE_PAREN

    qual_all_op ::= all_op
           | OPERATOR OPEN_PAREN any_operator CLOSE_PAREN

    subquery_Op ::= all_op
           | OPERATOR OPEN_PAREN any_operator CLOSE_PAREN
           | LIKE
           | NOT LIKE
           | ILIKE
           | NOT ILIKE

    expr_list ::= a_expr list_975

    func_arg_list ::= func_arg_expr list_977

    func_arg_expr ::= a_expr
           | param_name grp_978 a_expr

    type_list ::= typename list_980

    array_expr ::= OPEN_BRACKET opt_982 CLOSE_BRACKET

    array_expr_list ::= array_expr list_984

    extract_list ::= extract_arg FROM a_expr

    extract_arg ::= identifier
           | YEAR_P
           | MONTH_P
           | DAY_P
           | HOUR_P
           | MINUTE_P
           | SECOND_P
           | sconst

    unicode_normal_form ::= NFC
           | NFD
           | NFKC
           | NFKD

    overlay_list ::= a_expr PLACING a_expr FROM a_expr opt_986

    position_list ::= b_expr IN_P b_expr

    substr_list ::= a_expr FROM a_expr FOR a_expr
           | a_expr FOR a_expr FROM a_expr
           | a_expr FROM a_expr
           | a_expr FOR a_expr
           | a_expr SIMILAR a_expr ESCAPE a_expr

    trim_list ::= a_expr FROM expr_list
           | FROM expr_list
           | expr_list

    in_expr ::= select_with_parens
           | OPEN_PAREN expr_list CLOSE_PAREN

    case_expr ::= CASE opt_987 when_clause_list opt_988 END_P

    when_clause_list ::= list_989

    when_clause ::= WHEN a_expr THEN a_expr

    case_default ::= ELSE a_expr

    case_arg ::= a_expr

    columnref ::= colid opt_990

    indirection_el ::= DOT grp_991
           | OPEN_BRACKET grp_992 CLOSE_BRACKET

    slice_bound_ ::= a_expr

    indirection ::= list_995

    opt_indirection ::= list_996

    json_passing_clause ::= PASSING json_arguments

    json_arguments ::= json_argument
           | json_arguments COMMA json_argument

    json_argument ::= json_value_expr AS colLabel

    json_wrapper_behavior ::= WITHOUT WRAPPER
           | WITHOUT ARRAY WRAPPER
           | WITH WRAPPER
           | WITH ARRAY WRAPPER
           | WITH CONDITIONAL ARRAY WRAPPER
           | WITH UNCONDITIONAL ARRAY WRAPPER
           | WITH CONDITIONAL WRAPPER
           | WITH UNCONDITIONAL WRAPPER

    json_behavior ::= DEFAULT a_expr
           | json_behavior_type

    json_behavior_type ::= ERROR
           | NULL_P
           | TRUE_P
           | FALSE_P
           | UNKNOWN
           | EMPTY_P ARRAY
           | EMPTY_P OBJECT_P
           | EMPTY_P

    json_behavior_clause ::= json_behavior ON EMPTY_P
           | json_behavior ON ERROR
           | json_behavior ON EMPTY_P json_behavior ON ERROR

    json_on_error_clause ::= json_behavior ON ERROR

    json_value_expr ::= a_expr opt_997

    json_format_clause ::= FORMAT_LA JSON ENCODING name
           | FORMAT_LA JSON

    json_quotes_clause ::= KEEP QUOTES ON SCALAR STRING_P
           | KEEP QUOTES
           | OMIT QUOTES ON SCALAR STRING_P
           | OMIT QUOTES

    json_returning_clause ::= RETURNING typename opt_998

    json_predicate_type_constraint ::= JSON
           | JSON VALUE_P
           | JSON ARRAY
           | JSON OBJECT_P
           | JSON SCALAR

    json_key_uniqueness_constraint ::= WITH UNIQUE KEYS
           | WITH UNIQUE
           | WITHOUT UNIQUE KEYS
           | WITHOUT UNIQUE

    json_name_and_value_list ::= json_name_and_value
           | json_name_and_value_list COMMA json_name_and_value

    json_name_and_value ::= c_expr VALUE_P json_value_expr
           | a_expr COLON json_value_expr

    json_object_constructor_null_clause ::= NULL_P ON NULL_P
           | ABSENT ON NULL_P

    json_array_constructor_null_clause ::= NULL_P ON NULL_P
           | ABSENT ON NULL_P

    json_value_expr_list ::= json_value_expr
           | json_value_expr_list COMMA json_value_expr

    json_aggregate_func ::= JSON_OBJECTAGG OPEN_PAREN json_name_and_value opt_999 opt_1000 json_returning_clause CLOSE_PAREN
           | JSON_ARRAYAGG OPEN_PAREN json_value_expr opt_1001 opt_1002 json_returning_clause CLOSE_PAREN

    json_array_aggregate_order_by_clause ::= ORDER BY sortby_list

    target_list_ ::= target_list

    target_list ::= target_el list_1004

    target_el ::= a_expr grp_1005
           | STAR

    qualified_name_list ::= qualified_name list_1007

    qualified_name ::= colid opt_1008

    name_list ::= name list_1010

    name ::= colid

    attr_name ::= colLabel

    file_name ::= sconst

    func_name ::= type_function_name
           | colid indirection

    aexprconst ::= iconst
           | fconst
           | sconst
           | bconst
           | xconst
           | func_name grp_1011
           | consttypename sconst
           | constinterval grp_1013
           | TRUE_P
           | FALSE_P
           | NULL_P

    xconst ::= HexadecimalStringConstant

    bconst ::= BinaryStringConstant

    fconst ::= Numeric

    iconst ::= Integral
           | BinaryIntegral
           | OctalIntegral
           | HexadecimalIntegral

    sconst ::= anysconst opt_1015

    anysconst ::= StringConstant
           | UnicodeEscapeStringConstant
           | BeginDollarStringConstant list_1016 EndDollarStringConstant
           | EscapeStringConstant

    uescape_ ::= UESCAPE anysconst

    signediconst ::= iconst
           | PLUS iconst
           | MINUS iconst

    roleid ::= rolespec

    rolespec ::= nonreservedword
           | CURRENT_USER
           | SESSION_USER

    role_list ::= rolespec list_1018

    colid ::= identifier
           | unreserved_keyword
           | col_name_keyword

    type_function_name ::= identifier
           | unreserved_keyword
           | type_func_name_keyword

    nonreservedword ::= identifier
           | unreserved_keyword
           | col_name_keyword
           | type_func_name_keyword

    colLabel ::= identifier
           | unreserved_keyword
           | col_name_keyword
           | type_func_name_keyword
           | reserved_keyword
           | EXIT

    bareColLabel ::= identifier
           | bare_label_keyword

    unreserved_keyword ::= ABORT_P
           | ABSENT
           | ABSOLUTE_P
           | ACCESS
           | ACTION
           | ADD_P
           | ADMIN
           | AFTER
           | AGGREGATE
           | ALSO
           | ALTER
           | ALWAYS
           | ASENSITIVE
           | ASSERTION
           | ASSIGNMENT
           | AT
           | ATOMIC
           | ATTACH
           | ATTRIBUTE
           | BACKWARD
           | BEFORE
           | BEGIN_P
           | BREADTH
           | BY
           | CACHE
           | CALL
           | CALLED
           | CASCADE
           | CASCADED
           | CATALOG
           | CHAIN
           | CHARACTERISTICS
           | CHECKPOINT
           | CLASS
           | CLOSE
           | CLUSTER
           | COLUMNS
           | COMMENT
           | COMMENTS
           | COMMIT
           | COMMITTED
           | COMPRESSION
           | CONDITIONAL
           | CONFIGURATION
           | CONFLICT
           | CONNECTION
           | CONSTRAINTS
           | CONTENT_P
           | CONTINUE_P
           | CONVERSION_P
           | COPY
           | COST
           | CSV
           | CUBE
           | CURRENT_P
           | CURSOR
           | CYCLE
           | DATA_P
           | DATABASE
           | DAY_P
           | DEALLOCATE
           | DECLARE
           | DEFAULTS
           | DEFERRED
           | DEFINER
           | DELETE_P
           | DELIMITER
           | DELIMITERS
           | DEPENDS
           | DEPTH
           | DETACH
           | DICTIONARY
           | DISABLE_P
           | DISCARD
           | DOCUMENT_P
           | DOMAIN_P
           | DOUBLE_P
           | DROP
           | EACH
           | EMPTY_P
           | ENABLE_P
           | ENCODING
           | ENCRYPTED
           | ENUM_P
           | ERROR
           | ESCAPE
           | EVENT
           | EXCLUDE
           | EXCLUDING
           | EXCLUSIVE
           | EXECUTE
           | EXPLAIN
           | EXPRESSION
           | EXTENSION
           | EXTERNAL
           | FAMILY
           | FILTER
           | FINALIZE
           | FIRST_P
           | FOLLOWING
           | FORCE
           | FORMAT
           | FORWARD
           | FUNCTION
           | FUNCTIONS
           | GENERATED
           | GLOBAL
           | GRANTED
           | GROUPS
           | HANDLER
           | HEADER_P
           | HOLD
           | HOUR_P
           | IDENTITY_P
           | IF_P
           | IMMEDIATE
           | IMMUTABLE
           | IMPLICIT_P
           | IMPORT_P
           | INCLUDE
           | INCLUDING
           | INCREMENT
           | INDENT
           | INDEX
           | INDEXES
           | INHERIT
           | INHERITS
           | INLINE_P
           | INPUT_P
           | INSENSITIVE
           | INSERT
           | INSTEAD
           | INVOKER
           | ISOLATION
           | KEEP
           | KEY
           | KEYS
           | LABEL
           | LANGUAGE
           | LARGE_P
           | LAST_P
           | LEAKPROOF
           | LEVEL
           | LISTEN
           | LOAD
           | LOCAL
           | LOCATION
           | LOCK_P
           | LOCKED
           | LOGGED
           | MAPPING
           | MATCH
           | MATCHED
           | MATERIALIZED
           | MAXVALUE
           | MERGE
           | METHOD
           | MINUTE_P
           | MINVALUE
           | MODE
           | MONTH_P
           | MOVE
           | NAME_P
           | NAMES
           | NESTED
           | NEW
           | NEXT
           | NFC
           | NFD
           | NFKC
           | NFKD
           | NO
           | NORMALIZED
           | NOTHING
           | NOTIFY
           | NOWAIT
           | NULLS_P
           | OBJECT_P
           | OF
           | OFF
           | OIDS
           | OLD
           | OMIT
           | OPERATOR
           | OPTION
           | OPTIONS
           | ORDINALITY
           | OTHERS
           | OVER
           | OVERRIDING
           | OWNED
           | OWNER
           | PARALLEL
           | PARAMETER
           | PARSER
           | PARTIAL
           | PARTITION
           | PASSING
           | PASSWORD
           | PATH
           | PERIOD
           | PLAN
           | PLANS
           | POLICY
           | PRECEDING
           | PREPARE
           | PREPARED
           | PRESERVE
           | PRIOR
           | PRIVILEGES
           | PROCEDURAL
           | PROCEDURE
           | PROCEDURES
           | PROGRAM
           | PUBLICATION
           | QUOTE
           | QUOTES
           | RANGE
           | READ
           | REASSIGN
           | RECURSIVE
           | REF
           | REFERENCING
           | REFRESH
           | REINDEX
           | RELATIVE_P
           | RELEASE
           | RENAME
           | REPEATABLE
           | REPLACE
           | REPLICA
           | RESET
           | RESTART
           | RESTRICT
           | RETURN
           | RETURNS
           | REVOKE
           | ROLE
           | ROLLBACK
           | ROLLUP
           | ROUTINE
           | ROUTINES
           | ROWS
           | RULE
           | SAVEPOINT
           | SCALAR
           | SCHEMA
           | SCHEMAS
           | SCROLL
           | SEARCH
           | SECOND_P
           | SECURITY
           | SEQUENCE
           | SEQUENCES
           | SERIALIZABLE
           | SERVER
           | SESSION
           | SET
           | SETS
           | SHARE
           | SHOW
           | SIMPLE
           | SKIP_P
           | SNAPSHOT
           | SOURCE
           | SQL_P
           | STABLE
           | STANDALONE_P
           | START
           | STATEMENT
           | STATISTICS
           | STDIN
           | STDOUT
           | STORAGE
           | STORED
           | STRICT_P
           | STRING_P
           | STRIP_P
           | SUBSCRIPTION
           | SUPPORT
           | SYSID
           | SYSTEM_P
           | TABLES
           | TABLESPACE
           | TARGET
           | TEMP
           | TEMPLATE
           | TEMPORARY
           | TEXT_P
           | TIES
           | TRANSACTION
           | TRANSFORM
           | TRIGGER
           | TRUNCATE
           | TRUSTED
           | TYPE_P
           | TYPES_P
           | UESCAPE
           | UNBOUNDED
           | UNCOMMITTED
           | UNCONDITIONAL
           | UNENCRYPTED
           | UNKNOWN
           | UNLISTEN
           | UNLOGGED
           | UNTIL
           | UPDATE
           | VACUUM
           | VALID
           | VALIDATE
           | VALIDATOR
           | VALUE_P
           | VARYING
           | VERSION_P
           | VIEW
           | VIEWS
           | VOLATILE
           | WHITESPACE_P
           | WITHIN
           | WITHOUT
           | WORK
           | WRAPPER
           | WRITE
           | XML_P
           | YEAR_P
           | YES_P
           | ZONE

    col_name_keyword ::= BETWEEN
           | BIGINT
           | BIT
           | BOOLEAN_P
           | CHAR_P
           | character
           | COALESCE
           | DEC
           | DECIMAL_P
           | EXISTS
           | EXTRACT
           | FLOAT_P
           | GREATEST
           | GROUPING
           | INOUT
           | INT_P
           | INTEGER
           | INTERVAL
           | JSON
           | JSON_ARRAY
           | JSON_ARRAYAGG
           | JSON_EXISTS
           | JSON_OBJECT
           | JSON_OBJECTAGG
           | JSON_QUERY
           | JSON_SCALAR
           | JSON_SERIALIZE
           | JSON_TABLE
           | JSON_VALUE
           | LEAST
           | MERGE_ACTION
           | NATIONAL
           | NCHAR
           | NONE
           | NORMALIZE
           | NULLIF
           | NUMERIC
           | OUT_P
           | OVERLAY
           | POSITION
           | PRECISION
           | REAL
           | ROW
           | SETOF
           | SMALLINT
           | SUBSTRING
           | TIME
           | TIMESTAMP
           | TREAT
           | TRIM
           | VALUES
           | VARCHAR
           | XMLATTRIBUTES
           | XMLCONCAT
           | XMLELEMENT
           | XMLEXISTS
           | XMLFOREST
           | XMLNAMESPACES
           | XMLPARSE
           | XMLPI
           | XMLROOT
           | XMLSERIALIZE
           | XMLTABLE

    type_func_name_keyword ::= AUTHORIZATION
           | BINARY
           | COLLATION
           | CONCURRENTLY
           | CROSS
           | CURRENT_SCHEMA
           | FREEZE
           | FULL
           | ILIKE
           | INNER_P
           | IS
           | ISNULL
           | JOIN
           | LEFT
           | LIKE
           | NATURAL
           | NOTNULL
           | OUTER_P
           | OVERLAPS
           | RIGHT
           | SIMILAR
           | TABLESAMPLE
           | VERBOSE

    reserved_keyword ::= ALL
           | ANALYSE
           | ANALYZE
           | AND
           | ANY
           | ARRAY
           | AS
           | ASC
           | ASYMMETRIC
           | BOTH
           | CASE
           | CAST
           | CHECK
           | COLLATE
           | COLUMN
           | CONSTRAINT
           | CREATE
           | CURRENT_CATALOG
           | CURRENT_DATE
           | CURRENT_ROLE
           | CURRENT_TIME
           | CURRENT_TIMESTAMP
           | CURRENT_USER
           | DEFAULT
           | DEFERRABLE
           | DESC
           | DISTINCT
           | DO
           | ELSE
           | END_P
           | EXCEPT
           | FALSE_P
           | FETCH
           | FOR
           | FOREIGN
           | FROM
           | GRANT
           | GROUP_P
           | HAVING
           | IN_P
           | INITIALLY
           | INTERSECT
           | INTO
           | LATERAL_P
           | LEADING
           | LIMIT
           | LOCALTIME
           | LOCALTIMESTAMP
           | NOT
           | NULL_P
           | OFFSET
           | ON
           | ONLY
           | OR
           | ORDER
           | PLACING
           | PRIMARY
           | REFERENCES
           | RETURNING
           | SELECT
           | SESSION_USER
           | SOME
           | SYMMETRIC
           | SYSTEM_USER
           | TABLE
           | THEN
           | TO
           | TRAILING
           | TRUE_P
           | UNION
           | UNIQUE
           | USER
           | USING
           | VARIADIC
           | WHEN
           | WHERE
           | WINDOW
           | WITH

    bare_label_keyword ::= ABORT_P
           | ABSENT
           | ABSOLUTE_P
           | ACCESS
           | ACTION
           | ADD_P
           | ADMIN
           | AFTER
           | AGGREGATE
           | ALL
           | ALSO
           | ALTER
           | ALWAYS
           | ANALYSE
           | ANALYZE
           | AND
           | ANY
           | ASC
           | ASENSITIVE
           | ASSERTION
           | ASSIGNMENT
           | ASYMMETRIC
           | AT
           | ATOMIC
           | ATTACH
           | ATTRIBUTE
           | AUTHORIZATION
           | BACKWARD
           | BEFORE
           | BEGIN_P
           | BETWEEN
           | BIGINT
           | BINARY
           | BIT
           | BOOLEAN_P
           | BOTH
           | BREADTH
           | BY
           | CACHE
           | CALL
           | CALLED
           | CASCADE
           | CASCADED
           | CASE
           | CAST
           | CATALOG
           | CHAIN
           | CHARACTERISTICS
           | CHECK
           | CHECKPOINT
           | CLASS
           | CLOSE
           | CLUSTER
           | COALESCE
           | COLLATE
           | COLLATION
           | COLUMN
           | COLUMNS
           | COMMENT
           | COMMENTS
           | COMMIT
           | COMMITTED
           | COMPRESSION
           | CONCURRENTLY
           | CONDITIONAL
           | CONFIGURATION
           | CONFLICT
           | CONNECTION
           | CONSTRAINT
           | CONSTRAINTS
           | CONTENT_P
           | CONTINUE_P
           | CONVERSION_P
           | COPY
           | COST
           | CROSS
           | CSV
           | CUBE
           | CURRENT_CATALOG
           | CURRENT_DATE
           | CURRENT_P
           | CURRENT_ROLE
           | CURRENT_SCHEMA
           | CURRENT_TIME
           | CURRENT_TIMESTAMP
           | CURRENT_USER
           | CURSOR
           | CYCLE
           | DATA_P
           | DATABASE
           | DEALLOCATE
           | DEC
           | DECIMAL_P
           | DECLARE
           | DEFAULT
           | DEFAULTS
           | DEFERRABLE
           | DEFERRED
           | DEFINER
           | DELETE_P
           | DELIMITER
           | DELIMITERS
           | DEPENDS
           | DEPTH
           | DESC
           | DETACH
           | DICTIONARY
           | DISABLE_P
           | DISCARD
           | DISTINCT
           | DO
           | DOCUMENT_P
           | DOMAIN_P
           | DOUBLE_P
           | DROP
           | EACH
           | ELSE
           | EMPTY_P
           | ENABLE_P
           | ENCODING
           | ENCRYPTED
           | END_P
           | ENUM_P
           | ERROR
           | ESCAPE
           | EVENT
           | EXCLUDE
           | EXCLUDING
           | EXCLUSIVE
           | EXECUTE
           | EXISTS
           | EXPLAIN
           | EXPRESSION
           | EXTENSION
           | EXTERNAL
           | EXTRACT
           | FALSE_P
           | FAMILY
           | FINALIZE
           | FIRST_P
           | FLOAT_P
           | FOLLOWING
           | FORCE
           | FOREIGN
           | FORMAT
           | FORWARD
           | FREEZE
           | FULL
           | FUNCTION
           | FUNCTIONS
           | GENERATED
           | GLOBAL
           | GRANTED
           | GREATEST
           | GROUPING
           | GROUPS
           | HANDLER
           | HEADER_P
           | HOLD
           | IDENTITY_P
           | IF_P
           | ILIKE
           | IMMEDIATE
           | IMMUTABLE
           | IMPLICIT_P
           | IMPORT_P
           | IN_P
           | INCLUDE
           | INCLUDING
           | INCREMENT
           | INDENT
           | INDEX
           | INDEXES
           | INHERIT
           | INHERITS
           | INITIALLY
           | INLINE_P
           | INNER_P
           | INOUT
           | INPUT_P
           | INSENSITIVE
           | INSERT
           | INSTEAD
           | INT_P
           | INTEGER
           | INTERVAL
           | INVOKER
           | IS
           | ISOLATION
           | JOIN
           | JSON
           | JSON_ARRAY
           | JSON_ARRAYAGG
           | JSON_EXISTS
           | JSON_OBJECT
           | JSON_OBJECTAGG
           | JSON_QUERY
           | JSON_SCALAR
           | JSON_SERIALIZE
           | JSON_TABLE
           | JSON_VALUE
           | KEEP
           | KEY
           | KEYS
           | LABEL
           | LANGUAGE
           | LARGE_P
           | LAST_P
           | LATERAL_P
           | LEADING
           | LEAKPROOF
           | LEAST
           | LEFT
           | LEVEL
           | LIKE
           | LISTEN
           | LOAD
           | LOCAL
           | LOCALTIME
           | LOCALTIMESTAMP
           | LOCATION
           | LOCK_P
           | LOCKED
           | LOGGED
           | MAPPING
           | MATCH
           | MATCHED
           | MATERIALIZED
           | MAXVALUE
           | MERGE
           | MERGE_ACTION
           | METHOD
           | MINVALUE
           | MODE
           | MOVE
           | NAME_P
           | NAMES
           | NATIONAL
           | NATURAL
           | NCHAR
           | NESTED
           | NEW
           | NEXT
           | NFC
           | NFD
           | NFKC
           | NFKD
           | NO
           | NONE
           | NORMALIZE
           | NORMALIZED
           | NOT
           | NOTHING
           | NOTIFY
           | NOWAIT
           | NULL_P
           | NULLIF
           | NULLS_P
           | NUMERIC
           | OBJECT_P
           | OF
           | OFF
           | OIDS
           | OLD
           | OMIT
           | ONLY
           | OPERATOR
           | OPTION
           | OPTIONS
           | OR
           | ORDINALITY
           | OTHERS
           | OUT_P
           | OUTER_P
           | OVERLAY
           | OVERRIDING
           | OWNED
           | OWNER
           | PARALLEL
           | PARAMETER
           | PARSER
           | PARTIAL
           | PARTITION
           | PASSING
           | PASSWORD
           | PATH
           | PERIOD
           | PLACING
           | PLAN
           | PLANS
           | POLICY
           | POSITION
           | PRECEDING
           | PREPARE
           | PREPARED
           | PRESERVE
           | PRIMARY
           | PRIOR
           | PRIVILEGES
           | PROCEDURAL
           | PROCEDURE
           | PROCEDURES
           | PROGRAM
           | PUBLICATION
           | QUOTE
           | QUOTES
           | RANGE
           | READ
           | REAL
           | REASSIGN
           | RECURSIVE
           | REF
           | REFERENCES
           | REFERENCING
           | REFRESH
           | REINDEX
           | RELATIVE_P
           | RELEASE
           | RENAME
           | REPEATABLE
           | REPLACE
           | REPLICA
           | RESET
           | RESTART
           | RESTRICT
           | RETURN
           | RETURNS
           | REVOKE
           | RIGHT
           | ROLE
           | ROLLBACK
           | ROLLUP
           | ROUTINE
           | ROUTINES
           | ROW
           | ROWS
           | RULE
           | SAVEPOINT
           | SCALAR
           | SCHEMA
           | SCHEMAS
           | SCROLL
           | SEARCH
           | SECURITY
           | SELECT
           | SEQUENCE
           | SEQUENCES
           | SERIALIZABLE
           | SERVER
           | SESSION
           | SESSION_USER
           | SET
           | SETOF
           | SETS
           | SHARE
           | SHOW
           | SIMILAR
           | SIMPLE
           | SKIP_P
           | SMALLINT
           | SNAPSHOT
           | SOME
           | SOURCE
           | SQL_P
           | STABLE
           | STANDALONE_P
           | START
           | STATEMENT
           | STATISTICS
           | STDIN
           | STDOUT
           | STORAGE
           | STORED
           | STRICT_P
           | STRING_P
           | STRIP_P
           | SUBSCRIPTION
           | SUBSTRING
           | SUPPORT
           | SYMMETRIC
           | SYSID
           | SYSTEM_P
           | SYSTEM_USER
           | TABLE
           | TABLES
           | TABLESAMPLE
           | TABLESPACE
           | TARGET
           | TEMP
           | TEMPLATE
           | TEMPORARY
           | TEXT_P
           | THEN
           | TIES
           | TIME
           | TIMESTAMP
           | TRAILING
           | TRANSACTION
           | TRANSFORM
           | TREAT
           | TRIGGER
           | TRIM
           | TRUE_P
           | TRUNCATE
           | TRUSTED
           | TYPE_P
           | TYPES_P
           | UESCAPE
           | UNBOUNDED
           | UNCOMMITTED
           | UNCONDITIONAL
           | UNENCRYPTED
           | UNIQUE
           | UNKNOWN
           | UNLISTEN
           | UNLOGGED
           | UNTIL
           | UPDATE
           | USER
           | USING
           | VACUUM
           | VALID
           | VALIDATE
           | VALIDATOR
           | VALUE_P
           | VALUES
           | VARCHAR
           | VARIADIC
           | VERBOSE
           | VERSION_P
           | VIEW
           | VIEWS
           | VOLATILE
           | WHEN
           | WHITESPACE_P
           | WORK
           | WRAPPER
           | WRITE
           | XML_P
           | XMLATTRIBUTES
           | XMLCONCAT
           | XMLELEMENT
           | XMLEXISTS
           | XMLFOREST
           | XMLNAMESPACES
           | XMLPARSE
           | XMLPI
           | XMLROOT
           | XMLSERIALIZE
           | XMLTABLE
           | YES_P
           | ZONE

    any_identifier ::= colid

    identifier ::= IDENTIFIER
           | QuotedIdentifier
           | UnicodeQuotedIdentifier opt_1019
           | PLSQLVARIABLENAME

    opt_1 ::= stmt | $empty

    opt_2 ::= stmt | $empty

    seq_3 ::= SEMI opt_2

    list_4 ::= $empty | list_4 seq_3

    opt_5 ::= with_ | $empty

    list_6 ::= $empty | list_6 createoptroleelem

    list_7 ::= $empty | list_7 alteroptroleelem

    grp_8 ::= sconst | NULL_P

    grp_9 ::= ENCRYPTED | UNENCRYPTED

    grp_10 ::= ROLE | GROUP_P

    opt_11 ::= with_ | $empty

    grp_12 ::= ROLE | USER

    opt_13 ::= with_ | $empty

    grp_14 ::= ROLE | USER

    opt_15 ::= ALL | $empty

    opt_16 ::= in_database_ | $empty

    grp_17 ::= ROLE | USER | GROUP_P

    seq_18 ::= IF_P EXISTS

    opt_19 ::= seq_18 | $empty

    opt_20 ::= with_ | $empty

    seq_21 ::= IF_P NOT EXISTS

    opt_22 ::= seq_21 | $empty

    opt_24 ::= optschemaname | $empty

    grp_23 ::= opt_24 AUTHORIZATION rolespec | colid

    list_25 ::= $empty | list_25 schema_stmt

    grp_26 ::= LOCAL | SESSION

    opt_27 ::= grp_26 | $empty

    grp_28 ::= TO | EQUAL

    grp_29 ::= var_list | DEFAULT

    opt_30 ::= encoding_ | $empty

    seq_31 ::= DOT colid

    list_32 ::= $empty | list_32 seq_31

    seq_33 ::= COMMA var_value

    list_34 ::= $empty | list_34 seq_33

    grp_35 ::= UNCOMMITTED | COMMITTED

    opt_36 ::= interval_ | $empty

    grp_37 ::= var_name | TIME ZONE | TRANSACTION ISOLATION LEVEL | SESSION AUTHORIZATION | ALL

    grp_38 ::= ALL | TEMP | TEMPORARY | PLANS | SEQUENCES

    seq_39 ::= IF_P EXISTS

    opt_40 ::= seq_39 | $empty

    grp_41 ::= alter_table_cmds | partition_cmd

    seq_42 ::= OWNED BY role_list

    opt_43 ::= seq_42 | $empty

    opt_44 ::= nowait_ | $empty

    seq_45 ::= IF_P EXISTS

    opt_46 ::= seq_45 | $empty

    grp_47 ::= alter_table_cmds | index_partition_cmd

    seq_48 ::= OWNED BY role_list

    opt_49 ::= seq_48 | $empty

    opt_50 ::= nowait_ | $empty

    seq_51 ::= IF_P EXISTS

    opt_52 ::= seq_51 | $empty

    seq_53 ::= IF_P EXISTS

    opt_54 ::= seq_53 | $empty

    seq_55 ::= IF_P EXISTS

    opt_56 ::= seq_55 | $empty

    seq_57 ::= OWNED BY role_list

    opt_58 ::= seq_57 | $empty

    opt_59 ::= nowait_ | $empty

    seq_60 ::= IF_P EXISTS

    opt_61 ::= seq_60 | $empty

    seq_62 ::= COMMA alter_table_cmd

    list_63 ::= $empty | list_63 seq_62

    opt_64 ::= column_ | $empty

    opt_65 ::= column_ | $empty

    opt_66 ::= column_ | $empty

    opt_67 ::= column_ | $empty

    opt_68 ::= column_ | $empty

    opt_69 ::= column_ | $empty

    opt_70 ::= column_ | $empty

    opt_71 ::= column_ | $empty

    opt_72 ::= column_ | $empty

    opt_73 ::= column_ | $empty

    opt_74 ::= column_ | $empty

    opt_75 ::= optparenthesizedseqoptlist | $empty

    opt_76 ::= column_ | $empty

    opt_77 ::= column_ | $empty

    opt_78 ::= column_ | $empty

    opt_79 ::= column_ | $empty

    opt_80 ::= drop_behavior_ | $empty

    opt_81 ::= column_ | $empty

    opt_82 ::= drop_behavior_ | $empty

    opt_83 ::= column_ | $empty

    opt_84 ::= set_data_ | $empty

    opt_85 ::= collate_clause_ | $empty

    opt_86 ::= alter_using | $empty

    opt_87 ::= column_ | $empty

    opt_88 ::= drop_behavior_ | $empty

    opt_89 ::= drop_behavior_ | $empty

    seq_90 ::= COMMA reloption_elem

    list_91 ::= $empty | list_91 seq_90

    seq_93 ::= EQUAL def_arg

    opt_94 ::= seq_93 | $empty

    grp_92 ::= EQUAL def_arg | DOT colLabel opt_94

    opt_95 ::= grp_92 | $empty

    list_96 ::= alter_identity_column_option | list_96 alter_identity_column_option

    opt_97 ::= with_ | $empty

    seq_98 ::= opt_97 numericonly

    opt_99 ::= seq_98 | $empty

    grp_100 ::= seqoptelem | GENERATED generated_when

    seq_101 ::= COMMA hash_partbound_elem

    list_102 ::= $empty | list_102 seq_101

    seq_103 ::= COMMA alter_type_cmd

    list_104 ::= $empty | list_104 seq_103

    opt_105 ::= drop_behavior_ | $empty

    seq_106 ::= IF_P EXISTS

    opt_107 ::= seq_106 | $empty

    opt_108 ::= drop_behavior_ | $empty

    opt_109 ::= set_data_ | $empty

    opt_110 ::= collate_clause_ | $empty

    opt_111 ::= drop_behavior_ | $empty

    grp_112 ::= cursor_name | ALL

    opt_113 ::= binary_ | $empty

    opt_114 ::= column_list_ | $empty

    opt_115 ::= program_ | $empty

    opt_116 ::= copy_delimiter | $empty

    opt_117 ::= with_ | $empty

    opt_118 ::= where_clause | $empty

    opt_119 ::= program_ | $empty

    opt_120 ::= with_ | $empty

    list_121 ::= $empty | list_121 copy_opt_item

    opt_122 ::= as_ | $empty

    opt_123 ::= as_ | $empty

    opt_124 ::= as_ | $empty

    opt_125 ::= as_ | $empty

    opt_126 ::= using_ | $empty

    seq_127 ::= COMMA copy_generic_opt_elem

    list_128 ::= $empty | list_128 seq_127

    opt_129 ::= copy_generic_opt_arg | $empty

    seq_130 ::= COMMA copy_generic_opt_arg_list_item

    list_131 ::= $empty | list_131 seq_130

    opt_132 ::= opttemp | $empty

    seq_133 ::= IF_P NOT EXISTS

    opt_134 ::= seq_133 | $empty

    opt_136 ::= opttableelementlist | $empty

    opt_137 ::= optinherit | $empty

    opt_138 ::= optpartitionspec | $empty

    opt_139 ::= table_access_method_clause | $empty

    opt_140 ::= optwith | $empty

    opt_141 ::= oncommitoption | $empty

    opt_142 ::= opttablespace | $empty

    opt_143 ::= opttypedtableelementlist | $empty

    opt_144 ::= optpartitionspec | $empty

    opt_145 ::= table_access_method_clause | $empty

    opt_146 ::= optwith | $empty

    opt_147 ::= oncommitoption | $empty

    opt_148 ::= opttablespace | $empty

    opt_149 ::= opttypedtableelementlist | $empty

    opt_150 ::= optpartitionspec | $empty

    opt_151 ::= table_access_method_clause | $empty

    opt_152 ::= optwith | $empty

    opt_153 ::= oncommitoption | $empty

    opt_154 ::= opttablespace | $empty

    grp_135 ::= OPEN_PAREN opt_136 CLOSE_PAREN opt_137 opt_138 opt_139 opt_140 opt_141 opt_142 | OF any_name opt_143 opt_144 opt_145 opt_146 opt_147 opt_148 | PARTITION OF qualified_name opt_149 partitionboundspec opt_150 opt_151 opt_152 opt_153 opt_154

    grp_155 ::= TEMPORARY | TEMP

    grp_156 ::= TEMPORARY | TEMP

    seq_157 ::= COMMA tableelement

    list_158 ::= $empty | list_158 seq_157

    seq_159 ::= COMMA typedtableelement

    list_160 ::= $empty | list_160 seq_159

    opt_161 ::= create_generic_options | $empty

    seq_162 ::= WITH OPTIONS

    opt_163 ::= seq_162 | $empty

    list_164 ::= $empty | list_164 colconstraint

    opt_165 ::= definition_ | $empty

    opt_166 ::= optconstablespace | $empty

    opt_167 ::= definition_ | $empty

    opt_168 ::= optconstablespace | $empty

    opt_169 ::= no_inherit_ | $empty

    opt_171 ::= optparenthesizedseqoptlist | $empty

    grp_170 ::= IDENTITY_P opt_171 | OPEN_PAREN a_expr CLOSE_PAREN STORED

    opt_172 ::= column_list_ | $empty

    opt_173 ::= key_match | $empty

    opt_174 ::= key_actions | $empty

    grp_175 ::= DEFERRED | IMMEDIATE

    grp_177 ::= INCLUDING | EXCLUDING

    grp_176 ::= grp_177 tablelikeoption

    list_178 ::= $empty | list_178 grp_176

    opt_180 ::= c_include_ | $empty

    opt_181 ::= definition_ | $empty

    opt_182 ::= optconstablespace | $empty

    grp_179 ::= OPEN_PAREN columnlist CLOSE_PAREN opt_180 opt_181 opt_182 constraintattributespec | existingindex constraintattributespec

    opt_184 ::= c_include_ | $empty

    opt_185 ::= definition_ | $empty

    opt_186 ::= optconstablespace | $empty

    grp_183 ::= OPEN_PAREN columnlist CLOSE_PAREN opt_184 opt_185 opt_186 constraintattributespec | existingindex constraintattributespec

    opt_187 ::= access_method_clause | $empty

    opt_188 ::= c_include_ | $empty

    opt_189 ::= definition_ | $empty

    opt_190 ::= optconstablespace | $empty

    opt_191 ::= exclusionwhereclause | $empty

    opt_192 ::= column_list_ | $empty

    opt_193 ::= key_match | $empty

    opt_194 ::= key_actions | $empty

    seq_195 ::= COMMA columnElem

    list_196 ::= $empty | list_196 seq_195

    grp_197 ::= FULL | PARTIAL | SIMPLE

    seq_198 ::= COMMA exclusionconstraintelem

    list_199 ::= $empty | list_199 seq_198

    grp_200 ::= any_operator | OPERATOR OPEN_PAREN any_operator CLOSE_PAREN

    grp_201 ::= NULL_P | DEFAULT

    seq_202 ::= COMMA part_elem

    list_203 ::= $empty | list_203 seq_202

    opt_204 ::= collate_ | $empty

    opt_205 ::= class_ | $empty

    opt_206 ::= collate_ | $empty

    opt_207 ::= class_ | $empty

    opt_208 ::= collate_ | $empty

    opt_209 ::= class_ | $empty

    grp_210 ::= DROP | DELETE_P ROWS | PRESERVE ROWS

    seq_211 ::= IF_P NOT EXISTS

    opt_212 ::= seq_211 | $empty

    opt_213 ::= name_list_ | $empty

    seq_214 ::= IF_P EXISTS

    opt_215 ::= seq_214 | $empty

    opt_216 ::= opttemp | $empty

    seq_217 ::= IF_P NOT EXISTS

    opt_218 ::= seq_217 | $empty

    opt_219 ::= with_data_ | $empty

    opt_220 ::= column_list_ | $empty

    opt_221 ::= table_access_method_clause | $empty

    opt_222 ::= optwith | $empty

    opt_223 ::= oncommitoption | $empty

    opt_224 ::= opttablespace | $empty

    grp_225 ::= DATA_P | NO DATA_P

    opt_226 ::= optnolog | $empty

    seq_227 ::= IF_P NOT EXISTS

    opt_228 ::= seq_227 | $empty

    opt_229 ::= with_data_ | $empty

    opt_230 ::= column_list_ | $empty

    opt_231 ::= table_access_method_clause | $empty

    opt_232 ::= reloptions_ | $empty

    opt_233 ::= opttablespace | $empty

    opt_234 ::= concurrently_ | $empty

    opt_235 ::= with_data_ | $empty

    opt_236 ::= opttemp | $empty

    seq_237 ::= IF_P NOT EXISTS

    opt_238 ::= seq_237 | $empty

    opt_239 ::= optseqoptlist | $empty

    seq_240 ::= IF_P EXISTS

    opt_241 ::= seq_240 | $empty

    list_242 ::= seqoptelem | list_242 seqoptelem

    opt_243 ::= by_ | $empty

    grp_244 ::= MAXVALUE | MINVALUE | CYCLE

    opt_245 ::= with_ | $empty

    opt_246 ::= with_ | $empty

    opt_247 ::= numericonly | $empty

    seq_248 ::= COMMA numericonly

    list_249 ::= $empty | list_249 seq_248

    opt_250 ::= or_replace_ | $empty

    opt_251 ::= trusted_ | $empty

    opt_252 ::= procedural_ | $empty

    opt_253 ::= inline_handler_ | $empty

    opt_254 ::= validator_ | $empty

    seq_255 ::= HANDLER handler_name opt_253 opt_254

    opt_256 ::= seq_255 | $empty

    opt_257 ::= attrs | $empty

    opt_258 ::= opttablespaceowner | $empty

    opt_259 ::= reloptions_ | $empty

    seq_260 ::= IF_P EXISTS

    opt_261 ::= seq_260 | $empty

    seq_262 ::= IF_P NOT EXISTS

    opt_263 ::= seq_262 | $empty

    opt_264 ::= with_ | $empty

    list_265 ::= $empty | list_265 create_extension_opt_item

    list_266 ::= $empty | list_266 alter_extension_opt_item

    opt_267 ::= fdw_options_ | $empty

    opt_268 ::= create_generic_options | $empty

    list_269 ::= fdw_option | list_269 fdw_option

    opt_270 ::= fdw_options_ | $empty

    seq_271 ::= COMMA generic_option_elem

    list_272 ::= $empty | list_272 seq_271

    seq_273 ::= COMMA alter_generic_option_elem

    list_274 ::= $empty | list_274 seq_273

    opt_275 ::= type_ | $empty

    opt_276 ::= foreign_server_version_ | $empty

    opt_277 ::= create_generic_options | $empty

    opt_278 ::= type_ | $empty

    opt_279 ::= foreign_server_version_ | $empty

    opt_280 ::= create_generic_options | $empty

    grp_281 ::= sconst | NULL_P

    opt_283 ::= alter_generic_options | $empty

    grp_282 ::= alter_generic_options | foreign_server_version opt_283

    opt_284 ::= opttableelementlist | $empty

    opt_285 ::= optinherit | $empty

    opt_286 ::= create_generic_options | $empty

    opt_287 ::= opttableelementlist | $empty

    opt_288 ::= optinherit | $empty

    opt_289 ::= create_generic_options | $empty

    opt_290 ::= opttypedtableelementlist | $empty

    opt_291 ::= create_generic_options | $empty

    opt_292 ::= opttypedtableelementlist | $empty

    opt_293 ::= create_generic_options | $empty

    opt_294 ::= import_qualification | $empty

    opt_295 ::= create_generic_options | $empty

    opt_296 ::= create_generic_options | $empty

    opt_297 ::= create_generic_options | $empty

    opt_298 ::= rowsecuritydefaultpermissive | $empty

    opt_299 ::= rowsecuritydefaultforcmd | $empty

    opt_300 ::= rowsecuritydefaulttorole | $empty

    opt_301 ::= rowsecurityoptionalexpr | $empty

    opt_302 ::= rowsecurityoptionalwithcheck | $empty

    opt_303 ::= rowsecurityoptionaltorole | $empty

    opt_304 ::= rowsecurityoptionalexpr | $empty

    opt_305 ::= rowsecurityoptionalwithcheck | $empty

    opt_306 ::= triggerreferencing | $empty

    opt_307 ::= triggerforspec | $empty

    opt_308 ::= triggerwhen | $empty

    opt_309 ::= optconstrfromtable | $empty

    opt_310 ::= triggerwhen | $empty

    seq_311 ::= OR triggeroneevent

    list_312 ::= $empty | list_312 seq_311

    list_313 ::= triggertransition | list_313 triggertransition

    opt_314 ::= as_ | $empty

    opt_315 ::= triggerforopteach | $empty

    grp_316 ::= triggerfuncarg

    seq_317 ::= COMMA triggerfuncarg

    list_318 ::= $empty | list_318 seq_317

    list_319 ::= $empty | list_319 constraintattributeElem

    seq_320 ::= AND event_trigger_when_item

    list_321 ::= $empty | list_321 seq_320

    seq_322 ::= COMMA sconst

    list_323 ::= $empty | list_323 seq_322

    opt_324 ::= or_replace_ | $empty

    opt_325 ::= or_replace_ | $empty

    opt_326 ::= opttablefuncelementlist | $empty

    opt_327 ::= enum_val_list_ | $empty

    seq_328 ::= COMMA def_elem

    list_329 ::= $empty | list_329 seq_328

    seq_330 ::= EQUAL def_arg

    opt_331 ::= seq_330 | $empty

    seq_332 ::= COMMA old_aggr_elem

    list_333 ::= $empty | list_333 seq_332

    seq_334 ::= COMMA sconst

    list_335 ::= $empty | list_335 seq_334

    opt_336 ::= if_not_exists_ | $empty

    opt_337 ::= if_not_exists_ | $empty

    opt_338 ::= if_not_exists_ | $empty

    opt_339 ::= default_ | $empty

    opt_340 ::= opfamily_ | $empty

    seq_341 ::= COMMA opclass_item

    list_342 ::= $empty | list_342 seq_341

    opt_343 ::= opclass_purpose | $empty

    opt_344 ::= recheck_ | $empty

    opt_345 ::= opclass_purpose | $empty

    opt_346 ::= recheck_ | $empty

    seq_347 ::= COMMA opclass_drop

    list_348 ::= $empty | list_348 seq_347

    opt_349 ::= drop_behavior_ | $empty

    opt_350 ::= drop_behavior_ | $empty

    opt_351 ::= drop_behavior_ | $empty

    opt_352 ::= drop_behavior_ | $empty

    opt_353 ::= drop_behavior_ | $empty

    opt_354 ::= drop_behavior_ | $empty

    opt_355 ::= drop_behavior_ | $empty

    opt_356 ::= drop_behavior_ | $empty

    opt_357 ::= drop_behavior_ | $empty

    opt_358 ::= drop_behavior_ | $empty

    opt_359 ::= drop_behavior_ | $empty

    opt_360 ::= drop_behavior_ | $empty

    opt_361 ::= drop_behavior_ | $empty

    opt_362 ::= drop_behavior_ | $empty

    opt_363 ::= drop_behavior_ | $empty

    opt_364 ::= drop_behavior_ | $empty

    opt_365 ::= drop_behavior_ | $empty

    opt_366 ::= procedural_ | $empty

    seq_367 ::= COMMA any_name

    list_368 ::= $empty | list_368 seq_367

    opt_369 ::= attrs | $empty

    seq_370 ::= DOT attr_name

    list_371 ::= seq_370 | list_371 seq_370

    seq_372 ::= COMMA typename

    list_373 ::= $empty | list_373 seq_372

    opt_374 ::= table_ | $empty

    opt_375 ::= restart_seqs_ | $empty

    opt_376 ::= drop_behavior_ | $empty

    opt_377 ::= provider_ | $empty

    opt_378 ::= provider_ | $empty

    opt_379 ::= provider_ | $empty

    opt_380 ::= provider_ | $empty

    opt_381 ::= provider_ | $empty

    opt_382 ::= provider_ | $empty

    opt_383 ::= provider_ | $empty

    opt_384 ::= provider_ | $empty

    opt_385 ::= provider_ | $empty

    opt_386 ::= provider_ | $empty

    opt_387 ::= from_in_ | $empty

    opt_388 ::= from_in_ | $empty

    opt_389 ::= from_in_ | $empty

    opt_390 ::= from_in_ | $empty

    opt_391 ::= from_in_ | $empty

    opt_392 ::= from_in_ | $empty

    opt_393 ::= from_in_ | $empty

    opt_394 ::= from_in_ | $empty

    opt_395 ::= from_in_ | $empty

    opt_396 ::= from_in_ | $empty

    opt_397 ::= from_in_ | $empty

    opt_398 ::= from_in_ | $empty

    opt_399 ::= from_in_ | $empty

    opt_400 ::= from_in_ | $empty

    opt_401 ::= grant_grant_option_ | $empty

    opt_402 ::= drop_behavior_ | $empty

    opt_403 ::= drop_behavior_ | $empty

    seq_404 ::= COMMA privilege

    list_405 ::= $empty | list_405 seq_404

    opt_406 ::= column_list_ | $empty

    opt_407 ::= column_list_ | $empty

    opt_408 ::= column_list_ | $empty

    opt_409 ::= column_list_ | $empty

    seq_410 ::= COMMA grantee

    list_411 ::= $empty | list_411 seq_410

    opt_412 ::= grant_admin_option_ | $empty

    opt_413 ::= granted_by_ | $empty

    opt_414 ::= granted_by_ | $empty

    opt_415 ::= drop_behavior_ | $empty

    opt_416 ::= granted_by_ | $empty

    opt_417 ::= drop_behavior_ | $empty

    list_418 ::= $empty | list_418 defacloption

    opt_419 ::= grant_grant_option_ | $empty

    opt_420 ::= drop_behavior_ | $empty

    opt_421 ::= drop_behavior_ | $empty

    opt_422 ::= unique_ | $empty

    opt_423 ::= concurrently_ | $empty

    opt_424 ::= if_not_exists_ | $empty

    seq_425 ::= opt_424 index_name_

    opt_426 ::= seq_425 | $empty

    opt_427 ::= access_method_clause | $empty

    opt_428 ::= include_ | $empty

    opt_429 ::= nulls_distinct | $empty

    opt_430 ::= reloptions_ | $empty

    opt_431 ::= opttablespace | $empty

    opt_432 ::= where_clause | $empty

    opt_433 ::= unique_ | $empty

    opt_434 ::= concurrently_ | $empty

    opt_435 ::= if_not_exists_ | $empty

    opt_436 ::= access_method_clause | $empty

    opt_437 ::= include_ | $empty

    opt_438 ::= nulls_distinct | $empty

    opt_439 ::= reloptions_ | $empty

    opt_440 ::= opttablespace | $empty

    opt_441 ::= where_clause | $empty

    opt_442 ::= NOT | $empty

    seq_443 ::= COMMA index_elem

    list_444 ::= $empty | list_444 seq_443

    opt_445 ::= collate_ | $empty

    opt_446 ::= class_ | $empty

    opt_447 ::= asc_desc_ | $empty

    opt_448 ::= nulls_order_ | $empty

    opt_449 ::= collate_ | $empty

    opt_450 ::= asc_desc_ | $empty

    opt_451 ::= nulls_order_ | $empty

    seq_452 ::= COMMA index_elem

    list_453 ::= $empty | list_453 seq_452

    opt_454 ::= or_replace_ | $empty

    grp_455 ::= FUNCTION | PROCEDURE

    grp_457 ::= func_return | TABLE OPEN_PAREN table_func_column_list CLOSE_PAREN

    grp_456 ::= RETURNS grp_457

    opt_458 ::= grp_456 | $empty

    opt_459 ::= func_args_list | $empty

    seq_460 ::= COMMA func_arg

    list_461 ::= $empty | list_461 seq_460

    seq_462 ::= COMMA function_with_argtypes

    list_463 ::= $empty | list_463 seq_462

    opt_464 ::= indirection | $empty

    opt_465 ::= func_args_with_defaults_list | $empty

    seq_466 ::= COMMA func_arg_with_default

    list_467 ::= $empty | list_467 seq_466

    opt_468 ::= param_name | $empty

    opt_469 ::= arg_class | $empty

    opt_470 ::= OUT_P | $empty

    opt_471 ::= SETOF | $empty

    grp_473 ::= DEFAULT | EQUAL

    grp_472 ::= grp_473 a_expr

    opt_474 ::= grp_472 | $empty

    grp_475 ::= STAR | aggr_args_list | ORDER BY aggr_args_list | aggr_args_list ORDER BY aggr_args_list

    seq_476 ::= COMMA aggr_arg

    list_477 ::= $empty | list_477 seq_476

    seq_478 ::= COMMA aggregate_with_argtypes

    list_479 ::= $empty | list_479 seq_478

    list_480 ::= createfunc_opt_item | list_480 createfunc_opt_item

    seq_481 ::= COMMA FOR TYPE_P typename

    list_482 ::= $empty | list_482 seq_481

    seq_483 ::= COMMA table_func_column

    list_484 ::= $empty | list_484 seq_483

    grp_485 ::= FUNCTION | PROCEDURE | ROUTINE

    opt_486 ::= restrict_ | $empty

    list_487 ::= common_func_opt_item | list_487 common_func_opt_item

    opt_488 ::= drop_behavior_ | $empty

    opt_489 ::= drop_behavior_ | $empty

    opt_490 ::= drop_behavior_ | $empty

    opt_491 ::= drop_behavior_ | $empty

    opt_492 ::= drop_behavior_ | $empty

    opt_493 ::= drop_behavior_ | $empty

    opt_494 ::= drop_behavior_ | $empty

    opt_495 ::= drop_behavior_ | $empty

    opt_496 ::= drop_behavior_ | $empty

    opt_497 ::= drop_behavior_ | $empty

    seq_498 ::= colid DOT

    list_499 ::= $empty | list_499 seq_498

    seq_500 ::= COMMA operator_with_argtypes

    list_501 ::= $empty | list_501 seq_500

    list_502 ::= dostmt_opt_item | list_502 dostmt_opt_item

    opt_503 ::= cast_context | $empty

    opt_504 ::= cast_context | $empty

    opt_505 ::= cast_context | $empty

    opt_506 ::= if_exists_ | $empty

    opt_507 ::= drop_behavior_ | $empty

    opt_508 ::= or_replace_ | $empty

    opt_509 ::= if_exists_ | $empty

    opt_510 ::= drop_behavior_ | $empty

    opt_511 ::= reindex_option_list | $empty

    opt_512 ::= concurrently_ | $empty

    opt_513 ::= reindex_option_list | $empty

    opt_514 ::= concurrently_ | $empty

    opt_515 ::= reindex_option_list | $empty

    opt_516 ::= concurrently_ | $empty

    opt_517 ::= single_name_ | $empty

    opt_518 ::= procedural_ | $empty

    opt_519 ::= column_ | $empty

    opt_520 ::= column_ | $empty

    opt_521 ::= column_ | $empty

    opt_522 ::= column_ | $empty

    opt_523 ::= column_ | $empty

    opt_524 ::= column_ | $empty

    opt_525 ::= column_ | $empty

    opt_526 ::= column_ | $empty

    opt_527 ::= drop_behavior_ | $empty

    opt_528 ::= no_ | $empty

    opt_529 ::= no_ | $empty

    opt_530 ::= no_ | $empty

    opt_531 ::= no_ | $empty

    opt_532 ::= no_ | $empty

    opt_533 ::= no_ | $empty

    seq_534 ::= COMMA operator_def_elem

    list_535 ::= $empty | list_535 seq_534

    opt_536 ::= procedural_ | $empty

    opt_537 ::= publication_for_tables_ | $empty

    opt_538 ::= definition_ | $empty

    opt_539 ::= definition_ | $empty

    seq_540 ::= COMMA publication_name_item

    list_541 ::= $empty | list_541 seq_540

    opt_542 ::= definition_ | $empty

    opt_543 ::= definition_ | $empty

    opt_544 ::= drop_behavior_ | $empty

    opt_545 ::= drop_behavior_ | $empty

    opt_546 ::= or_replace_ | $empty

    opt_547 ::= where_clause | $empty

    opt_548 ::= instead_ | $empty

    opt_549 ::= ruleactionstmtOrEmpty | $empty

    opt_550 ::= ruleactionstmtOrEmpty | $empty

    seq_551 ::= SEMI opt_550

    list_552 ::= $empty | list_552 seq_551

    opt_553 ::= notify_payload | $empty

    opt_554 ::= transaction_ | $empty

    opt_555 ::= transaction_chain_ | $empty

    opt_556 ::= transaction_ | $empty

    opt_557 ::= transaction_mode_list_or_empty | $empty

    opt_558 ::= transaction_mode_list_or_empty | $empty

    opt_559 ::= transaction_ | $empty

    opt_560 ::= transaction_chain_ | $empty

    opt_561 ::= transaction_ | $empty

    opt_562 ::= transaction_chain_ | $empty

    opt_563 ::= transaction_ | $empty

    opt_564 ::= transaction_chain_ | $empty

    opt_565 ::= transaction_ | $empty

    opt_566 ::= transaction_ | $empty

    opt_567 ::= COMMA | $empty

    seq_568 ::= opt_567 transaction_mode_item

    list_569 ::= $empty | list_569 seq_568

    opt_570 ::= NO | $empty

    seq_571 ::= OR REPLACE

    opt_572 ::= seq_571 | $empty

    opt_573 ::= opttemp | $empty

    opt_575 ::= column_list_ | $empty

    opt_576 ::= reloptions_ | $empty

    opt_577 ::= reloptions_ | $empty

    grp_574 ::= VIEW qualified_name opt_575 opt_576 | RECURSIVE VIEW qualified_name OPEN_PAREN columnlist CLOSE_PAREN opt_577

    opt_578 ::= check_option_ | $empty

    grp_579 ::= CASCADED | LOCAL

    opt_580 ::= grp_579 | $empty

    opt_581 ::= with_ | $empty

    opt_582 ::= createdb_opt_list | $empty

    list_583 ::= createdb_opt_item | list_583 createdb_opt_item

    opt_584 ::= equal_ | $empty

    grp_585 ::= signediconst | boolean_or_string_ | DEFAULT

    opt_587 ::= createdb_opt_list | $empty

    opt_588 ::= createdb_opt_list | $empty

    grp_586 ::= WITH opt_587 | opt_588 | SET TABLESPACE name

    seq_589 ::= IF_P EXISTS

    opt_590 ::= seq_589 | $empty

    opt_591 ::= with_ | $empty

    seq_592 ::= opt_591 OPEN_PAREN drop_option_list CLOSE_PAREN

    opt_593 ::= seq_592 | $empty

    seq_594 ::= COMMA drop_option

    list_595 ::= $empty | list_595 seq_594

    grp_596 ::= SET | RESET

    opt_597 ::= as_ | $empty

    seq_599 ::= IF_P EXISTS

    opt_600 ::= seq_599 | $empty

    opt_601 ::= drop_behavior_ | $empty

    grp_598 ::= alter_column_default | DROP NOT NULL_P | SET NOT NULL_P | ADD_P tableconstraint | DROP CONSTRAINT opt_600 name opt_601 | VALIDATE CONSTRAINT name

    opt_602 ::= default_ | $empty

    opt_603 ::= verbose_ | $empty

    opt_604 ::= cluster_index_specification | $empty

    opt_605 ::= verbose_ | $empty

    opt_606 ::= verbose_ | $empty

    opt_607 ::= full_ | $empty

    opt_608 ::= freeze_ | $empty

    opt_609 ::= verbose_ | $empty

    opt_610 ::= analyze_ | $empty

    opt_611 ::= vacuum_relation_list_ | $empty

    opt_612 ::= vacuum_relation_list_ | $empty

    opt_613 ::= verbose_ | $empty

    opt_614 ::= vacuum_relation_list_ | $empty

    opt_615 ::= vacuum_relation_list_ | $empty

    seq_616 ::= COMMA utility_option_elem

    list_617 ::= $empty | list_617 seq_616

    seq_618 ::= COMMA vac_analyze_option_elem

    list_619 ::= $empty | list_619 seq_618

    opt_620 ::= utility_option_arg | $empty

    opt_621 ::= vac_analyze_option_arg | $empty

    opt_622 ::= name_list_ | $empty

    seq_623 ::= COMMA vacuum_relation

    list_624 ::= $empty | list_624 seq_623

    opt_625 ::= verbose_ | $empty

    seq_626 ::= COMMA explain_option_elem

    list_627 ::= $empty | list_627 seq_626

    opt_628 ::= explain_option_arg | $empty

    opt_629 ::= prep_type_clause | $empty

    opt_630 ::= execute_param_clause | $empty

    opt_631 ::= opttemp | $empty

    opt_632 ::= execute_param_clause | $empty

    opt_633 ::= with_data_ | $empty

    opt_634 ::= opttemp | $empty

    opt_635 ::= execute_param_clause | $empty

    opt_636 ::= with_data_ | $empty

    opt_637 ::= with_clause_ | $empty

    opt_638 ::= on_conflict_ | $empty

    opt_639 ::= returning_clause | $empty

    seq_640 ::= AS colid

    opt_641 ::= seq_640 | $empty

    seq_642 ::= OVERRIDING override_kind VALUE_P

    opt_643 ::= seq_642 | $empty

    seq_644 ::= COMMA insert_column_item

    list_645 ::= $empty | list_645 seq_644

    opt_646 ::= conf_expr_ | $empty

    opt_648 ::= where_clause | $empty

    grp_647 ::= UPDATE SET set_clause_list opt_648 | NOTHING

    opt_649 ::= where_clause | $empty

    opt_650 ::= INTO | $empty

    opt_651 ::= alias_clause | $empty

    grp_652 ::= select_with_parens | qualified_name

    opt_653 ::= alias_clause | $empty

    opt_655 ::= merge_update_clause | $empty

    opt_656 ::= merge_insert_clause | $empty

    grp_654 ::= merge_insert_clause opt_655 | merge_update_clause opt_656

    opt_657 ::= merge_delete_clause | $empty

    seq_658 ::= AND a_expr

    opt_659 ::= seq_658 | $empty

    opt_660 ::= THEN | $empty

    seq_661 ::= OPEN_PAREN insert_column_list CLOSE_PAREN

    opt_662 ::= seq_661 | $empty

    seq_663 ::= AND a_expr

    opt_664 ::= seq_663 | $empty

    opt_665 ::= THEN | $empty

    opt_666 ::= THEN | $empty

    opt_667 ::= with_clause_ | $empty

    opt_668 ::= using_clause | $empty

    opt_669 ::= where_or_current_clause | $empty

    opt_670 ::= returning_clause | $empty

    opt_671 ::= table_ | $empty

    opt_672 ::= lock_ | $empty

    opt_673 ::= nowait_ | $empty

    grp_674 ::= SHARE | EXCLUSIVE

    grp_675 ::= SHARE | EXCLUSIVE

    grp_676 ::= UPDATE EXCLUSIVE | ROW EXCLUSIVE

    opt_677 ::= grp_676 | $empty

    opt_678 ::= with_clause_ | $empty

    opt_679 ::= from_clause | $empty

    opt_680 ::= where_or_current_clause | $empty

    opt_681 ::= returning_clause | $empty

    seq_682 ::= COMMA set_clause

    list_683 ::= $empty | list_683 seq_682

    seq_684 ::= COMMA set_target

    list_685 ::= $empty | list_685 seq_684

    opt_686 ::= hold_ | $empty

    grp_687 ::= NO SCROLL | SCROLL | BINARY | INSENSITIVE

    list_688 ::= $empty | list_688 grp_687

    opt_689 ::= sort_clause_ | $empty

    opt_691 ::= select_limit_ | $empty

    opt_692 ::= for_locking_clause_ | $empty

    grp_690 ::= for_locking_clause opt_691 | select_limit opt_692

    opt_693 ::= grp_690 | $empty

    opt_694 ::= sort_clause_ | $empty

    opt_696 ::= select_limit_ | $empty

    opt_697 ::= for_locking_clause_ | $empty

    grp_695 ::= for_locking_clause opt_696 | select_limit opt_697

    opt_698 ::= grp_695 | $empty

    grp_700 ::= UNION | EXCEPT

    opt_701 ::= all_or_distinct | $empty

    grp_699 ::= grp_700 opt_701 simple_select_intersect

    list_702 ::= $empty | list_702 grp_699

    opt_703 ::= all_or_distinct | $empty

    seq_704 ::= INTERSECT opt_703 simple_select_pramary

    list_705 ::= $empty | list_705 seq_704

    opt_708 ::= all_clause_ | $empty

    opt_709 ::= target_list_ | $empty

    opt_710 ::= into_clause | $empty

    opt_711 ::= from_clause | $empty

    opt_712 ::= where_clause | $empty

    opt_713 ::= group_clause | $empty

    opt_714 ::= having_clause | $empty

    opt_715 ::= window_clause | $empty

    opt_716 ::= into_clause | $empty

    opt_717 ::= from_clause | $empty

    opt_718 ::= where_clause | $empty

    opt_719 ::= group_clause | $empty

    opt_720 ::= having_clause | $empty

    opt_721 ::= window_clause | $empty

    grp_707 ::= opt_708 opt_709 opt_710 opt_711 opt_712 opt_713 opt_714 opt_715 | distinct_clause target_list opt_716 opt_717 opt_718 opt_719 opt_720 opt_721

    grp_706 ::= SELECT grp_707

    opt_722 ::= RECURSIVE | $empty

    seq_723 ::= COMMA common_table_expr

    list_724 ::= $empty | list_724 seq_723

    opt_725 ::= name_list_ | $empty

    opt_726 ::= materialized_ | $empty

    grp_727 ::= LOCAL | GLOBAL

    opt_728 ::= grp_727 | $empty

    grp_729 ::= TEMPORARY | TEMP

    opt_730 ::= table_ | $empty

    opt_731 ::= table_ | $empty

    seq_732 ::= ON OPEN_PAREN expr_list CLOSE_PAREN

    opt_733 ::= seq_732 | $empty

    seq_734 ::= COMMA sortby

    list_735 ::= $empty | list_735 seq_734

    opt_737 ::= asc_desc_ | $empty

    grp_736 ::= USING qual_all_op | opt_737

    opt_738 ::= nulls_order_ | $empty

    opt_739 ::= offset_clause | $empty

    opt_740 ::= limit_clause | $empty

    seq_741 ::= COMMA select_offset_value

    opt_742 ::= seq_741 | $empty

    grp_744 ::= ONLY | WITH TIES

    grp_745 ::= ONLY | WITH TIES

    grp_743 ::= select_fetch_first_value row_or_rows grp_744 | row_or_rows grp_745

    grp_746 ::= select_offset_value | select_fetch_first_value row_or_rows

    seq_747 ::= COMMA group_by_item

    list_748 ::= $empty | list_748 seq_747

    list_749 ::= for_locking_item | list_749 for_locking_item

    opt_750 ::= locked_rels_list | $empty

    opt_751 ::= nowait_or_skip_ | $empty

    seq_753 ::= NO KEY

    opt_754 ::= seq_753 | $empty

    opt_755 ::= KEY | $empty

    grp_752 ::= opt_754 UPDATE | opt_755 SHARE

    seq_756 ::= COMMA OPEN_PAREN expr_list CLOSE_PAREN

    list_757 ::= $empty | list_757 seq_756

    seq_758 ::= COMMA table_ref

    list_759 ::= $empty | list_759 seq_758

    opt_761 ::= alias_clause | $empty

    opt_762 ::= tablesample_clause | $empty

    opt_763 ::= func_alias_clause | $empty

    opt_764 ::= alias_clause | $empty

    opt_765 ::= alias_clause | $empty

    opt_767 ::= alias_clause | $empty

    opt_768 ::= func_alias_clause | $empty

    opt_769 ::= alias_clause | $empty

    grp_766 ::= xmltable opt_767 | func_table opt_768 | select_with_parens opt_769

    opt_771 ::= join_type | $empty

    opt_772 ::= join_type | $empty

    grp_770 ::= CROSS JOIN table_ref | NATURAL opt_771 JOIN table_ref | opt_772 JOIN table_ref join_qual

    opt_773 ::= grp_770 | $empty

    opt_774 ::= alias_clause | $empty

    grp_760 ::= relation_expr opt_761 opt_762 | func_table opt_763 | xmltable opt_764 | select_with_parens opt_765 | LATERAL_P grp_766 | OPEN_PAREN table_ref opt_773 CLOSE_PAREN opt_774

    opt_776 ::= join_type | $empty

    opt_777 ::= join_type | $empty

    grp_775 ::= CROSS JOIN table_ref | NATURAL opt_776 JOIN table_ref | opt_777 JOIN table_ref join_qual

    list_778 ::= $empty | list_778 grp_775

    opt_779 ::= AS | $empty

    seq_780 ::= OPEN_PAREN name_list CLOSE_PAREN

    opt_781 ::= seq_780 | $empty

    opt_783 ::= colid | $empty

    grp_782 ::= AS opt_783 | colid

    grp_784 ::= FULL | LEFT | RIGHT | INNER_P

    opt_785 ::= OUTER_P | $empty

    opt_786 ::= STAR | $empty

    grp_787 ::= qualified_name | OPEN_PAREN qualified_name CLOSE_PAREN

    seq_788 ::= COMMA relation_expr

    list_789 ::= $empty | list_789 seq_788

    opt_790 ::= AS | $empty

    seq_791 ::= opt_790 colid

    opt_792 ::= seq_791 | $empty

    opt_793 ::= repeatable_clause_ | $empty

    opt_794 ::= ordinality_ | $empty

    opt_795 ::= ordinality_ | $empty

    opt_796 ::= col_def_list_ | $empty

    seq_797 ::= COMMA rowsfrom_item

    list_798 ::= $empty | list_798 seq_797

    grp_799 ::= CURRENT_P OF cursor_name | a_expr

    seq_800 ::= COMMA tablefuncelement

    list_801 ::= $empty | list_801 seq_800

    opt_802 ::= collate_clause_ | $empty

    grp_803 ::= c_expr xmlexists_argument COLUMNS xmltable_column_list | XMLNAMESPACES OPEN_PAREN xml_namespace_list CLOSE_PAREN COMMA c_expr xmlexists_argument COLUMNS xmltable_column_list

    seq_804 ::= COMMA xmltable_column_el

    list_805 ::= $empty | list_805 seq_804

    opt_807 ::= xmltable_column_option_list | $empty

    grp_806 ::= typename opt_807 | FOR ORDINALITY

    list_808 ::= xmltable_column_option_el | list_808 xmltable_column_option_el

    seq_809 ::= COMMA xml_namespace_el

    list_810 ::= $empty | list_810 seq_809

    opt_811 ::= SETOF | $empty

    seq_813 ::= OPEN_BRACKET iconst CLOSE_BRACKET

    opt_814 ::= seq_813 | $empty

    grp_812 ::= opt_array_bounds | ARRAY opt_814

    opt_815 ::= iconst | $empty

    seq_816 ::= OPEN_BRACKET opt_815 CLOSE_BRACKET

    list_817 ::= $empty | list_817 seq_816

    opt_819 ::= interval_ | $empty

    grp_818 ::= opt_819 | OPEN_PAREN iconst CLOSE_PAREN

    opt_820 ::= attrs | $empty

    opt_821 ::= type_modifiers_ | $empty

    opt_822 ::= float_ | $empty

    opt_823 ::= type_modifiers_ | $empty

    opt_824 ::= type_modifiers_ | $empty

    opt_825 ::= type_modifiers_ | $empty

    opt_826 ::= varying_ | $empty

    opt_827 ::= varying_ | $empty

    seq_828 ::= OPEN_PAREN iconst CLOSE_PAREN

    opt_829 ::= seq_828 | $empty

    seq_830 ::= OPEN_PAREN iconst CLOSE_PAREN

    opt_831 ::= seq_830 | $empty

    grp_832 ::= CHARACTER | CHAR_P | NCHAR

    opt_833 ::= varying_ | $empty

    grp_834 ::= CHARACTER | CHAR_P

    opt_835 ::= varying_ | $empty

    grp_836 ::= TIMESTAMP | TIME

    seq_837 ::= OPEN_PAREN iconst CLOSE_PAREN

    opt_838 ::= seq_837 | $empty

    opt_839 ::= timezone_ | $empty

    grp_840 ::= HOUR_P | MINUTE_P | interval_second

    grp_841 ::= MINUTE_P | interval_second

    seq_842 ::= OPEN_PAREN iconst CLOSE_PAREN

    opt_843 ::= seq_842 | $empty

    grp_844 ::= qual_op

    grp_846 ::= LESS_LESS | GREATER_GREATER

    grp_845 ::= grp_846 a_expr_or

    list_847 ::= $empty | list_847 grp_845

    seq_848 ::= OR a_expr_and

    list_849 ::= $empty | list_849 seq_848

    seq_850 ::= AND a_expr_between

    list_851 ::= $empty | list_851 seq_850

    opt_852 ::= NOT | $empty

    opt_853 ::= SYMMETRIC | $empty

    seq_854 ::= opt_852 BETWEEN opt_853 a_expr_in AND a_expr_in

    opt_855 ::= seq_854 | $empty

    opt_856 ::= NOT | $empty

    seq_857 ::= opt_856 IN_P in_expr

    opt_858 ::= seq_857 | $empty

    opt_859 ::= NOT | $empty

    grp_860 ::= ISNULL | NOTNULL

    opt_861 ::= grp_860 | $empty

    opt_863 ::= NOT | $empty

    opt_865 ::= unicode_normal_form | $empty

    grp_864 ::= NULL_P | TRUE_P | FALSE_P | UNKNOWN | DISTINCT FROM a_expr | OF OPEN_PAREN type_list CLOSE_PAREN | DOCUMENT_P | opt_865 NORMALIZED

    grp_862 ::= IS opt_863 grp_864

    opt_866 ::= grp_862 | $empty

    grp_868 ::= LT | GT | EQUAL | LESS_EQUALS | GREATER_EQUALS | NOT_EQUALS

    grp_869 ::= select_with_parens | OPEN_PAREN a_expr CLOSE_PAREN

    grp_867 ::= grp_868 a_expr_like | subquery_Op sub_type grp_869

    opt_870 ::= grp_867 | $empty

    opt_872 ::= NOT | $empty

    grp_873 ::= LIKE | ILIKE | SIMILAR TO

    opt_874 ::= escape_ | $empty

    grp_871 ::= opt_872 grp_873 a_expr_qual_op opt_874

    opt_875 ::= grp_871 | $empty

    seq_876 ::= qual_op a_expr_unary_qualop

    list_877 ::= $empty | list_877 seq_876

    opt_878 ::= qual_op | $empty

    grp_880 ::= MINUS | PLUS

    grp_879 ::= grp_880 a_expr_mul

    list_881 ::= $empty | list_881 grp_879

    grp_883 ::= STAR | SLASH | PERCENT

    grp_882 ::= grp_883 a_expr_caret

    list_884 ::= $empty | list_884 grp_882

    seq_885 ::= CARET a_expr_unary_sign

    opt_886 ::= seq_885 | $empty

    grp_887 ::= MINUS | PLUS

    opt_888 ::= grp_887 | $empty

    seq_889 ::= AT TIME ZONE a_expr

    opt_890 ::= seq_889 | $empty

    seq_891 ::= COLLATE any_name

    opt_892 ::= seq_891 | $empty

    seq_893 ::= TYPECAST typename

    list_894 ::= $empty | list_894 seq_893

    grp_895 ::= PLUS | MINUS

    opt_896 ::= indirection | $empty

    seq_898 ::= COMMA VARIADIC func_arg_expr

    opt_899 ::= seq_898 | $empty

    opt_900 ::= sort_clause_ | $empty

    opt_901 ::= sort_clause_ | $empty

    grp_902 ::= ALL | DISTINCT

    opt_903 ::= sort_clause_ | $empty

    grp_897 ::= func_arg_list opt_899 opt_900 | VARIADIC func_arg_expr opt_901 | grp_902 func_arg_list opt_903 | STAR

    opt_904 ::= within_group_clause | $empty

    opt_905 ::= filter_clause | $empty

    opt_906 ::= over_clause | $empty

    seq_907 ::= OPEN_PAREN iconst CLOSE_PAREN

    opt_908 ::= seq_907 | $empty

    seq_909 ::= OPEN_PAREN iconst CLOSE_PAREN

    opt_910 ::= seq_909 | $empty

    seq_911 ::= OPEN_PAREN iconst CLOSE_PAREN

    opt_912 ::= seq_911 | $empty

    seq_913 ::= OPEN_PAREN iconst CLOSE_PAREN

    opt_914 ::= seq_913 | $empty

    opt_915 ::= extract_list | $empty

    seq_916 ::= COMMA unicode_normal_form

    opt_917 ::= seq_916 | $empty

    opt_919 ::= func_arg_list | $empty

    grp_918 ::= overlay_list | opt_919

    opt_920 ::= position_list | $empty

    opt_922 ::= func_arg_list | $empty

    grp_921 ::= substr_list | opt_922

    grp_923 ::= BOTH | LEADING | TRAILING

    opt_924 ::= grp_923 | $empty

    grp_926 ::= xml_attributes | expr_list

    grp_925 ::= COMMA grp_926

    opt_927 ::= grp_925 | $empty

    opt_928 ::= xml_whitespace_option | $empty

    seq_929 ::= COMMA a_expr

    opt_930 ::= seq_929 | $empty

    opt_931 ::= xml_root_standalone_ | $empty

    opt_933 ::= json_object_constructor_null_clause | $empty

    opt_934 ::= json_key_uniqueness_constraint | $empty

    opt_935 ::= json_returning_clause | $empty

    opt_936 ::= json_returning_clause | $empty

    grp_932 ::= func_arg_list | json_name_and_value_list opt_933 opt_934 opt_935 | opt_936

    opt_938 ::= json_array_constructor_null_clause | $empty

    opt_939 ::= json_returning_clause | $empty

    opt_940 ::= json_format_clause | $empty

    opt_941 ::= json_returning_clause | $empty

    opt_942 ::= json_returning_clause | $empty

    grp_937 ::= json_value_expr_list opt_938 opt_939 | select_no_parens opt_940 opt_941 | opt_942

    opt_943 ::= json_key_uniqueness_constraint | $empty

    opt_944 ::= json_returning_clause | $empty

    opt_945 ::= json_passing_clause | $empty

    opt_946 ::= json_returning_clause | $empty

    opt_947 ::= json_quotes_clause | $empty

    opt_948 ::= json_behavior_clause | $empty

    opt_949 ::= json_passing_clause | $empty

    opt_950 ::= json_on_error_clause | $empty

    opt_951 ::= json_passing_clause | $empty

    opt_952 ::= json_returning_clause | $empty

    opt_953 ::= json_behavior_clause | $empty

    seq_954 ::= COMMA xml_attribute_el

    list_955 ::= $empty | list_955 seq_954

    seq_956 ::= AS colLabel

    opt_957 ::= seq_956 | $empty

    grp_958 ::= REF | VALUE_P

    seq_959 ::= COMMA window_definition

    list_960 ::= $empty | list_960 seq_959

    grp_961 ::= window_specification | colid

    opt_962 ::= existing_window_name_ | $empty

    opt_963 ::= partition_clause_ | $empty

    opt_964 ::= sort_clause_ | $empty

    opt_965 ::= frame_clause_ | $empty

    opt_966 ::= window_exclusion_clause_ | $empty

    opt_967 ::= window_exclusion_clause_ | $empty

    opt_968 ::= window_exclusion_clause_ | $empty

    grp_969 ::= PRECEDING | FOLLOWING

    grp_970 ::= PRECEDING | FOLLOWING

    grp_971 ::= CURRENT_P ROW | GROUP_P | TIES | NO OTHERS

    opt_972 ::= expr_list | $empty

    opt_973 ::= expr_list | $empty

    seq_974 ::= COMMA a_expr

    list_975 ::= $empty | list_975 seq_974

    seq_976 ::= COMMA func_arg_expr

    list_977 ::= $empty | list_977 seq_976

    grp_978 ::= COLON_EQUALS | EQUALS_GREATER

    seq_979 ::= COMMA typename

    list_980 ::= $empty | list_980 seq_979

    grp_981 ::= expr_list | array_expr_list

    opt_982 ::= grp_981 | $empty

    seq_983 ::= COMMA array_expr

    list_984 ::= $empty | list_984 seq_983

    seq_985 ::= FOR a_expr

    opt_986 ::= seq_985 | $empty

    opt_987 ::= case_arg | $empty

    opt_988 ::= case_default | $empty

    list_989 ::= when_clause | list_989 when_clause

    opt_990 ::= indirection | $empty

    grp_991 ::= attr_name | STAR

    opt_993 ::= slice_bound_ | $empty

    opt_994 ::= slice_bound_ | $empty

    grp_992 ::= a_expr | opt_993 COLON opt_994

    list_995 ::= indirection_el | list_995 indirection_el

    list_996 ::= $empty | list_996 indirection_el

    opt_997 ::= json_format_clause | $empty

    opt_998 ::= json_format_clause | $empty

    opt_999 ::= json_object_constructor_null_clause | $empty

    opt_1000 ::= json_key_uniqueness_constraint | $empty

    opt_1001 ::= json_array_aggregate_order_by_clause | $empty

    opt_1002 ::= json_array_constructor_null_clause | $empty

    seq_1003 ::= COMMA target_el

    list_1004 ::= $empty | list_1004 seq_1003

    grp_1005 ::= AS colLabel | bareColLabel | $empty

    seq_1006 ::= COMMA qualified_name

    list_1007 ::= $empty | list_1007 seq_1006

    opt_1008 ::= indirection | $empty

    seq_1009 ::= COMMA name

    list_1010 ::= $empty | list_1010 seq_1009

    opt_1012 ::= sort_clause_ | $empty

    grp_1011 ::= sconst | OPEN_PAREN func_arg_list opt_1012 CLOSE_PAREN sconst

    opt_1014 ::= interval_ | $empty

    grp_1013 ::= sconst opt_1014 | OPEN_PAREN iconst CLOSE_PAREN sconst

    opt_1015 ::= uescape_ | $empty

    list_1016 ::= $empty | list_1016 DollarText

    seq_1017 ::= COMMA rolespec

    list_1018 ::= $empty | list_1018 seq_1017

    opt_1019 ::= uescape_ | $empty

%End
