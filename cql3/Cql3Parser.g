-- AUTO-GENERATED from antlr/grammars-v4 cql3 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=Cql3Parser
%options package=lpg.grammars.cql3
%options template=dtParserTemplateF.gi
%options import_terminals=Cql3Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    root
%End

%Rules
    root ::= opt_1 opt_2

    cqls ::= list_5 grp_6

    statementSeparator ::= SEMI

    empty_ ::= statementSeparator

    cql ::= alterKeyspace
           | alterMaterializedView
           | alterRole
           | alterTable
           | alterType
           | alterUser
           | applyBatch
           | createAggregate
           | createFunction
           | createIndex
           | createKeyspace
           | createMaterializedView
           | createRole
           | createTable
           | createTrigger
           | createType
           | createUser
           | delete_
           | dropAggregate
           | dropFunction
           | dropIndex
           | dropKeyspace
           | dropMaterializedView
           | dropRole
           | dropTable
           | dropTrigger
           | dropType
           | dropUser
           | grant
           | insert
           | listPermissions
           | listRoles
           | revoke
           | select_
           | truncate
           | update
           | use_

    revoke ::= kwRevoke priviledge kwOn resource kwFrom role

    listRoles ::= kwList kwRoles opt_11 opt_12

    listPermissions ::= kwList priviledge opt_14 opt_16

    grant ::= kwGrant priviledge kwOn resource kwTo role

    priviledge ::= grp_17
           | kwAlter
           | kwAuthorize
           | kwDescibe
           | kwExecute
           | kwCreate
           | kwDrop
           | kwModify
           | kwSelect

    resource ::= kwAll kwFunctions
           | kwAll kwFunctions kwIn kwKeyspace keyspace
           | kwFunction opt_19 function_
           | kwAll kwKeyspaces
           | kwKeyspace keyspace
           | opt_20 opt_22 table
           | kwAll kwRoles
           | kwRole role

    createUser ::= kwCreate kwUser opt_23 user kwWith kwPassword stringLiteral opt_25

    createRole ::= kwCreate kwRole opt_26 role opt_27

    createType ::= kwCreate kwType opt_28 opt_30 type_ syntaxBracketLr typeMemberColumnList syntaxBracketRr

    typeMemberColumnList ::= column dataType list_32

    createTrigger ::= kwCreate kwTrigger opt_33 opt_35 trigger kwUsing triggerClass

    createMaterializedView ::= kwCreate kwMaterialized kwView opt_36 opt_38 materializedView kwAs kwSelect columnList kwFrom opt_40 table materializedViewWhere kwPrimary kwKey syntaxBracketLr columnList syntaxBracketRr opt_42

    materializedViewWhere ::= kwWhere columnNotNullList opt_44

    columnNotNullList ::= columnNotNull list_46

    columnNotNull ::= column kwIs kwNot kwNull

    materializedViewOptions ::= tableOptions
           | tableOptions kwAnd clusteringOrder
           | clusteringOrder

    createKeyspace ::= kwCreate kwKeyspace opt_47 keyspace kwWith kwReplication OPERATOR_EQ syntaxBracketLc replicationList syntaxBracketRc opt_49

    createFunction ::= kwCreate opt_50 kwFunction opt_51 opt_53 function_ syntaxBracketLr opt_54 syntaxBracketRr returnMode kwReturns dataType kwLanguage language kwAs codeBlock

    codeBlock ::= CODE_BLOCK
           | STRING_LITERAL

    paramList ::= param list_56

    returnMode ::= grp_57 kwOn kwNull kwInput

    createAggregate ::= kwCreate opt_58 kwAggregate opt_59 opt_61 aggregate syntaxBracketLr dataType syntaxBracketRr kwSfunc function_ kwStype dataType kwFinalfunc function_ kwInitcond initCondDefinition

    initCondDefinition ::= constant
           | initCondList
           | initCondListNested
           | initCondHash

    initCondHash ::= syntaxBracketLc initCondHashItem list_63 syntaxBracketRc

    initCondHashItem ::= hashKey COLON initCondDefinition

    initCondListNested ::= syntaxBracketLr initCondList list_65 syntaxBracketRr

    initCondList ::= syntaxBracketLr constant list_67 syntaxBracketRr

    orReplace ::= kwOr kwReplace

    alterUser ::= kwAlter kwUser user kwWith userPassword opt_68

    userPassword ::= kwPassword stringLiteral

    userSuperUser ::= kwSuperuser
           | kwNosuperuser

    alterType ::= kwAlter kwType opt_70 type_ alterTypeOperation

    alterTypeOperation ::= alterTypeAlterType
           | alterTypeAdd
           | alterTypeRename

    alterTypeRename ::= kwRename alterTypeRenameList

    alterTypeRenameList ::= alterTypeRenameItem list_72

    alterTypeRenameItem ::= column kwTo column

    alterTypeAdd ::= kwAdd column dataType list_74

    alterTypeAlterType ::= kwAlter column kwType dataType

    alterTable ::= kwAlter kwTable opt_75 opt_77 table alterTableOperation

    alterTableOperation ::= alterTableAdd
           | alterTableAlter
           | alterTableDropColumns
           | alterTableDropCompactStorage
           | alterTableRename
           | alterTableWith

    alterTableWith ::= kwWith tableOptions

    alterTableRename ::= kwRename opt_78 column kwTo column list_80

    alterTableDropCompactStorage ::= kwDrop kwCompact kwStorage

    alterTableDropColumns ::= kwDrop opt_81 alterTableDropColumnList

    alterTableDropColumnList ::= column list_83

    alterTableAdd ::= kwAdd opt_84 alterTableColumnDefinition

    alterTableColumnDefinition ::= alterColumnDefinition list_86

    alterTableAlter ::= kwAlter opt_87 column grp_88

    alterColumnDefinition ::= column dataType opt_89

    alterRole ::= kwAlter kwRole role opt_90

    roleWith ::= kwWith seq_93

    roleWithOptions ::= kwPassword OPERATOR_EQ stringLiteral
           | kwLogin OPERATOR_EQ booleanLiteral
           | kwSuperuser OPERATOR_EQ booleanLiteral
           | kwOptions OPERATOR_EQ optionHash

    alterMaterializedView ::= kwAlter kwMaterialized kwView opt_95 materializedView opt_97

    dropUser ::= kwDrop kwUser opt_98 user

    dropType ::= kwDrop kwType opt_99 opt_101 type_

    dropMaterializedView ::= kwDrop kwMaterialized kwView opt_102 opt_104 materializedView

    dropAggregate ::= kwDrop kwAggregate opt_105 opt_107 aggregate

    dropFunction ::= kwDrop kwFunction opt_108 opt_110 function_

    dropTrigger ::= kwDrop kwTrigger opt_111 trigger kwOn opt_113 table

    dropRole ::= kwDrop kwRole opt_114 role

    dropTable ::= kwDrop kwTable opt_115 opt_117 table

    dropKeyspace ::= kwDrop kwKeyspace opt_118 keyspace

    dropIndex ::= kwDrop kwIndex opt_119 opt_121 indexName

    createTable ::= kwCreate kwTable opt_122 opt_124 table syntaxBracketLr columnDefinitionList syntaxBracketRr opt_125

    withElement ::= kwWith tableOptions

    tableOptions ::= kwCompact kwStorage opt_127
           | clusteringOrder opt_129
           | tableOptionItem list_131

    clusteringOrder ::= kwClustering kwOrder kwBy syntaxBracketLr seq_133 list_136 syntaxBracketRr

    tableOptionItem ::= tableOptionName OPERATOR_EQ tableOptionValue
           | tableOptionName OPERATOR_EQ optionHash

    tableOptionName ::= OBJECT_NAME

    tableOptionValue ::= stringLiteral
           | floatLiteral

    optionHash ::= syntaxBracketLc optionHashItem list_138 syntaxBracketRc

    optionHashItem ::= optionHashKey COLON optionHashValue

    optionHashKey ::= stringLiteral

    optionHashValue ::= stringLiteral
           | floatLiteral

    columnDefinitionList ::= columnDefinition list_140 opt_142

    columnDefinition ::= column dataType opt_143 opt_144 opt_145

    column_mask ::= K_MASKED K_WITH grp_146

    function_name ::= opt_149 function_

    primaryKeyColumn ::= kwPrimary kwKey

    primaryKeyElement ::= kwPrimary kwKey syntaxBracketLr primaryKeyDefinition syntaxBracketRr

    primaryKeyDefinition ::= singlePrimaryKey
           | compoundKey
           | compositeKey

    singlePrimaryKey ::= column

    compoundKey ::= partitionKey seq_150

    compositeKey ::= syntaxBracketLr partitionKeyList syntaxBracketRr seq_151

    partitionKeyList ::= partitionKey list_153

    clusteringKeyList ::= clusteringKey list_155

    partitionKey ::= column

    clusteringKey ::= column

    applyBatch ::= kwApply kwBatch

    beginBatch ::= kwBegin opt_156 kwBatch opt_157

    batchType ::= kwLogged
           | kwUnlogged

    alterKeyspace ::= kwAlter kwKeyspace keyspace kwWith kwReplication OPERATOR_EQ syntaxBracketLc replicationList syntaxBracketRc opt_159

    replicationList ::= replicationListItem list_161

    replicationListItem ::= STRING_LITERAL COLON STRING_LITERAL
           | STRING_LITERAL COLON DECIMAL_LITERAL

    durableWrites ::= kwDurableWrites OPERATOR_EQ booleanLiteral

    use_ ::= kwUse keyspace

    truncate ::= kwTruncate opt_162 opt_164 table

    createIndex ::= kwCreate kwIndex opt_165 opt_166 kwOn opt_168 table syntaxBracketLr indexColumnSpec syntaxBracketRr

    indexName ::= OBJECT_NAME
           | stringLiteral

    indexColumnSpec ::= column
           | indexKeysSpec
           | indexEntriesSSpec
           | indexFullSpec

    indexKeysSpec ::= kwKeys syntaxBracketLr OBJECT_NAME syntaxBracketRr

    indexEntriesSSpec ::= kwEntries syntaxBracketLr OBJECT_NAME syntaxBracketRr

    indexFullSpec ::= kwFull syntaxBracketLr OBJECT_NAME syntaxBracketRr

    delete_ ::= opt_169 kwDelete opt_170 fromSpec opt_171 whereSpec opt_173

    deleteColumnList ::= deleteColumnItem list_175

    deleteColumnItem ::= OBJECT_NAME
           | OBJECT_NAME LS_BRACKET grp_176 RS_BRACKET

    update ::= opt_177 kwUpdate opt_179 table opt_180 kwSet assignments whereSpec opt_182

    ifSpec ::= kwIf ifConditionList

    ifConditionList ::= ifCondition list_184

    ifCondition ::= OBJECT_NAME OPERATOR_EQ constant

    assignments ::= assignmentElement list_186

    assignmentElement ::= OBJECT_NAME OPERATOR_EQ grp_187
           | OBJECT_NAME OPERATOR_EQ OBJECT_NAME grp_188 decimalLiteral
           | OBJECT_NAME OPERATOR_EQ OBJECT_NAME grp_189 assignmentSet
           | OBJECT_NAME OPERATOR_EQ assignmentSet grp_190 OBJECT_NAME
           | OBJECT_NAME OPERATOR_EQ OBJECT_NAME grp_191 assignmentMap
           | OBJECT_NAME OPERATOR_EQ assignmentMap grp_192 OBJECT_NAME
           | OBJECT_NAME OPERATOR_EQ OBJECT_NAME grp_193 assignmentList
           | OBJECT_NAME OPERATOR_EQ assignmentList grp_194 OBJECT_NAME
           | OBJECT_NAME syntaxBracketLs decimalLiteral syntaxBracketRs OPERATOR_EQ constant

    assignmentSet ::= syntaxBracketLc opt_198 syntaxBracketRc

    assignmentMap ::= syntaxBracketLc seq_199 list_201 syntaxBracketRc

    assignmentList ::= syntaxBracketLs constant list_203 syntaxBracketRs

    assignmentTuple ::= syntaxBracketLr seq_206 syntaxBracketRr

    insert ::= opt_207 kwInsert kwInto opt_209 table opt_210 insertValuesSpec opt_211 opt_212

    usingTtlTimestamp ::= kwUsing ttl
           | kwUsing ttl kwAnd timestamp
           | kwUsing timestamp
           | kwUsing timestamp kwAnd ttl

    timestamp ::= kwTimestamp decimalLiteral

    ttl ::= kwTtl decimalLiteral

    usingTimestampSpec ::= kwUsing timestamp

    ifNotExist ::= kwIf kwNot kwExists

    ifExist ::= kwIf kwExists

    insertValuesSpec ::= kwValues LPAREN expressionList RPAREN
           | kwJson constant

    insertColumnSpec ::= LPAREN columnList RPAREN

    columnList ::= column list_214

    expressionList ::= expression list_216

    expression ::= constant
           | functionCall
           | assignmentMap
           | assignmentSet
           | assignmentList
           | assignmentTuple

    select_ ::= kwSelect opt_217 opt_218 selectElements fromSpec opt_219 opt_220 opt_221 opt_222

    allowFilteringSpec ::= kwAllow kwFiltering

    limitSpec ::= kwLimit decimalLiteral

    fromSpec ::= kwFrom fromSpecElement

    fromSpecElement ::= OBJECT_NAME
           | OBJECT_NAME DOT OBJECT_NAME

    orderSpec ::= kwOrder kwBy orderSpecElement

    orderSpecElement ::= OBJECT_NAME opt_224

    whereSpec ::= kwWhere relationElements

    distinctSpec ::= kwDistinct

    selectElements ::= grp_225 list_227

    selectElement ::= OBJECT_NAME DOT STAR
           | OBJECT_NAME opt_229
           | functionCall opt_231

    relationElements ::= relationElement list_233

    relationElement ::= OBJECT_NAME grp_234 constant
           | OBJECT_NAME DOT OBJECT_NAME grp_235 constant
           | functionCall grp_236 constant
           | functionCall grp_237 functionCall
           | OBJECT_NAME kwIn LPAREN opt_238 RPAREN
           | LPAREN OBJECT_NAME list_240 RPAREN kwIn LPAREN assignmentTuple list_242 RPAREN
           | LPAREN OBJECT_NAME list_244 RPAREN grp_245 seq_248
           | relalationContainsKey
           | relalationContains

    relalationContains ::= OBJECT_NAME kwContains constant

    relalationContainsKey ::= OBJECT_NAME seq_249 constant

    functionCall ::= OBJECT_NAME LPAREN STAR RPAREN
           | OBJECT_NAME LPAREN opt_250 RPAREN
           | K_UUID LPAREN RPAREN

    functionArgs ::= grp_251 list_254

    constant ::= UUID
           | stringLiteral
           | decimalLiteral
           | floatLiteral
           | hexadecimalLiteral
           | booleanLiteral
           | codeBlock
           | kwNull

    decimalLiteral ::= DECIMAL_LITERAL

    floatLiteral ::= DECIMAL_LITERAL
           | FLOAT_LITERAL

    stringLiteral ::= STRING_LITERAL

    booleanLiteral ::= K_TRUE
           | K_FALSE

    hexadecimalLiteral ::= HEXADECIMAL_LITERAL

    keyspace ::= OBJECT_NAME
           | DQUOTE OBJECT_NAME DQUOTE

    table ::= OBJECT_NAME
           | DQUOTE OBJECT_NAME DQUOTE

    column ::= OBJECT_NAME
           | DQUOTE OBJECT_NAME DQUOTE

    dataType ::= dataTypeName opt_255

    dataTypeName ::= OBJECT_NAME
           | K_TIMESTAMP
           | K_SET
           | K_ASCII
           | K_BIGINT
           | K_BLOB
           | K_BOOLEAN
           | K_COUNTER
           | K_DATE
           | K_DECIMAL
           | K_DOUBLE
           | K_FLOAT
           | K_FROZEN
           | K_INET
           | K_INT
           | K_LIST
           | K_MAP
           | K_SMALLINT
           | K_TEXT
           | K_TIME
           | K_TIMEUUID
           | K_TINYINT
           | K_TUPLE
           | K_VARCHAR
           | K_VARINT
           | K_UUID
           | K_VECTOR

    dataTypeDefinition ::= syntaxBracketLa dataTypeName list_257 syntaxBracketRa

    orderDirection ::= kwAsc
           | kwDesc

    role ::= OBJECT_NAME

    trigger ::= OBJECT_NAME

    triggerClass ::= stringLiteral

    materializedView ::= OBJECT_NAME

    type_ ::= OBJECT_NAME

    aggregate ::= OBJECT_NAME

    function_ ::= OBJECT_NAME

    language ::= OBJECT_NAME

    user ::= OBJECT_NAME

    password ::= stringLiteral

    hashKey ::= OBJECT_NAME

    param ::= paramName dataType

    paramName ::= OBJECT_NAME
           | K_INPUT

    kwAdd ::= K_ADD

    kwAggregate ::= K_AGGREGATE

    kwAll ::= K_ALL

    kwAllPermissions ::= K_ALL K_PERMISSIONS

    kwAllow ::= K_ALLOW

    kwAlter ::= K_ALTER

    kwAnd ::= K_AND

    kwApply ::= K_APPLY

    kwAs ::= K_AS

    kwAsc ::= K_ASC

    kwAuthorize ::= K_AUTHORIZE

    kwBatch ::= K_BATCH

    kwBegin ::= K_BEGIN

    kwBy ::= K_BY

    kwCalled ::= K_CALLED

    kwClustering ::= K_CLUSTERING

    kwCompact ::= K_COMPACT

    kwContains ::= K_CONTAINS

    kwCreate ::= K_CREATE

    kwDelete ::= K_DELETE

    kwDesc ::= K_DESC

    kwDescibe ::= K_DESCRIBE

    kwDistinct ::= K_DISTINCT

    kwDrop ::= K_DROP

    kwDurableWrites ::= K_DURABLE_WRITES

    kwEntries ::= K_ENTRIES

    kwExecute ::= K_EXECUTE

    kwExists ::= K_EXISTS

    kwFiltering ::= K_FILTERING

    kwFinalfunc ::= K_FINALFUNC

    kwFrom ::= K_FROM

    kwFull ::= K_FULL

    kwFunction ::= K_FUNCTION

    kwFunctions ::= K_FUNCTIONS

    kwGrant ::= K_GRANT

    kwIf ::= K_IF

    kwIn ::= K_IN

    kwIndex ::= K_INDEX

    kwInitcond ::= K_INITCOND

    kwInput ::= K_INPUT

    kwInsert ::= K_INSERT

    kwInto ::= K_INTO

    kwIs ::= K_IS

    kwJson ::= K_JSON

    kwKey ::= K_KEY

    kwKeys ::= K_KEYS

    kwKeyspace ::= K_KEYSPACE

    kwKeyspaces ::= K_KEYSPACES

    kwLanguage ::= K_LANGUAGE

    kwLimit ::= K_LIMIT

    kwList ::= K_LIST

    kwLogged ::= K_LOGGED

    kwLogin ::= K_LOGIN

    kwMaterialized ::= K_MATERIALIZED

    kwModify ::= K_MODIFY

    kwNosuperuser ::= K_NOSUPERUSER

    kwNorecursive ::= K_NORECURSIVE

    kwNot ::= K_NOT

    kwNull ::= K_NULL

    kwOf ::= K_OF

    kwOn ::= K_ON

    kwOptions ::= K_OPTIONS

    kwOr ::= K_OR

    kwOrder ::= K_ORDER

    kwPassword ::= K_PASSWORD

    kwPrimary ::= K_PRIMARY

    kwRename ::= K_RENAME

    kwReplace ::= K_REPLACE

    kwReplication ::= K_REPLICATION

    kwReturns ::= K_RETURNS

    kwRole ::= K_ROLE

    kwRoles ::= K_ROLES

    kwSelect ::= K_SELECT

    kwSet ::= K_SET

    kwSfunc ::= K_SFUNC

    kwStorage ::= K_STORAGE

    kwStype ::= K_STYPE

    kwSuperuser ::= K_SUPERUSER

    kwTable ::= K_TABLE

    kwTimestamp ::= K_TIMESTAMP

    kwTo ::= K_TO

    kwTrigger ::= K_TRIGGER

    kwTruncate ::= K_TRUNCATE

    kwTtl ::= K_TTL

    kwType ::= K_TYPE

    kwUnlogged ::= K_UNLOGGED

    kwUpdate ::= K_UPDATE

    kwUse ::= K_USE

    kwUser ::= K_USER

    kwUsing ::= K_USING

    kwValues ::= K_VALUES

    kwView ::= K_VIEW

    kwWhere ::= K_WHERE

    kwWith ::= K_WITH

    kwRevoke ::= K_REVOKE

    syntaxBracketLr ::= LR_BRACKET

    syntaxBracketRr ::= RR_BRACKET

    syntaxBracketLc ::= LC_BRACKET

    syntaxBracketRc ::= RC_BRACKET

    syntaxBracketLa ::= OPERATOR_LT

    syntaxBracketRa ::= OPERATOR_GT

    syntaxBracketLs ::= LS_BRACKET

    syntaxBracketRs ::= RS_BRACKET

    syntaxComma ::= COMMA

    syntaxColon ::= COLON

    opt_1 ::= cqls | $empty

    opt_2 ::= MINUSMINUS | $empty

    opt_4 ::= MINUSMINUS | $empty

    grp_3 ::= cql opt_4 statementSeparator | empty_

    list_5 ::= $empty | list_5 grp_3

    opt_7 ::= MINUSMINUS | $empty

    seq_8 ::= opt_7 statementSeparator

    opt_9 ::= seq_8 | $empty

    grp_6 ::= cql opt_9 | empty_

    seq_10 ::= kwOf role

    opt_11 ::= seq_10 | $empty

    opt_12 ::= kwNorecursive | $empty

    seq_13 ::= kwOn resource

    opt_14 ::= seq_13 | $empty

    seq_15 ::= kwOf role

    opt_16 ::= seq_15 | $empty

    grp_17 ::= kwAll | kwAllPermissions

    seq_18 ::= keyspace DOT

    opt_19 ::= seq_18 | $empty

    opt_20 ::= kwTable | $empty

    seq_21 ::= keyspace DOT

    opt_22 ::= seq_21 | $empty

    opt_23 ::= ifNotExist | $empty

    grp_24 ::= kwSuperuser | kwNosuperuser

    opt_25 ::= grp_24 | $empty

    opt_26 ::= ifNotExist | $empty

    opt_27 ::= roleWith | $empty

    opt_28 ::= ifNotExist | $empty

    seq_29 ::= keyspace DOT

    opt_30 ::= seq_29 | $empty

    seq_31 ::= syntaxComma column dataType

    list_32 ::= $empty | list_32 seq_31

    opt_33 ::= ifNotExist | $empty

    seq_34 ::= keyspace DOT

    opt_35 ::= seq_34 | $empty

    opt_36 ::= ifNotExist | $empty

    seq_37 ::= keyspace DOT

    opt_38 ::= seq_37 | $empty

    seq_39 ::= keyspace DOT

    opt_40 ::= seq_39 | $empty

    seq_41 ::= kwWith materializedViewOptions

    opt_42 ::= seq_41 | $empty

    seq_43 ::= kwAnd relationElements

    opt_44 ::= seq_43 | $empty

    seq_45 ::= kwAnd columnNotNull

    list_46 ::= $empty | list_46 seq_45

    opt_47 ::= ifNotExist | $empty

    seq_48 ::= kwAnd durableWrites

    opt_49 ::= seq_48 | $empty

    opt_50 ::= orReplace | $empty

    opt_51 ::= ifNotExist | $empty

    seq_52 ::= keyspace DOT

    opt_53 ::= seq_52 | $empty

    opt_54 ::= paramList | $empty

    seq_55 ::= syntaxComma param

    list_56 ::= $empty | list_56 seq_55

    grp_57 ::= kwCalled | kwReturns kwNull

    opt_58 ::= orReplace | $empty

    opt_59 ::= ifNotExist | $empty

    seq_60 ::= keyspace DOT

    opt_61 ::= seq_60 | $empty

    seq_62 ::= syntaxComma initCondHashItem

    list_63 ::= $empty | list_63 seq_62

    grp_64 ::= syntaxComma constant | initCondList

    list_65 ::= $empty | list_65 grp_64

    seq_66 ::= syntaxComma constant

    list_67 ::= $empty | list_67 seq_66

    opt_68 ::= userSuperUser | $empty

    seq_69 ::= keyspace DOT

    opt_70 ::= seq_69 | $empty

    seq_71 ::= kwAnd alterTypeRenameItem

    list_72 ::= $empty | list_72 seq_71

    seq_73 ::= syntaxComma column dataType

    list_74 ::= $empty | list_74 seq_73

    opt_75 ::= ifExist | $empty

    seq_76 ::= keyspace DOT

    opt_77 ::= seq_76 | $empty

    opt_78 ::= ifExist | $empty

    seq_79 ::= K_AND column kwTo column

    list_80 ::= $empty | list_80 seq_79

    opt_81 ::= ifExist | $empty

    seq_82 ::= syntaxComma column

    list_83 ::= $empty | list_83 seq_82

    opt_84 ::= ifNotExist | $empty

    seq_85 ::= syntaxComma alterColumnDefinition

    list_86 ::= $empty | list_86 seq_85

    opt_87 ::= ifExist | $empty

    grp_88 ::= column_mask | K_DROP K_MASKED

    opt_89 ::= column_mask | $empty

    opt_90 ::= roleWith | $empty

    seq_91 ::= kwAnd roleWithOptions

    list_92 ::= $empty | list_92 seq_91

    seq_93 ::= roleWithOptions list_92

    seq_94 ::= keyspace DOT

    opt_95 ::= seq_94 | $empty

    seq_96 ::= kwWith tableOptions

    opt_97 ::= seq_96 | $empty

    opt_98 ::= ifExist | $empty

    opt_99 ::= ifExist | $empty

    seq_100 ::= keyspace DOT

    opt_101 ::= seq_100 | $empty

    opt_102 ::= ifExist | $empty

    seq_103 ::= keyspace DOT

    opt_104 ::= seq_103 | $empty

    opt_105 ::= ifExist | $empty

    seq_106 ::= keyspace DOT

    opt_107 ::= seq_106 | $empty

    opt_108 ::= ifExist | $empty

    seq_109 ::= keyspace DOT

    opt_110 ::= seq_109 | $empty

    opt_111 ::= ifExist | $empty

    seq_112 ::= keyspace DOT

    opt_113 ::= seq_112 | $empty

    opt_114 ::= ifExist | $empty

    opt_115 ::= ifExist | $empty

    seq_116 ::= keyspace DOT

    opt_117 ::= seq_116 | $empty

    opt_118 ::= ifExist | $empty

    opt_119 ::= ifExist | $empty

    seq_120 ::= keyspace DOT

    opt_121 ::= seq_120 | $empty

    opt_122 ::= ifNotExist | $empty

    seq_123 ::= keyspace DOT

    opt_124 ::= seq_123 | $empty

    opt_125 ::= withElement | $empty

    seq_126 ::= kwAnd tableOptions

    opt_127 ::= seq_126 | $empty

    seq_128 ::= kwAnd tableOptions

    opt_129 ::= seq_128 | $empty

    seq_130 ::= kwAnd tableOptionItem

    list_131 ::= $empty | list_131 seq_130

    opt_132 ::= orderDirection | $empty

    seq_133 ::= column opt_132

    opt_134 ::= orderDirection | $empty

    seq_135 ::= syntaxComma column opt_134

    list_136 ::= $empty | list_136 seq_135

    seq_137 ::= syntaxComma optionHashItem

    list_138 ::= $empty | list_138 seq_137

    seq_139 ::= syntaxComma columnDefinition

    list_140 ::= $empty | list_140 seq_139

    seq_141 ::= syntaxComma primaryKeyElement

    opt_142 ::= seq_141 | $empty

    opt_143 ::= K_STATIC | $empty

    opt_144 ::= column_mask | $empty

    opt_145 ::= primaryKeyColumn | $empty

    opt_147 ::= functionArgs | $empty

    grp_146 ::= K_DEFAULT | function_name LPAREN opt_147 RPAREN

    seq_148 ::= keyspace DOT

    opt_149 ::= seq_148 | $empty

    seq_150 ::= syntaxComma clusteringKeyList

    seq_151 ::= syntaxComma clusteringKeyList

    seq_152 ::= syntaxComma partitionKey

    list_153 ::= $empty | list_153 seq_152

    seq_154 ::= syntaxComma clusteringKey

    list_155 ::= $empty | list_155 seq_154

    opt_156 ::= batchType | $empty

    opt_157 ::= usingTimestampSpec | $empty

    seq_158 ::= kwAnd durableWrites

    opt_159 ::= seq_158 | $empty

    seq_160 ::= syntaxComma replicationListItem

    list_161 ::= $empty | list_161 seq_160

    opt_162 ::= kwTable | $empty

    seq_163 ::= keyspace DOT

    opt_164 ::= seq_163 | $empty

    opt_165 ::= ifNotExist | $empty

    opt_166 ::= indexName | $empty

    seq_167 ::= keyspace DOT

    opt_168 ::= seq_167 | $empty

    opt_169 ::= beginBatch | $empty

    opt_170 ::= deleteColumnList | $empty

    opt_171 ::= usingTimestampSpec | $empty

    grp_172 ::= ifExist | ifSpec

    opt_173 ::= grp_172 | $empty

    seq_174 ::= syntaxComma deleteColumnItem

    list_175 ::= $empty | list_175 seq_174

    grp_176 ::= stringLiteral | decimalLiteral

    opt_177 ::= beginBatch | $empty

    seq_178 ::= keyspace DOT

    opt_179 ::= seq_178 | $empty

    opt_180 ::= usingTtlTimestamp | $empty

    grp_181 ::= ifExist | ifSpec

    opt_182 ::= grp_181 | $empty

    seq_183 ::= kwAnd ifCondition

    list_184 ::= $empty | list_184 seq_183

    seq_185 ::= syntaxComma assignmentElement

    list_186 ::= $empty | list_186 seq_185

    grp_187 ::= constant | assignmentMap | assignmentSet | assignmentList

    grp_188 ::= PLUS | MINUS

    grp_189 ::= PLUS | MINUS

    grp_190 ::= PLUS | MINUS

    grp_191 ::= PLUS | MINUS

    grp_192 ::= PLUS | MINUS

    grp_193 ::= PLUS | MINUS

    grp_194 ::= PLUS | MINUS

    seq_195 ::= syntaxComma constant

    list_196 ::= $empty | list_196 seq_195

    seq_197 ::= constant list_196

    opt_198 ::= seq_197 | $empty

    seq_199 ::= constant syntaxColon constant

    seq_200 ::= syntaxComma constant syntaxColon constant

    list_201 ::= $empty | list_201 seq_200

    seq_202 ::= syntaxComma constant

    list_203 ::= $empty | list_203 seq_202

    seq_204 ::= syntaxComma expression

    list_205 ::= $empty | list_205 seq_204

    seq_206 ::= expression list_205

    opt_207 ::= beginBatch | $empty

    seq_208 ::= keyspace DOT

    opt_209 ::= seq_208 | $empty

    opt_210 ::= insertColumnSpec | $empty

    opt_211 ::= ifNotExist | $empty

    opt_212 ::= usingTtlTimestamp | $empty

    seq_213 ::= syntaxComma column

    list_214 ::= $empty | list_214 seq_213

    seq_215 ::= syntaxComma expression

    list_216 ::= $empty | list_216 seq_215

    opt_217 ::= distinctSpec | $empty

    opt_218 ::= kwJson | $empty

    opt_219 ::= whereSpec | $empty

    opt_220 ::= orderSpec | $empty

    opt_221 ::= limitSpec | $empty

    opt_222 ::= allowFilteringSpec | $empty

    grp_223 ::= kwAsc | kwDesc

    opt_224 ::= grp_223 | $empty

    grp_225 ::= STAR | selectElement

    seq_226 ::= syntaxComma selectElement

    list_227 ::= $empty | list_227 seq_226

    seq_228 ::= kwAs OBJECT_NAME

    opt_229 ::= seq_228 | $empty

    seq_230 ::= kwAs OBJECT_NAME

    opt_231 ::= seq_230 | $empty

    seq_232 ::= kwAnd relationElement

    list_233 ::= $empty | list_233 seq_232

    grp_234 ::= OPERATOR_EQ | OPERATOR_LT | OPERATOR_GT | OPERATOR_LTE | OPERATOR_GTE

    grp_235 ::= OPERATOR_EQ | OPERATOR_LT | OPERATOR_GT | OPERATOR_LTE | OPERATOR_GTE

    grp_236 ::= OPERATOR_EQ | OPERATOR_LT | OPERATOR_GT | OPERATOR_LTE | OPERATOR_GTE

    grp_237 ::= OPERATOR_EQ | OPERATOR_LT | OPERATOR_GT | OPERATOR_LTE | OPERATOR_GTE

    opt_238 ::= functionArgs | $empty

    seq_239 ::= syntaxComma OBJECT_NAME

    list_240 ::= $empty | list_240 seq_239

    seq_241 ::= syntaxComma assignmentTuple

    list_242 ::= $empty | list_242 seq_241

    seq_243 ::= syntaxComma OBJECT_NAME

    list_244 ::= $empty | list_244 seq_243

    grp_245 ::= OPERATOR_EQ | OPERATOR_LT | OPERATOR_GT | OPERATOR_LTE | OPERATOR_GTE

    seq_246 ::= syntaxComma assignmentTuple

    list_247 ::= $empty | list_247 seq_246

    seq_248 ::= assignmentTuple list_247

    seq_249 ::= kwContains kwKey

    opt_250 ::= functionArgs | $empty

    grp_251 ::= constant | OBJECT_NAME | functionCall

    grp_253 ::= constant | OBJECT_NAME | functionCall

    grp_252 ::= syntaxComma grp_253

    list_254 ::= $empty | list_254 grp_252

    opt_255 ::= dataTypeDefinition | $empty

    seq_256 ::= syntaxComma dataTypeName

    list_257 ::= $empty | list_257 seq_256

%End
