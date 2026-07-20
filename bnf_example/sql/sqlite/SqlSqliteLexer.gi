-- Real lexer for SqlSqliteParser (not token-stream soup). Keywords via SqlSqliteKWLexer.
%Options list
%Options fp=SqlSqliteLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sql.sqlite
%options template=LexerTemplateF.gi
%options filter=SqlSqliteKWLexer.gi

%Define
    $kw_lexer_class /.$SqlSqliteKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABORT_
    ACTION_
    ADD_
    AFTER_
    ALL_
    ALTER_
    ALWAYS_
    AMP
    AMPEQ
    ANALYZE_
    ANDAND
    AND_
    ARROW
    ARROWSTAR
    ASC_
    ASSIGN
    AS_
    AT
    ATEQ
    ATTACH_
    AUTOINCREMENT_
    BACKSLASH
    BACKTICK
    BANG
    BEFORE_
    BEGIN_
    BETWEEN_
    BIND_PARAMETER
    BITCLEAR
    BLOB_LITERAL
    BY_
    CARET
    CARETEQ
    CASCADE_
    CASE_
    CAST_
    CHAR_LITERAL
    CHECK_
    CLOSE_PAR
    COLLATE_
    COLON
    COLONCOLON
    COLONEQ
    COLUMN_
    COMMA
    COMMIT_
    CONFLICT_
    CONSTRAINT_
    CREATE_
    CROSS_
    CURRENT_
    CURRENT_DATE_
    CURRENT_TIMESTAMP_
    CURRENT_TIME_
    DATABASE_
    DEFAULT_
    DEFERRABLE_
    DEFERRED_
    DELETE_
    DESC_
    DETACH_
    DISTINCT_
    DIV
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DO_
    DQUOTE
    DROP_
    EACH_
    ELLIPSIS
    ELSE_
    END_
    EQ
    EQEQ
    EQEQEQ
    ESCAPE_
    EXCEPT_
    EXCLUDE_
    EXCLUSIVE_
    EXISTS_
    EXPLAIN_
    FAIL_
    FALSE_
    FATARROW
    FILTER_
    FIRST_
    FOLLOWING_
    FOREIGN_
    FOR_
    FROM_
    FULL_
    GENERATED_
    GLOB_
    GROUPS_
    GROUP_
    GT
    GT2
    GTEQ
    GT_EQ
    HASH
    HAVING_
    IDENTIFIER
    IF_
    IGNORE_
    IMMEDIATE_
    INDEXED_
    INDEX_
    INITIALLY_
    INNER_
    INSERT_
    INSTEAD_
    INTERSECT_
    INTO_
    IN_
    ISNULL_
    IS_
    JOIN_
    JPTR
    JPTR2
    KEY_
    LAST_
    LBRACE
    LBRACKET
    LEFT_
    LIKE_
    LIMIT_
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LT2
    LTEQ
    LTGT
    LT_EQ
    MATCH_
    MATERIALIZED_
    MINUS
    MINUSEQ
    MINUSMINUS
    MOD
    NATURAL_
    NOTEQ
    NOTEQEQ
    NOTHING_
    NOTNULL_
    NOT_
    NOT_EQ1
    NOT_EQ2
    NO_
    NULLS_
    NULL_
    NUMBER
    NUMERIC_LITERAL
    OFFSET_
    OF_
    ON_
    OPEN_PAR
    ORDER_
    OROR
    OR_
    OTHERS_
    OUTER_
    OVER_
    PARTITION_
    PERCENT
    PERCENTEQ
    PIPE
    PIPE2
    PIPEEQ
    PLAN_
    PLUS
    PLUSEQ
    PLUSPLUS
    PRAGMA_
    PRECEDING_
    PRIMARY_
    QUERY_
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RAISE_
    RANGE_
    RBRACE
    RBRACKET
    RECEIVE
    RECURSIVE_
    REFERENCES_
    REGEXP_
    REINDEX_
    RELEASE_
    RENAME_
    REPLACE_
    RESTRICT_
    RETURNING_
    RIGHT_
    ROLLBACK_
    ROWID_
    ROWS_
    ROW_
    RPAREN
    RSHIFT
    RSHIFTEQ
    SAVEPOINT_
    SCOL
    SELECT_
    SEMI
    SET_
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STORED_
    STRICT_
    STRING
    STRING_LITERAL
    TABLE_
    TEMPORARY_
    TEMP_
    THEN_
    TIES_
    TILDE
    TO_
    TRANSACTION_
    TRIGGER_
    TRUE_
    UNBOUNDED_
    UNDERSCORE
    UNEXPECTED_CHAR
    UNION_
    UNIQUE_
    UPDATE_
    URSHIFT
    URSHIFTEQ
    USING_
    VACUUM_
    VALUES_
    VIEW_
    VIRTUAL_
    WHEN_
    WHERE_
    WINDOW_
    WITHIN_
    WITHOUT_
    WITH_
    YIELDSTAR
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
    Token ::= blob       /. makeToken($_BLOB_LITERAL); ./
            | bind       /. makeToken($_BIND_PARAMETER); ./
            | string     /. makeToken($_STRING_LITERAL); ./
            | number     /. makeToken($_NUMERIC_LITERAL); ./
            | identifier /. checkForKeyWord(); ./
            | DashComment /. skipToken(); ./
            | BlockComment /. skipToken(); ./
            | white /. skipToken(); ./
            | '!' '=' /. makeToken($_NOT_EQ1); ./
            | '<' '<' /. makeToken($_LT2); ./
            | '<' '=' /. makeToken($_LT_EQ); ./
            | '<' '>' /. makeToken($_NOT_EQ2); ./
            | '=' '=' /. makeToken($_EQ); ./
            | '>' '=' /. makeToken($_GT_EQ); ./
            | '>' '>' /. makeToken($_GT2); ./
            | '|' '|' /. makeToken($_PIPE2); ./
            | '%' /. makeToken($_MOD); ./
            | '&' /. makeToken($_AMP); ./
            | '(' /. makeToken($_OPEN_PAR); ./
            | ')' /. makeToken($_CLOSE_PAR); ./
            | '*' /. makeToken($_STAR); ./
            | '+' /. makeToken($_PLUS); ./
            | ',' /. makeToken($_COMMA); ./
            | '-' /. makeToken($_MINUS); ./
            | '.' /. makeToken($_DOT); ./
            | '/' /. makeToken($_DIV); ./
            | ';' /. makeToken($_SCOL); ./
            | '<' /. makeToken($_LT); ./
            | '=' /. makeToken($_ASSIGN); ./
            | '>' /. makeToken($_GT); ./
            | '|' /. makeToken($_PIPE); ./
            | '~' /. makeToken($_TILDE); ./

    identifier -> Letter
                | identifier Letter
                | identifier Digit

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _
            | AfterASCII

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digit
             | number Digit
             | number '.' Digit
             | number '.' Digits
             | '.' Digits

    Digits ::= Digit
             | Digits Digit

    -- SQL string: '...' with '' escape
    string ::= SingleQuote SQBody SingleQuote

    SQBody -> $empty
            | SQBody SQChar
            | SQBody SingleQuote SingleQuote

    SQChar -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
              '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
              '^' | '~' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | AfterASCII

    -- X'ABCD' blob literal (case-insensitive x via keyword map not available; accept both)
    blob ::= X SingleQuote HexBody SingleQuote
           | x SingleQuote HexBody SingleQuote

    HexBody -> $empty
             | HexBody HexDigit

    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F

    bind ::= '?'
           | '?' Digits
           | ':' identifier
           | '@' identifier
           | '$' identifier

    DashComment ::= '-' '-' DashBody
    DashBody -> $empty | DashBody NotNL
    BlockComment ::= '/' '*' BlockBody '*' '/'
    BlockBody -> $empty | BlockBody NotStar | BlockBody '*' NotSlash
    NotStar -> Letter | Digit | Space | HT | LF | CR | SpecialNotStar
    NotSlash -> Letter | Digit | Space | HT | LF | CR | SpecialNotSlash | Star
    SpecialNotStar -> '+' | '-' | '/' | '(' | ')' | '!' | '@' | '~' |
                      '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{' | '}' |
                      '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash
    SpecialNotSlash -> '+' | '-' | '(' | ')' | '!' | '@' | '~' |
                       '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{' | '}' |
                       '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL | AfterASCII | DoubleQuote | SingleQuote | BackSlash
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
