-- AUTO-GENERATED from antlr/grammars-v4 sql/informix-sql by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlParser
%options package=lpg.grammars.sql.informix_sql
%options template=dtParserTemplateF.gi
%options import_terminals=SqlLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    sqlScript
%End

%Rules
    sqlScript ::= list_1

    unitStatement ::= grp_2 SEMI

    createRole ::= CREATE ROLE opt_4 anyName

    dropRole ::= DROP ROLE opt_6 anyName

    dropSynonym ::= DROP SYNONYM opt_8 identifier

    dropTable ::= DROP TABLE opt_10 identifier opt_12

    dropTrigger ::= DROP TRIGGER opt_14 identifier

    dropTrustedContext ::= DROP TRUSTED CONTEXT anyName

    dropType ::= DROP TYPE opt_16 identifier RESTRICT

    dropUser ::= DROP USER anyName

    dropView ::= DROP VIEW opt_18 identifier opt_20

    dropXadatasource ::= DROP XADATASOURCE opt_22 identifier RESTRICT

    dropXadataTypeSource ::= DROP XADATASOURCE TYPE opt_24 identifier RESTRICT

    dropAccessMethod ::= DROP ACCESS_METHOD opt_26 identifier RESTRICT

    dropAggregate ::= DROP AGGREGATE opt_28 identifier

    dropDatabase ::= DROP DATABASE opt_30 identifier

    dropIndex ::= DROP INDEX opt_32 identifier opt_33

    closeStmt ::= CLOSE identifier

    closeDatabaseStmt ::= CLOSE DATABASE

    databaseStmt ::= DATABASE anyName opt_34

    commitWorkStmt ::= COMMIT opt_35

    releaseSavepoint ::= RELEASE SAVEPOINT identifier

    renameColumn ::= RENAME COLUMN identifier TO identifier

    renameConstraint ::= RENAME CONSTRAINT identifier TO identifier

    renameDatabase ::= RENAME DATABASE identifier TO identifier

    renameIndex ::= RENAME INDEX identifier TO identifier

    renameSecurity ::= RENAME SECURITY grp_36 identifier TO identifier

    renameSequence ::= RENAME SEQUENCE identifier TO identifier

    renameTable ::= RENAME TABLE identifier TO identifier

    renameTrustedContext ::= RENAME TRUSTED CONTEXT identifier TO identifier

    renameUser ::= RENAME USER identifier TO identifier

    rollbackWork ::= ROLLBACK opt_39 opt_42

    savepointStmt ::= SAVEPOINT identifier opt_43

    setAutofree ::= SET AUTOFREE opt_45 opt_48

    setCollation ::= SET grp_49

    setDataskip ::= SET DATASKIP grp_50

    setDebugFile ::= SET DEBUG FILE TO grp_55 opt_57

    setDeferredPrepareStatement ::= SET DEFERRED_PREPARE opt_59

    quotedString ::= CHAR_STRING

    anyName ::= IDENTIFIER
           | keyword
           | STRING_LITERAL
           | OPEN_PAR anyName CLOSE_PAR

    identifier ::= anyName list_61

    keyword ::= ABORT
           | ACTION
           | ACCESS_METHOD
           | ADD
           | AFTER
           | AGGREGATE
           | ALL
           | ALTER
           | ANALYZE
           | AND
           | APPEND
           | AS
           | ASC
           | ATTACH
           | AUTOFREE
           | AUTOINCREMENT
           | BEFORE
           | BEGIN
           | BETWEEN
           | BY
           | CASCADE
           | CASE
           | CAST
           | CHECK
           | CLOSE
           | COLLATE
           | COLLATION
           | COLUMN
           | COMPONENT
           | COMMIT
           | CONFLICT
           | CONSTRAINT
           | CONTEXT
           | CREATE
           | CROSS
           | CURRENT_DATE
           | CURRENT_TIME
           | CURRENT_TIMESTAMP
           | DATABASE
           | DATASKIP
           | DEBUG
           | DEFAULT
           | DEFERRABLE
           | DEFERRED
           | DEFERRED_PREPARE
           | DELETE
           | DESC
           | DETACH
           | DISABLED
           | DISTINCT
           | DROP
           | EACH
           | ELSE
           | ENABLED
           | END
           | ESCAPE
           | EXCEPT
           | EXCLUSIVE
           | EXISTS
           | EXPLAIN
           | FAIL
           | FOR
           | FOREIGN
           | FROM
           | FILE
           | FULL
           | GLOB
           | GROUP
           | HAVING
           | IF
           | IGNORE
           | IMMEDIATE
           | IN
           | INDEX
           | INDEXED
           | INITIALLY
           | INNER
           | INSERT
           | INSTEAD
           | INTERSECT
           | INTO
           | IS
           | ISNULL
           | JOIN
           | KEY
           | LABEL
           | LEFT
           | LIKE
           | LIMIT
           | MATCH
           | NATURAL
           | NO
           | NOT
           | NOTNULL
           | NULL
           | OF
           | OFF
           | OFFSET
           | ON
           | ONLINE
           | OR
           | ORDER
           | OUTER
           | POLICY
           | PLAN
           | PRAGMA
           | PRIMARY
           | QUERY
           | RAISE
           | RECURSIVE
           | REFERENCES
           | REGEXP
           | REINDEX
           | RELEASE
           | RENAME
           | REPLACE
           | RESTRICT
           | RIGHT
           | ROLLBACK
           | ROW
           | ROWS
           | SAVEPOINT
           | SECURITY
           | SELECT
           | SET
           | SEQUENCE
           | SYNONYM
           | TABLE
           | TEMP
           | TEMPORARY
           | THEN
           | TO
           | TRANSACTION
           | TRIGGER
           | TRUSTED
           | TYPE
           | UNION
           | UNIQUE
           | UPDATE
           | USER
           | USING
           | VACUUM
           | VALUES
           | VIEW
           | VIRTUAL
           | WHEN
           | WHERE
           | WITH
           | WITHOUT
           | WORK
           | XADATASOURCE
           | FIRST_VALUE
           | OVER
           | PARTITION
           | RANGE
           | PRECEDING
           | UNBOUNDED
           | CURRENT
           | FOLLOWING
           | CUME_DIST
           | DENSE_RANK
           | LAG
           | LAST_VALUE
           | LEAD
           | NTH_VALUE
           | NTILE
           | PERCENT_RANK
           | RANK
           | ROW_NUMBER
           | GENERATED
           | ALWAYS
           | STORED
           | TRUE
           | FALSE
           | WINDOW
           | NULLS
           | FIRST
           | LAST
           | FILTER
           | GROUPS
           | EXCLUDE

    list_1 ::= $empty | list_1 unitStatement

    grp_2 ::= createRole | closeStmt | closeDatabaseStmt | commitWorkStmt | dropAccessMethod | dropAggregate | dropDatabase | dropIndex | dropRole | dropSynonym | dropTable | dropTrigger | dropTrustedContext | dropType | dropUser | dropView | dropXadatasource | dropXadataTypeSource | databaseStmt | releaseSavepoint | renameColumn | renameConstraint | renameDatabase | renameIndex | renameSecurity | renameSequence | renameTable | renameTrustedContext | renameUser | rollbackWork | savepointStmt | setAutofree | setCollation | setDataskip | setDebugFile | setDeferredPrepareStatement

    seq_3 ::= IF NOT EXISTS

    opt_4 ::= seq_3 | $empty

    seq_5 ::= IF EXISTS

    opt_6 ::= seq_5 | $empty

    seq_7 ::= IF EXISTS

    opt_8 ::= seq_7 | $empty

    seq_9 ::= IF EXISTS

    opt_10 ::= seq_9 | $empty

    grp_11 ::= CASCADE | RESTRICT

    opt_12 ::= grp_11 | $empty

    seq_13 ::= IF EXISTS

    opt_14 ::= seq_13 | $empty

    seq_15 ::= IF EXISTS

    opt_16 ::= seq_15 | $empty

    seq_17 ::= IF EXISTS

    opt_18 ::= seq_17 | $empty

    grp_19 ::= CASCADE | RESTRICT

    opt_20 ::= grp_19 | $empty

    seq_21 ::= IF EXISTS

    opt_22 ::= seq_21 | $empty

    seq_23 ::= IF EXISTS

    opt_24 ::= seq_23 | $empty

    seq_25 ::= IF EXISTS

    opt_26 ::= seq_25 | $empty

    seq_27 ::= IF EXISTS

    opt_28 ::= seq_27 | $empty

    seq_29 ::= IF EXISTS

    opt_30 ::= seq_29 | $empty

    seq_31 ::= IF EXISTS

    opt_32 ::= seq_31 | $empty

    opt_33 ::= ONLINE | $empty

    opt_34 ::= EXCLUSIVE | $empty

    opt_35 ::= WORK | $empty

    opt_38 ::= identifier | $empty

    grp_37 ::= opt_38 | COMPONENT

    grp_36 ::= POLICY | LABEL grp_37

    opt_39 ::= WORK | $empty

    opt_40 ::= identifier | $empty

    seq_41 ::= TO SAVEPOINT opt_40

    opt_42 ::= seq_41 | $empty

    opt_43 ::= UNIQUE | $empty

    grp_44 ::= ENABLED | DISABLED

    opt_45 ::= grp_44 | $empty

    grp_47 ::= identifier | anyName

    grp_46 ::= FOR grp_47

    opt_48 ::= grp_46 | $empty

    grp_49 ::= COLLATION quotedString | NO COLLATION

    seq_51 ::= COMMA identifier

    list_52 ::= $empty | list_52 seq_51

    seq_53 ::= identifier list_52

    opt_54 ::= seq_53 | $empty

    grp_50 ::= ON opt_54 | OFF | DEFAULT

    grp_55 ::= CHAR_STRING | identifier

    seq_56 ::= WITH APPEND

    opt_57 ::= seq_56 | $empty

    grp_58 ::= ENABLED | DISABLED

    opt_59 ::= grp_58 | $empty

    seq_60 ::= DOT anyName

    list_61 ::= $empty | list_61 seq_60

%End
