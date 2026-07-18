-- Real lexer for SqlTrinoParser (not token-stream soup). Keywords via SqlTrinoKWLexer.
%Options list
%Options fp=SqlTrinoLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sql.trino
%options template=LexerTemplateF.gi
%options filter=SqlTrinoKWLexer.gi

%Define
    $kw_lexer_class /.$SqlTrinoKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABSENT_
    ADD_
    ADMIN_
    AFTER_
    ALL_
    ALTER_
    AMP
    AMPEQ
    ANALYZE_
    ANDAND
    AND_
    ANY_
    ARRAY_
    ARROW
    ARROWSTAR
    ASC_
    ASTERISK_
    AS_
    AT
    ATEQ
    AT_
    AUTHORIZATION_
    BACKQUOTED_IDENTIFIER_
    BACKSLASH
    BACKTICK
    BANG
    BEGIN_
    BERNOULLI_
    BETWEEN_
    BINARY_LITERAL_
    BITCLEAR
    BOTH_
    BY_
    CALLED_
    CALL_
    CARET
    CARETEQ
    CARET_
    CASCADE_
    CASE_
    CAST_
    CATALOGS_
    CATALOG_
    CHAR_LITERAL
    COLON
    COLONCOLON
    COLONEQ
    COLON_
    COLUMNS_
    COLUMN_
    COMMA
    COMMA_
    COMMENT_
    COMMITTED_
    COMMIT_
    CONCAT_
    CONDITIONAL_
    CONSTRAINT_
    COPARTITION_
    COUNT_
    CREATE_
    CROSS_
    CUBE_
    CURRENT_
    CURRENT_CATALOG_
    CURRENT_DATE_
    CURRENT_PATH_
    CURRENT_ROLE_
    CURRENT_SCHEMA_
    CURRENT_TIMESTAMP_
    CURRENT_TIME_
    CURRENT_USER_
    DATA_
    DATE_
    DAY_
    DEALLOCATE_
    DECIMAL_VALUE_
    DECLARE_
    DEFAULT_
    DEFINER_
    DEFINE_
    DELETE_
    DENY_
    DESCRIBE_
    DESCRIPTOR_
    DESC_
    DETERMINISTIC_
    DIGIT_IDENTIFIER_
    DISTINCT_
    DISTRIBUTED_
    DOLLAR
    DOLLAR_
    DOT
    DOTDOT
    DOTSTAR
    DOT_
    DOUBLE_
    DOUBLE_VALUE_
    DO_
    DQUOTE
    DROP_
    ELLIPSIS
    ELSEIF_
    ELSE_
    EMPTY_
    ENCODING_
    END_
    EQ
    EQEQ
    EQEQEQ
    EQ_
    ERROR_
    ESCAPE_
    EXCEPT_
    EXCLUDING_
    EXECUTE_
    EXISTS_
    EXPLAIN_
    EXTRACT_
    FALSE_
    FATARROW
    FETCH_
    FILTER_
    FINAL_
    FIRST_
    FOLLOWING_
    FORMAT_
    FOR_
    FROM_
    FULL_
    FUNCTIONS_
    FUNCTION_
    GRACE_
    GRANTED_
    GRANTS_
    GRANT_
    GRAPHVIZ_
    GROUPING_
    GROUPS_
    GROUP_
    GT
    GTEQ
    GTE_
    GT_
    HASH
    HAVING_
    HOUR_
    IDENTIFIER
    IDENTIFIER_
    IF_
    IGNORE_
    IMMEDIATE_
    INCLUDING_
    INITIAL_
    INNER_
    INPUT_
    INSERT_
    INTEGER_VALUE_
    INTERSECT_
    INTERVAL_
    INTO_
    INVOKER_
    IN_
    IO_
    ISOLATION_
    IS_
    ITERATE_
    JOIN_
    JSON_
    JSON_ARRAY_
    JSON_EXISTS_
    JSON_OBJECT_
    JSON_QUERY_
    JSON_TABLE_
    JSON_VALUE_
    KEEP_
    KEYS_
    KEY_
    LANGUAGE_
    LAST_
    LATERAL_
    LBRACE
    LBRACKET
    LCURLYHYPHEN_
    LCURLY_
    LEADING_
    LEAVE_
    LEFT_
    LEVEL_
    LIKE_
    LIMIT_
    LISTAGG_
    LOCALTIMESTAMP_
    LOCALTIME_
    LOCAL_
    LOGICAL_
    LOOP_
    LPAREN
    LPAREN_
    LSHIFT
    LSHIFTEQ
    LSQUARE_
    LT
    LTEQ
    LTE_
    LTGT
    LT_
    MAP_
    MATCHED_
    MATCHES_
    MATCH_
    MATCH_RECOGNIZE_
    MATERIALIZED_
    MEASURES_
    MERGE_
    MINUS
    MINUSEQ
    MINUSMINUS
    MINUS_
    MINUTE_
    MONTH_
    NATURAL_
    NEQ_
    NESTED_
    NEXT_
    NFC_
    NFD_
    NFKC_
    NFKD_
    NONE_
    NORMALIZE_
    NOTEQ
    NOTEQEQ
    NOT_
    NO_
    NULLIF_
    NULLS_
    NULL_
    NUMBER
    OBJECT_
    OFFSET_
    OF_
    OMIT_
    ONE_
    ONLY_
    ON_
    OPTION_
    ORDER_
    ORDINALITY_
    OROR
    OR_
    OUTER_
    OUTPUT_
    OVERFLOW_
    OVER_
    PARTITIONS_
    PARTITION_
    PASSING_
    PAST_
    PATH_
    PATTERN_
    PERCENT
    PERCENTEQ
    PERCENT_
    PERIOD_
    PERMUTE_
    PER_
    PIPE
    PIPEEQ
    PLAN_
    PLUS
    PLUSEQ
    PLUSPLUS
    PLUS_
    POSITION_
    PRECEDING_
    PRECISION_
    PREPARE_
    PRIVILEGES_
    PROPERTIES_
    PRUNE_
    QUESTDOT
    QUESTION
    QUESTION_MARK_
    QUESTQUEST
    QUESTQUESTEQ
    QUOTED_IDENTIFIER_
    QUOTES_
    RANGE_
    RARROW_
    RBRACE
    RBRACKET
    RCURLYHYPHEN_
    RCURLY_
    RDOUBLEARROW_
    READ_
    RECEIVE
    RECURSIVE_
    REFRESH_
    RENAME_
    REPEATABLE_
    REPEAT_
    REPLACE_
    RESET_
    RESPECT_
    RESTRICT_
    RETURNING_
    RETURNS_
    RETURN_
    REVOKE_
    RIGHT_
    ROLES_
    ROLE_
    ROLLBACK_
    ROLLUP_
    ROWS_
    ROW_
    RPAREN
    RPAREN_
    RSHIFT
    RSHIFTEQ
    RSQUARE_
    RUNNING_
    SCALAR_
    SCHEMAS_
    SCHEMA_
    SECOND_
    SECURITY_
    SEEK_
    SELECT_
    SEMI
    SEMICOLON_
    SERIALIZABLE_
    SESSION_
    SETS_
    SET_
    SHOW_
    SKIP_
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SLASH_
    SOME_
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    START_
    STATS_
    STRING
    STRING_
    SUBSET_
    SUBSTRING_
    SYSTEM_
    TABLESAMPLE_
    TABLES_
    TABLE_
    TEXT_
    TEXT_STRING_
    THEN_
    TIES_
    TILDE
    TIMESTAMP_
    TIME_
    TO_
    TRAILING_
    TRANSACTION_
    TRIM_
    TRUE_
    TRUNCATE_
    TRY_CAST_
    TYPE_
    UESCAPE_
    UNBOUNDED_
    UNCOMMITTED_
    UNCONDITIONAL_
    UNDERSCORE
    UNICODE_STRING_
    UNION_
    UNIQUE_
    UNKNOWN_
    UNMATCHED_
    UNNEST_
    UNTIL_
    UPDATE_
    URSHIFT
    URSHIFTEQ
    USER_
    USE_
    USING_
    UTF16_
    UTF32_
    UTF8_
    VALIDATE_
    VALUES_
    VALUE_
    VBAR_
    VERBOSE_
    VERSION_
    VIEW_
    WHEN_
    WHERE_
    WHILE_
    WINDOW_
    WITHIN_
    WITHOUT_
    WITH_
    WORK_
    WRAPPER_
    WRITE_
    YEAR_
    YIELDSTAR
    ZONE_
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
    Token ::= identifier /. checkForKeyWord($_IDENTIFIER_); ./
            | number     /. makeToken($_INTEGER_VALUE_); ./
            | string     /. makeToken($_STRING); ./
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
            | '!' '=' /. makeToken($_NEQ_); ./
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
            | '(' /. makeToken($_LPAREN_); ./
            | ')' /. makeToken($_RPAREN_); ./
            | '*' /. makeToken($_ASTERISK_); ./
            | '+' /. makeToken($_PLUS_); ./
            | ',' /. makeToken($_COMMA_); ./
            | '-' /. makeToken($_MINUS_); ./
            | '.' /. makeToken($_DOT_); ./
            | '/' /. makeToken($_SLASH_); ./
            | ':' /. makeToken($_COLON_); ./
            | ';' /. makeToken($_SEMICOLON_); ./
            | '<' /. makeToken($_LT_); ./
            | '=' /. makeToken($_EQ_); ./
            | '>' /. makeToken($_GT_); ./
            | '?' /. makeToken($_QUESTION_MARK_); ./
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
