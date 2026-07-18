-- Real lexer for SqlPostgresqlParser (not token-stream soup). Keywords via SqlPostgresqlKWLexer.
%Options list
%Options fp=SqlPostgresqlLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sql.postgresql
%options template=LexerTemplateF.gi
%options filter=SqlPostgresqlKWLexer.gi

%Define
    $kw_lexer_class /.$SqlPostgresqlKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABORT_P
    ABSENT
    ABSOLUTE_P
    ACCESS
    ACTION
    ADD_P
    ADMIN
    AFTER
    AGGREGATE
    ALL
    ALSO
    ALTER
    ALWAYS
    AMP
    AMPEQ
    ANALYSE
    ANALYZE
    AND
    ANDAND
    ANY
    ARRAY
    ARROW
    ARROWSTAR
    AS
    ASC
    ASENSITIVE
    ASSERT
    ASSERTION
    ASSIGNMENT
    ASYMMETRIC
    AT
    ATEQ
    ATOMIC
    ATTACH
    ATTRIBUTE
    AUTHORIZATION
    BACKSLASH
    BACKTICK
    BACKWARD
    BANG
    BEFORE
    BEGIN_P
    BETWEEN
    BIGINT
    BINARY
    BIT
    BITCLEAR
    BOOLEAN_P
    BOTH
    BREADTH
    BY
    BeginDollarStringConstant
    BinaryIntegral
    BinaryStringConstant
    CACHE
    CALL
    CALLED
    CARET
    CARETEQ
    CASCADE
    CASCADED
    CASE
    CAST
    CATALOG
    CHAIN
    CHARACTER
    CHARACTERISTICS
    CHAR_LITERAL
    CHAR_P
    CHECK
    CHECKPOINT
    CLASS
    CLOSE
    CLOSE_BRACKET
    CLOSE_PAREN
    CLUSTER
    COALESCE
    COLLATE
    COLLATION
    COLON
    COLONCOLON
    COLONEQ
    COLON_EQUALS
    COLUMN
    COLUMNS
    COMMA
    COMMENT
    COMMENTS
    COMMIT
    COMMITTED
    COMPRESSION
    CONCURRENTLY
    CONDITIONAL
    CONFIGURATION
    CONFLICT
    CONNECTION
    CONSTANT
    CONSTRAINT
    CONSTRAINTS
    CONTENT_P
    CONTINUE_P
    CONVERSION_P
    COPY
    COST
    CREATE
    CROSS
    CSV
    CUBE
    CURRENT_CATALOG
    CURRENT_DATE
    CURRENT_P
    CURRENT_ROLE
    CURRENT_SCHEMA
    CURRENT_TIME
    CURRENT_TIMESTAMP
    CURRENT_USER
    CURSOR
    CYCLE
    DATABASE
    DATA_P
    DAY_P
    DEALLOCATE
    DEBUG
    DEC
    DECIMAL_P
    DECLARE
    DEFAULT
    DEFAULTS
    DEFERRABLE
    DEFERRED
    DEFINER
    DELETE_P
    DELIMITER
    DELIMITERS
    DEPENDS
    DEPTH
    DESC
    DETACH
    DIAGNOSTICS
    DICTIONARY
    DISABLE_P
    DISCARD
    DISTINCT
    DO
    DOCUMENT_P
    DOLLAR
    DOMAIN_P
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE_P
    DQUOTE
    DROP
    DUMP
    DollarText
    EACH
    ELLIPSIS
    ELSE
    ELSIF
    EMPTY_P
    ENABLE_P
    ENCODING
    ENCRYPTED
    END_P
    ENUM_P
    EQ
    EQEQ
    EQEQEQ
    EQUAL
    EQUALS_GREATER
    ERROR
    ESCAPE
    EVENT
    EXCEPT
    EXCEPTION
    EXCLUDE
    EXCLUDING
    EXCLUSIVE
    EXECUTE
    EXISTS
    EXIT
    EXPLAIN
    EXPRESSION
    EXTENSION
    EXTERNAL
    EXTRACT
    EndDollarStringConstant
    EscapeStringConstant
    FALSE_P
    FAMILY
    FATARROW
    FETCH
    FILTER
    FINALIZE
    FIRST_P
    FLOAT_P
    FOLLOWING
    FOR
    FORCE
    FOREACH
    FOREIGN
    FORMAT
    FORMAT_LA
    FORWARD
    FREEZE
    FROM
    FULL
    FUNCTION
    FUNCTIONS
    GENERATED
    GET
    GLOBAL
    GRANT
    GRANTED
    GREATER_EQUALS
    GREATER_GREATER
    GREATEST
    GROUPING
    GROUPS
    GROUP_P
    GT
    GTEQ
    HANDLER
    HASH
    HAVING
    HEADER_P
    HOLD
    HOUR_P
    HexadecimalIntegral
    HexadecimalStringConstant
    IDENTIFIER
    IDENTITY_P
    IF_P
    ILIKE
    IMMEDIATE
    IMMUTABLE
    IMPLICIT_P
    IMPORT_P
    INCLUDE
    INCLUDING
    INCREMENT
    INDEX
    INDEXES
    INFO
    INHERIT
    INHERITS
    INITIALLY
    INLINE_P
    INNER_P
    INOUT
    INPUT_P
    INSENSITIVE
    INSERT
    INSTEAD
    INTEGER
    INTERSECT
    INTERVAL
    INTO
    INT_P
    INVOKER
    IN_P
    IS
    ISNULL
    ISOLATION
    Identifier
    Integral
    JOIN
    JSON
    JSON_ARRAY
    JSON_ARRAYAGG
    JSON_EXISTS
    JSON_OBJECT
    JSON_OBJECTAGG
    JSON_QUERY
    JSON_SCALAR
    JSON_SERIALIZE
    JSON_TABLE
    JSON_VALUE
    KEEP
    KEY
    KEYS
    LABEL
    LANGUAGE
    LARGE_P
    LAST_P
    LATERAL_P
    LBRACE
    LBRACKET
    LEADING
    LEAKPROOF
    LEAST
    LEFT
    LESS_EQUALS
    LESS_LESS
    LEVEL
    LIKE
    LIMIT
    LISTEN
    LOAD
    LOCAL
    LOCALTIME
    LOCALTIMESTAMP
    LOCATION
    LOCKED
    LOCK_P
    LOGGED
    LOOP
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MAPPING
    MATCH
    MATCHED
    MATERIALIZED
    MAXVALUE
    MERGE
    MERGE_ACTION
    METHOD
    MINUS
    MINUSEQ
    MINUSMINUS
    MINUTE_P
    MINVALUE
    MODE
    MONTH_P
    MOVE
    NAMES
    NAME_P
    NATIONAL
    NATURAL
    NCHAR
    NESTED
    NEW
    NEXT
    NFC
    NFD
    NFKC
    NFKD
    NO
    NONE
    NORMALIZE
    NORMALIZED
    NOT
    NOTEQ
    NOTEQEQ
    NOTHING
    NOTICE
    NOTIFY
    NOTNULL
    NOT_EQUALS
    NOWAIT
    NULLIF
    NULLS_P
    NULL_P
    NUMBER
    NUMERIC
    Numeric
    OBJECT_P
    OF
    OFF
    OFFSET
    OIDS
    OLD
    OMIT
    ON
    ONLY
    OPEN
    OPEN_BRACKET
    OPEN_PAREN
    OPERATOR
    OPTION
    OPTIONS
    OR
    ORDER
    ORDINALITY
    OROR
    OTHERS
    OUTER_P
    OUT_P
    OVER
    OVERLAPS
    OVERLAY
    OVERRIDING
    OWNED
    OWNER
    OctalIntegral
    Operator
    PARALLEL
    PARAMETER
    PARSER
    PARTIAL
    PARTITION
    PASSING
    PASSWORD
    PATH
    PERCENT
    PERCENTEQ
    PERFORM
    PERIOD
    PIPE
    PIPEEQ
    PLACING
    PLAN
    PLANS
    PLSQLVARIABLENAME
    PLUS
    PLUSEQ
    PLUSPLUS
    POLICY
    POSITION
    PRECEDING
    PRECISION
    PREPARE
    PREPARED
    PRESERVE
    PRIMARY
    PRIOR
    PRIVILEGES
    PROCEDURAL
    PROCEDURE
    PROCEDURES
    PROGRAM
    PUBLICATION
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QUOTE
    QUOTES
    QuotedIdentifier
    RAISE
    RANGE
    RBRACE
    RBRACKET
    READ
    REAL
    REASSIGN
    RECEIVE
    RECHECK
    RECURSIVE
    REF
    REFERENCES
    REFERENCING
    REFRESH
    REINDEX
    RELATIVE_P
    RELEASE
    RENAME
    REPEATABLE
    REPLACE
    REPLICA
    RESET
    RESTART
    RESTRICT
    RETURN
    RETURNING
    RETURNS
    REVOKE
    RIGHT
    ROLE
    ROLLBACK
    ROLLUP
    ROUTINE
    ROUTINES
    ROW
    ROWS
    ROWTYPE
    RPAREN
    RSHIFT
    RSHIFTEQ
    RULE
    SAVEPOINT
    SCALAR
    SCHEMA
    SCHEMAS
    SCROLL
    SEARCH
    SECOND_P
    SECURITY
    SELECT
    SEMI
    SEQUENCE
    SEQUENCES
    SERIALIZABLE
    SERVER
    SESSION
    SESSION_USER
    SET
    SETOF
    SETS
    SHARE
    SHOW
    SIMILAR
    SIMPLE
    SKIP_P
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SLICE
    SMALLINT
    SNAPSHOT
    SOME
    SOURCE
    SQLSTATE
    SQL_P
    SQUOTE
    STABLE
    STACKED
    STANDALONE_P
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    START
    STATEMENT
    STATISTICS
    STDIN
    STDOUT
    STORAGE
    STORED
    STRICT_P
    STRING
    STRING_P
    STRIP_P
    SUBSCRIPTION
    SUBSTRING
    SUPPORT
    SYMMETRIC
    SYSID
    SYSTEM_P
    SYSTEM_USER
    StringConstant
    TABLE
    TABLES
    TABLESAMPLE
    TABLESPACE
    TARGET
    TEMP
    TEMPLATE
    TEMPORARY
    TEXT_P
    THEN
    TIES
    TILDE
    TIME
    TIMESTAMP
    TO
    TRAILING
    TRANSACTION
    TRANSFORM
    TREAT
    TRIGGER
    TRIM
    TRUE_P
    TRUNCATE
    TRUSTED
    TYPECAST
    TYPES_P
    TYPE_P
    UESCAPE
    UNBOUNDED
    UNCOMMITTED
    UNCONDITIONAL
    UNDERSCORE
    UNENCRYPTED
    UNION
    UNIQUE
    UNKNOWN
    UNLISTEN
    UNLOGGED
    UNTIL
    UPDATE
    URSHIFT
    URSHIFTEQ
    USER
    USE_COLUMN
    USE_VARIABLE
    USING
    UnicodeEscapeStringConstant
    UnicodeQuotedIdentifier
    VACUUM
    VALID
    VALIDATE
    VALIDATOR
    VALUES
    VALUE_P
    VARCHAR
    VARIADIC
    VARYING
    VERBOSE
    VERSION_P
    VIEW
    VIEWS
    VOLATILE
    WARNING
    WHEN
    WHERE
    WHILE
    WHITESPACE_P
    WINDOW
    WITH
    WITHIN
    WITHOUT
    WORK
    WRAPPER
    WRITE
    XMLAGG
    XMLATTRIBUTES
    XMLCOMMENT
    XMLCONCAT
    XMLELEMENT
    XMLEXISTS
    XMLFOREST
    XMLNAMESPACES
    XMLPARSE
    XMLPI
    XMLROOT
    XMLSERIALIZE
    XMLTABLE
    XML_IS_WELL_FORMED
    XML_IS_WELL_FORMED_CONTENT
    XML_IS_WELL_FORMED_DOCUMENT
    XML_P
    XPATH
    XPATH_EXISTS
    YEAR_P
    YES_P
    YIELDSTAR
    ZONE
%End

%Terminals
    CtlCharNotWS

    LF   CR   HT   FF

    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _

    A    B    C    D    E    F    G    H    I    J    K    L    M
    N    O    P    Q    R    S    T    U    V    W    X    Y    Z

    0    1    2    3    4    5    6    7    8    9

    AfterASCII   ::= '\u0080..\ufffe'
    Space        ::= ' '
    LF           ::= NewLine
    CR           ::= Return
    HT           ::= HorizontalTab
    FF           ::= FormFeed
    DoubleQuote  ::= '"'
    SingleQuote  ::= "'"
    Percent      ::= '%'
    VerticalBar  ::= '|'
    Exclamation  ::= '!'
    AtSign       ::= '@'
    BackQuote    ::= '`'
    Tilde        ::= '~'
    Sharp        ::= '#'
    DollarSign   ::= '$'
    Ampersand    ::= '&'
    Caret        ::= '^'
    Colon        ::= ':'
    SemiColon    ::= ';'
    BackSlash    ::= '\'
    LeftBrace    ::= '{'
    RightBrace   ::= '}'
    LeftBracket  ::= '['
    RightBracket ::= ']'
    QuestionMark ::= '?'
    Comma        ::= ','
    Dot          ::= '.'
    LessThan     ::= '<'
    GreaterThan  ::= '>'
    Plus         ::= '+'
    Minus        ::= '-'
    Slash        ::= '/'
    Star         ::= '*'
    Equal        ::= '='
    LeftParen    ::= '('
    RightParen   ::= ')'
%End

%Start
    Token
%End

%Rules
    Token ::= identifier /. checkForKeyWord(); ./
            | number     /. makeToken($_Integral); ./
            | string     /. makeToken($_StringConstant); ./
            | LineComment /. skipToken(); ./
            | white /. skipToken(); ./
            | 'y' 'i' 'e' 'l' 'd' '*' /. makeToken($_YIELDSTAR); ./
            | '>' '>' '>' '=' /. makeToken($_URSHIFTEQ); ./
            | '!' '=' '=' /. makeToken($_NOTEQEQ); ./
            | '*' '*' '=' /. makeToken($_STARSTAREQ); ./
            | '-' '>' '*' /. makeToken($_ARROWSTAR); ./
            | '.' '.' '.' /. makeToken($_ELLIPSIS); ./
            | '/' '/' '=' /. makeToken($_SLASHSLASHEQ); ./
            | '<' '<' '=' /. makeToken($_LSHIFTEQ); ./
            | '=' '=' '=' /. makeToken($_EQEQEQ); ./
            | '>' '>' '=' /. makeToken($_RSHIFTEQ); ./
            | '>' '>' '>' /. makeToken($_URSHIFT); ./
            | '?' '?' '=' /. makeToken($_QUESTQUESTEQ); ./
            | '!' '=' /. makeToken($_NOTEQ); ./
            | '%' '=' /. makeToken($_PERCENTEQ); ./
            | '&' '&' /. makeToken($_ANDAND); ./
            | '&' '=' /. makeToken($_AMPEQ); ./
            | '&' '^' /. makeToken($_BITCLEAR); ./
            | '*' '*' /. makeToken($_STARSTAR); ./
            | '*' '=' /. makeToken($_STAREQ); ./
            | '+' '+' /. makeToken($_PLUSPLUS); ./
            | '+' '=' /. makeToken($_PLUSEQ); ./
            | '-' '-' /. makeToken($_MINUSMINUS); ./
            | '-' '=' /. makeToken($_MINUSEQ); ./
            | '-' '>' /. makeToken($_ARROW); ./
            | '.' '*' /. makeToken($_DOTSTAR); ./
            | '.' '.' /. makeToken($_DOTDOT); ./
            | '/' '/' /. makeToken($_SLASHSLASH); ./
            | '/' '=' /. makeToken($_SLASHEQ); ./
            | ':' ':' /. makeToken($_COLONCOLON); ./
            | ':' '=' /. makeToken($_COLONEQ); ./
            | '<' '-' /. makeToken($_RECEIVE); ./
            | '<' '<' /. makeToken($_LSHIFT); ./
            | '<' '=' /. makeToken($_LTEQ); ./
            | '<' '>' /. makeToken($_LTGT); ./
            | '=' '=' /. makeToken($_EQEQ); ./
            | '=' '>' /. makeToken($_FATARROW); ./
            | '>' '=' /. makeToken($_GTEQ); ./
            | '>' '>' /. makeToken($_RSHIFT); ./
            | '?' '.' /. makeToken($_QUESTDOT); ./
            | '?' '?' /. makeToken($_QUESTQUEST); ./
            | '@' '=' /. makeToken($_ATEQ); ./
            | '^' '=' /. makeToken($_CARETEQ); ./
            | '|' '=' /. makeToken($_PIPEEQ); ./
            | '|' '|' /. makeToken($_OROR); ./
            | '!' /. makeToken($_BANG); ./
            | '"' /. makeToken($_DQUOTE); ./
            | '#' /. makeToken($_HASH); ./
            | '%' /. makeToken($_PERCENT); ./
            | '&' /. makeToken($_AMP); ./
            | '(' /. makeToken($_OPEN_PAREN); ./
            | ')' /. makeToken($_CLOSE_PAREN); ./
            | '*' /. makeToken($_STAR); ./
            | '+' /. makeToken($_PLUS); ./
            | ',' /. makeToken($_COMMA); ./
            | '-' /. makeToken($_MINUS); ./
            | '.' /. makeToken($_DOT); ./
            | '/' /. makeToken($_SLASH); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMI); ./
            | '<' /. makeToken($_LT); ./
            | '=' /. makeToken($_EQUAL); ./
            | '>' /. makeToken($_GT); ./
            | '?' /. makeToken($_QUESTION); ./
            | '@' /. makeToken($_AT); ./
            | '[' /. makeToken($_LBRACKET); ./
            | '\' /. makeToken($_BACKSLASH); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '^' /. makeToken($_CARET); ./
            | '`' /. makeToken($_BACKTICK); ./
            | '{' /. makeToken($_LBRACE); ./
            | '|' /. makeToken($_PIPE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '~' /. makeToken($_TILDE); ./

    identifier -> Letter
                | identifier Letter
                | identifier Digit

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _
            | AfterASCII
            | DollarSign

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digit
             | number Digit
             | number '_' Digit
             | number '.' Digit
             | number '.' Digits
             | '.' Digits

    Digits ::= Digit
             | Digits Digit

    string ::= '"' SLBody '"'
             | SingleQuote SLBodySQ SingleQuote

    SLBody -> $empty
            | SLBody NotDQ

    SLBodySQ -> $empty
              | SLBodySQ NotSQ

    NotDQ -> Letter | Digit | Space | HT | SingleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | '/' | n | r | t | b | f

    charlit ::= SingleQuote NotSQ SingleQuote

    LineComment ::= '/' '/' LineCommentBody
    LineCommentBody -> $empty
                     | LineCommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
