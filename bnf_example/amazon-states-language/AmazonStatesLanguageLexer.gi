-- Real lexer for AmazonStatesLanguageParser (not token-stream soup). Keywords via AmazonStatesLanguageKWLexer.
%Options list
%Options fp=AmazonStatesLanguageLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.amazon_states_language
%options template=LexerTemplateF.gi
%options filter=AmazonStatesLanguageKWLexer.gi

%Define
    $kw_lexer_class /.$AmazonStatesLanguageKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    AMP
    AMPEQ
    AND
    ANDAND
    ARROW
    ARROWSTAR
    AT
    ATEQ
    BACKOFFRATE
    BACKSLASH
    BACKTICK
    BANG
    BITCLEAR
    BOOLEANEQUALS
    BOOLEANQUALSPATH
    BRANCHES
    CARET
    CARETEQ
    CATCH
    CAUSE
    CAUSEPATH
    CHAR_LITERAL
    CHOICE
    CHOICES
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    COMMENT
    CSVHEADERLOCATION
    CSVHEADERS
    DEFAULT
    DISTRIBUTED
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DQUOTE
    ELLIPSIS
    END
    EQ
    EQEQ
    EQEQEQ
    ERROR
    ERROREQUALS
    ERRORNAMEStatesALL
    ERRORNAMEStatesBranchFailed
    ERRORNAMEStatesExceedToleratedFailureThreshold
    ERRORNAMEStatesHeartbeatTimeout
    ERRORNAMEStatesIntrinsicFailure
    ERRORNAMEStatesItemReaderFailed
    ERRORNAMEStatesNoChoiceMatched
    ERRORNAMEStatesParameterPathFailure
    ERRORNAMEStatesPermissions
    ERRORNAMEStatesResultPathMatchFailure
    ERRORNAMEStatesResultWriterFailed
    ERRORNAMEStatesRuntime
    ERRORNAMEStatesTaskFailed
    ERRORNAMEStatesTimeout
    ERRORPATH
    EXECUTIONTYPE
    FAIL
    FALSE
    FATARROW
    FULL
    GT
    GTEQ
    HASH
    HEARTBEATSECONDS
    HEARTBEATSECONDSPATH
    IDENTIFIER
    INLINE
    INPUTPATH
    INPUTTYPE
    INT
    INTERVALSECONDS
    ISBOOLEAN
    ISNULL
    ISNUMERIC
    ISPRESENT
    ISSTRING
    ISTIMESTAMP
    ITEMPROCESSOR
    ITEMREADER
    ITEMSELECTOR
    ITEMSPATH
    ITERATOR
    JITTERSTRATEGY
    LBRACE
    LBRACK
    LBRACKET
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MAP
    MAXATTEMPTS
    MAXCONCURRENCY
    MAXDELAYSECONDS
    MAXITEMS
    MAXITEMSPATH
    MINUS
    MINUSEQ
    MINUSMINUS
    MODE
    NEXT
    NONE
    NOT
    NOTEQ
    NOTEQEQ
    NULL
    NUMBER
    NUMERICEQUALS
    NUMERICEQUALSPATH
    NUMERICGREATERTHAN
    NUMERICGREATERTHANEQUALS
    NUMERICGREATERTHANEQUALSPATH
    NUMERICGREATERTHANPATH
    NUMERICLESSTHAN
    NUMERICLESSTHANEQUALS
    NUMERICLESSTHANEQUALSPATH
    NUMERICLESSTHANPATH
    OR
    OROR
    OUTPUTPATH
    PARALLEL
    PARAMETERS
    PASS
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    PROCESSORCONFIG
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACK
    RBRACKET
    READERCONFIG
    RECEIVE
    RESOURCE
    RESULT
    RESULTPATH
    RESULTSELECTOR
    RETRY
    RPAREN
    RSHIFT
    RSHIFTEQ
    SECONDS
    SECONDSPATH
    SEMI
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SQUOTE
    STANDARD
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STARTAT
    STATES
    STRING
    STRINGDOLLAR
    STRINGEQUALS
    STRINGEQUALSPATH
    STRINGGREATERTHAN
    STRINGGREATERTHANEQUALS
    STRINGGREATERTHANEQUALSPATH
    STRINGGREATERTHANPATH
    STRINGLESSTHAN
    STRINGLESSTHANEQUALS
    STRINGLESSTHANEQUALSPATH
    STRINGLESSTHANPATH
    STRINGMATCHES
    STRINGPATH
    STRINGPATHCONTEXTOBJ
    SUCCEED
    TASK
    TILDE
    TIMEOUTSECONDS
    TIMEOUTSECONDSPATH
    TIMESTAMP
    TIMESTAMPEQUALS
    TIMESTAMPEQUALSPATH
    TIMESTAMPGREATERTHAN
    TIMESTAMPGREATERTHANEQUALS
    TIMESTAMPGREATERTHANEQUALSPATH
    TIMESTAMPGREATERTHANPATH
    TIMESTAMPLESSTHAN
    TIMESTAMPLESSTHANEQUALS
    TIMESTAMPLESSTHANEQUALSPATH
    TIMESTAMPLESSTHANPATH
    TIMESTAMPPATH
    TRUE
    TYPE
    UNDERSCORE
    URSHIFT
    URSHIFTEQ
    VARIABLE
    VERSION
    WAIT
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
    Token ::= DoubleQuote 'C' 'o' 'm' 'm' 'e' 'n' 't' DoubleQuote /. makeToken($_COMMENT); ./
            | DoubleQuote 'S' 't' 'a' 't' 'e' 's' DoubleQuote /. makeToken($_STATES); ./
            | DoubleQuote 'S' 't' 'a' 'r' 't' 'A' 't' DoubleQuote /. makeToken($_STARTAT); ./
            | DoubleQuote 'V' 'e' 'r' 's' 'i' 'o' 'n' DoubleQuote /. makeToken($_VERSION); ./
            | DoubleQuote 'T' 'y' 'p' 'e' DoubleQuote /. makeToken($_TYPE); ./
            | DoubleQuote 'T' 'a' 's' 'k' DoubleQuote /. makeToken($_TASK); ./
            | DoubleQuote 'C' 'h' 'o' 'i' 'c' 'e' DoubleQuote /. makeToken($_CHOICE); ./
            | DoubleQuote 'F' 'a' 'i' 'l' DoubleQuote /. makeToken($_FAIL); ./
            | DoubleQuote 'S' 'u' 'c' 'c' 'e' 'e' 'd' DoubleQuote /. makeToken($_SUCCEED); ./
            | DoubleQuote 'P' 'a' 's' 's' DoubleQuote /. makeToken($_PASS); ./
            | DoubleQuote 'W' 'a' 'i' 't' DoubleQuote /. makeToken($_WAIT); ./
            | DoubleQuote 'P' 'a' 'r' 'a' 'l' 'l' 'e' 'l' DoubleQuote /. makeToken($_PARALLEL); ./
            | DoubleQuote 'M' 'a' 'p' DoubleQuote /. makeToken($_MAP); ./
            | DoubleQuote 'C' 'h' 'o' 'i' 'c' 'e' 's' DoubleQuote /. makeToken($_CHOICES); ./
            | DoubleQuote 'V' 'a' 'r' 'i' 'a' 'b' 'l' 'e' DoubleQuote /. makeToken($_VARIABLE); ./
            | DoubleQuote 'D' 'e' 'f' 'a' 'u' 'l' 't' DoubleQuote /. makeToken($_DEFAULT); ./
            | DoubleQuote 'B' 'r' 'a' 'n' 'c' 'h' 'e' 's' DoubleQuote /. makeToken($_BRANCHES); ./
            | DoubleQuote 'A' 'n' 'd' DoubleQuote /. makeToken($_AND); ./
            | DoubleQuote 'B' 'o' 'o' 'l' 'e' 'a' 'n' 'E' 'q' 'u' 'a' 'l' 's' DoubleQuote /. makeToken($_BOOLEANEQUALS); ./
            | DoubleQuote 'B' 'o' 'o' 'l' 'e' 'a' 'n' 'E' 'q' 'u' 'a' 'l' 's' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_BOOLEANQUALSPATH); ./
            | DoubleQuote 'I' 's' 'B' 'o' 'o' 'l' 'e' 'a' 'n' DoubleQuote /. makeToken($_ISBOOLEAN); ./
            | DoubleQuote 'I' 's' 'N' 'u' 'l' 'l' DoubleQuote /. makeToken($_ISNULL); ./
            | DoubleQuote 'I' 's' 'N' 'u' 'm' 'e' 'r' 'i' 'c' DoubleQuote /. makeToken($_ISNUMERIC); ./
            | DoubleQuote 'I' 's' 'P' 'r' 'e' 's' 'e' 'n' 't' DoubleQuote /. makeToken($_ISPRESENT); ./
            | DoubleQuote 'I' 's' 'S' 't' 'r' 'i' 'n' 'g' DoubleQuote /. makeToken($_ISSTRING); ./
            | DoubleQuote 'I' 's' 'T' 'i' 'm' 'e' 's' 't' 'a' 'm' 'p' DoubleQuote /. makeToken($_ISTIMESTAMP); ./
            | DoubleQuote 'N' 'o' 't' DoubleQuote /. makeToken($_NOT); ./
            | DoubleQuote 'N' 'u' 'm' 'e' 'r' 'i' 'c' 'E' 'q' 'u' 'a' 'l' 's' DoubleQuote /. makeToken($_NUMERICEQUALS); ./
            | DoubleQuote 'N' 'u' 'm' 'e' 'r' 'i' 'c' 'E' 'q' 'u' 'a' 'l' 's' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_NUMERICEQUALSPATH); ./
            | DoubleQuote 'N' 'u' 'm' 'e' 'r' 'i' 'c' 'G' 'r' 'e' 'a' 't' 'e' 'r' 'T' 'h' 'a' 'n' DoubleQuote /. makeToken($_NUMERICGREATERTHAN); ./
            | DoubleQuote 'N' 'u' 'm' 'e' 'r' 'i' 'c' 'G' 'r' 'e' 'a' 't' 'e' 'r' 'T' 'h' 'a' 'n' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_NUMERICGREATERTHANPATH); ./
            | DoubleQuote 'N' 'u' 'm' 'e' 'r' 'i' 'c' 'G' 'r' 'e' 'a' 't' 'e' 'r' 'T' 'h' 'a' 'n' 'E' 'q' 'u' 'a' 'l' 's' DoubleQuote /. makeToken($_NUMERICGREATERTHANEQUALS); ./
            | DoubleQuote 'N' 'u' 'm' 'e' 'r' 'i' 'c' 'G' 'r' 'e' 'a' 't' 'e' 'r' 'T' 'h' 'a' 'n' 'E' 'q' 'u' 'a' 'l' 's' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_NUMERICGREATERTHANEQUALSPATH); ./
            | DoubleQuote 'N' 'u' 'm' 'e' 'r' 'i' 'c' 'L' 'e' 's' 's' 'T' 'h' 'a' 'n' DoubleQuote /. makeToken($_NUMERICLESSTHAN); ./
            | DoubleQuote 'N' 'u' 'm' 'e' 'r' 'i' 'c' 'L' 'e' 's' 's' 'T' 'h' 'a' 'n' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_NUMERICLESSTHANPATH); ./
            | DoubleQuote 'N' 'u' 'm' 'e' 'r' 'i' 'c' 'L' 'e' 's' 's' 'T' 'h' 'a' 'n' 'E' 'q' 'u' 'a' 'l' 's' DoubleQuote /. makeToken($_NUMERICLESSTHANEQUALS); ./
            | DoubleQuote 'N' 'u' 'm' 'e' 'r' 'i' 'c' 'L' 'e' 's' 's' 'T' 'h' 'a' 'n' 'E' 'q' 'u' 'a' 'l' 's' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_NUMERICLESSTHANEQUALSPATH); ./
            | DoubleQuote 'O' 'r' DoubleQuote /. makeToken($_OR); ./
            | DoubleQuote 'S' 't' 'r' 'i' 'n' 'g' 'E' 'q' 'u' 'a' 'l' 's' DoubleQuote /. makeToken($_STRINGEQUALS); ./
            | DoubleQuote 'S' 't' 'r' 'i' 'n' 'g' 'E' 'q' 'u' 'a' 'l' 's' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_STRINGEQUALSPATH); ./
            | DoubleQuote 'S' 't' 'r' 'i' 'n' 'g' 'G' 'r' 'e' 'a' 't' 'e' 'r' 'T' 'h' 'a' 'n' DoubleQuote /. makeToken($_STRINGGREATERTHAN); ./
            | DoubleQuote 'S' 't' 'r' 'i' 'n' 'g' 'G' 'r' 'e' 'a' 't' 'e' 'r' 'T' 'h' 'a' 'n' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_STRINGGREATERTHANPATH); ./
            | DoubleQuote 'S' 't' 'r' 'i' 'n' 'g' 'G' 'r' 'e' 'a' 't' 'e' 'r' 'T' 'h' 'a' 'n' 'E' 'q' 'u' 'a' 'l' 's' DoubleQuote /. makeToken($_STRINGGREATERTHANEQUALS); ./
            | DoubleQuote 'S' 't' 'r' 'i' 'n' 'g' 'G' 'r' 'e' 'a' 't' 'e' 'r' 'T' 'h' 'a' 'n' 'E' 'q' 'u' 'a' 'l' 's' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_STRINGGREATERTHANEQUALSPATH); ./
            | DoubleQuote 'S' 't' 'r' 'i' 'n' 'g' 'L' 'e' 's' 's' 'T' 'h' 'a' 'n' DoubleQuote /. makeToken($_STRINGLESSTHAN); ./
            | DoubleQuote 'S' 't' 'r' 'i' 'n' 'g' 'L' 'e' 's' 's' 'T' 'h' 'a' 'n' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_STRINGLESSTHANPATH); ./
            | DoubleQuote 'S' 't' 'r' 'i' 'n' 'g' 'L' 'e' 's' 's' 'T' 'h' 'a' 'n' 'E' 'q' 'u' 'a' 'l' 's' DoubleQuote /. makeToken($_STRINGLESSTHANEQUALS); ./
            | DoubleQuote 'S' 't' 'r' 'i' 'n' 'g' 'L' 'e' 's' 's' 'T' 'h' 'a' 'n' 'E' 'q' 'u' 'a' 'l' 's' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_STRINGLESSTHANEQUALSPATH); ./
            | DoubleQuote 'S' 't' 'r' 'i' 'n' 'g' 'M' 'a' 't' 'c' 'h' 'e' 's' DoubleQuote /. makeToken($_STRINGMATCHES); ./
            | DoubleQuote 'T' 'i' 'm' 'e' 's' 't' 'a' 'm' 'p' 'E' 'q' 'u' 'a' 'l' 's' DoubleQuote /. makeToken($_TIMESTAMPEQUALS); ./
            | DoubleQuote 'T' 'i' 'm' 'e' 's' 't' 'a' 'm' 'p' 'E' 'q' 'u' 'a' 'l' 's' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_TIMESTAMPEQUALSPATH); ./
            | DoubleQuote 'T' 'i' 'm' 'e' 's' 't' 'a' 'm' 'p' 'G' 'r' 'e' 'a' 't' 'e' 'r' 'T' 'h' 'a' 'n' DoubleQuote /. makeToken($_TIMESTAMPGREATERTHAN); ./
            | DoubleQuote 'T' 'i' 'm' 'e' 's' 't' 'a' 'm' 'p' 'G' 'r' 'e' 'a' 't' 'e' 'r' 'T' 'h' 'a' 'n' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_TIMESTAMPGREATERTHANPATH); ./
            | DoubleQuote 'T' 'i' 'm' 'e' 's' 't' 'a' 'm' 'p' 'G' 'r' 'e' 'a' 't' 'e' 'r' 'T' 'h' 'a' 'n' 'E' 'q' 'u' 'a' 'l' 's' DoubleQuote /. makeToken($_TIMESTAMPGREATERTHANEQUALS); ./
            | DoubleQuote 'T' 'i' 'm' 'e' 's' 't' 'a' 'm' 'p' 'G' 'r' 'e' 'a' 't' 'e' 'r' 'T' 'h' 'a' 'n' 'E' 'q' 'u' 'a' 'l' 's' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_TIMESTAMPGREATERTHANEQUALSPATH); ./
            | DoubleQuote 'T' 'i' 'm' 'e' 's' 't' 'a' 'm' 'p' 'L' 'e' 's' 's' 'T' 'h' 'a' 'n' DoubleQuote /. makeToken($_TIMESTAMPLESSTHAN); ./
            | DoubleQuote 'T' 'i' 'm' 'e' 's' 't' 'a' 'm' 'p' 'L' 'e' 's' 's' 'T' 'h' 'a' 'n' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_TIMESTAMPLESSTHANPATH); ./
            | DoubleQuote 'T' 'i' 'm' 'e' 's' 't' 'a' 'm' 'p' 'L' 'e' 's' 's' 'T' 'h' 'a' 'n' 'E' 'q' 'u' 'a' 'l' 's' DoubleQuote /. makeToken($_TIMESTAMPLESSTHANEQUALS); ./
            | DoubleQuote 'T' 'i' 'm' 'e' 's' 't' 'a' 'm' 'p' 'L' 'e' 's' 's' 'T' 'h' 'a' 'n' 'E' 'q' 'u' 'a' 'l' 's' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_TIMESTAMPLESSTHANEQUALSPATH); ./
            | DoubleQuote 'S' 'e' 'c' 'o' 'n' 'd' 's' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_SECONDSPATH); ./
            | DoubleQuote 'S' 'e' 'c' 'o' 'n' 'd' 's' DoubleQuote /. makeToken($_SECONDS); ./
            | DoubleQuote 'T' 'i' 'm' 'e' 's' 't' 'a' 'm' 'p' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_TIMESTAMPPATH); ./
            | DoubleQuote 'T' 'i' 'm' 'e' 's' 't' 'a' 'm' 'p' DoubleQuote /. makeToken($_TIMESTAMP); ./
            | DoubleQuote 'T' 'i' 'm' 'e' 'o' 'u' 't' 'S' 'e' 'c' 'o' 'n' 'd' 's' DoubleQuote /. makeToken($_TIMEOUTSECONDS); ./
            | DoubleQuote 'T' 'i' 'm' 'e' 'o' 'u' 't' 'S' 'e' 'c' 'o' 'n' 'd' 's' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_TIMEOUTSECONDSPATH); ./
            | DoubleQuote 'H' 'e' 'a' 'r' 't' 'b' 'e' 'a' 't' 'S' 'e' 'c' 'o' 'n' 'd' 's' DoubleQuote /. makeToken($_HEARTBEATSECONDS); ./
            | DoubleQuote 'H' 'e' 'a' 'r' 't' 'b' 'e' 'a' 't' 'S' 'e' 'c' 'o' 'n' 'd' 's' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_HEARTBEATSECONDSPATH); ./
            | DoubleQuote 'P' 'r' 'o' 'c' 'e' 's' 's' 'o' 'r' 'C' 'o' 'n' 'f' 'i' 'g' DoubleQuote /. makeToken($_PROCESSORCONFIG); ./
            | DoubleQuote 'M' 'o' 'd' 'e' DoubleQuote /. makeToken($_MODE); ./
            | DoubleQuote 'I' 'N' 'L' 'I' 'N' 'E' DoubleQuote /. makeToken($_INLINE); ./
            | DoubleQuote 'D' 'I' 'S' 'T' 'R' 'I' 'B' 'U' 'T' 'E' 'D' DoubleQuote /. makeToken($_DISTRIBUTED); ./
            | DoubleQuote 'E' 'x' 'e' 'c' 'u' 't' 'i' 'o' 'n' 'T' 'y' 'p' 'e' DoubleQuote /. makeToken($_EXECUTIONTYPE); ./
            | DoubleQuote 'S' 'T' 'A' 'N' 'D' 'A' 'R' 'D' DoubleQuote /. makeToken($_STANDARD); ./
            | DoubleQuote 'I' 't' 'e' 'm' 'P' 'r' 'o' 'c' 'e' 's' 's' 'o' 'r' DoubleQuote /. makeToken($_ITEMPROCESSOR); ./
            | DoubleQuote 'I' 't' 'e' 'r' 'a' 't' 'o' 'r' DoubleQuote /. makeToken($_ITERATOR); ./
            | DoubleQuote 'I' 't' 'e' 'm' 'S' 'e' 'l' 'e' 'c' 't' 'o' 'r' DoubleQuote /. makeToken($_ITEMSELECTOR); ./
            | DoubleQuote 'M' 'a' 'x' 'C' 'o' 'n' 'c' 'u' 'r' 'r' 'e' 'n' 'c' 'y' DoubleQuote /. makeToken($_MAXCONCURRENCY); ./
            | DoubleQuote 'R' 'e' 's' 'o' 'u' 'r' 'c' 'e' DoubleQuote /. makeToken($_RESOURCE); ./
            | DoubleQuote 'I' 'n' 'p' 'u' 't' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_INPUTPATH); ./
            | DoubleQuote 'O' 'u' 't' 'p' 'u' 't' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_OUTPUTPATH); ./
            | DoubleQuote 'I' 't' 'e' 'm' 's' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_ITEMSPATH); ./
            | DoubleQuote 'R' 'e' 's' 'u' 'l' 't' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_RESULTPATH); ./
            | DoubleQuote 'R' 'e' 's' 'u' 'l' 't' DoubleQuote /. makeToken($_RESULT); ./
            | DoubleQuote 'P' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' 's' DoubleQuote /. makeToken($_PARAMETERS); ./
            | DoubleQuote 'R' 'e' 's' 'u' 'l' 't' 'S' 'e' 'l' 'e' 'c' 't' 'o' 'r' DoubleQuote /. makeToken($_RESULTSELECTOR); ./
            | DoubleQuote 'I' 't' 'e' 'm' 'R' 'e' 'a' 'd' 'e' 'r' DoubleQuote /. makeToken($_ITEMREADER); ./
            | DoubleQuote 'R' 'e' 'a' 'd' 'e' 'r' 'C' 'o' 'n' 'f' 'i' 'g' DoubleQuote /. makeToken($_READERCONFIG); ./
            | DoubleQuote 'I' 'n' 'p' 'u' 't' 'T' 'y' 'p' 'e' DoubleQuote /. makeToken($_INPUTTYPE); ./
            | DoubleQuote 'C' 'S' 'V' 'H' 'e' 'a' 'd' 'e' 'r' 'L' 'o' 'c' 'a' 't' 'i' 'o' 'n' DoubleQuote /. makeToken($_CSVHEADERLOCATION); ./
            | DoubleQuote 'C' 'S' 'V' 'H' 'e' 'a' 'd' 'e' 'r' 's' DoubleQuote /. makeToken($_CSVHEADERS); ./
            | DoubleQuote 'M' 'a' 'x' 'I' 't' 'e' 'm' 's' DoubleQuote /. makeToken($_MAXITEMS); ./
            | DoubleQuote 'M' 'a' 'x' 'I' 't' 'e' 'm' 's' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_MAXITEMSPATH); ./
            | DoubleQuote 'N' 'e' 'x' 't' DoubleQuote /. makeToken($_NEXT); ./
            | DoubleQuote 'E' 'n' 'd' DoubleQuote /. makeToken($_END); ./
            | DoubleQuote 'C' 'a' 'u' 's' 'e' DoubleQuote /. makeToken($_CAUSE); ./
            | DoubleQuote 'C' 'a' 'u' 's' 'e' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_CAUSEPATH); ./
            | DoubleQuote 'E' 'r' 'r' 'o' 'r' DoubleQuote /. makeToken($_ERROR); ./
            | DoubleQuote 'E' 'r' 'r' 'o' 'r' 'P' 'a' 't' 'h' DoubleQuote /. makeToken($_ERRORPATH); ./
            | DoubleQuote 'R' 'e' 't' 'r' 'y' DoubleQuote /. makeToken($_RETRY); ./
            | DoubleQuote 'E' 'r' 'r' 'o' 'r' 'E' 'q' 'u' 'a' 'l' 's' DoubleQuote /. makeToken($_ERROREQUALS); ./
            | DoubleQuote 'I' 'n' 't' 'e' 'r' 'v' 'a' 'l' 'S' 'e' 'c' 'o' 'n' 'd' 's' DoubleQuote /. makeToken($_INTERVALSECONDS); ./
            | DoubleQuote 'M' 'a' 'x' 'A' 't' 't' 'e' 'm' 'p' 't' 's' DoubleQuote /. makeToken($_MAXATTEMPTS); ./
            | DoubleQuote 'B' 'a' 'c' 'k' 'o' 'f' 'f' 'R' 'a' 't' 'e' DoubleQuote /. makeToken($_BACKOFFRATE); ./
            | DoubleQuote 'M' 'a' 'x' 'D' 'e' 'l' 'a' 'y' 'S' 'e' 'c' 'o' 'n' 'd' 's' DoubleQuote /. makeToken($_MAXDELAYSECONDS); ./
            | DoubleQuote 'J' 'i' 't' 't' 'e' 'r' 'S' 't' 'r' 'a' 't' 'e' 'g' 'y' DoubleQuote /. makeToken($_JITTERSTRATEGY); ./
            | DoubleQuote 'F' 'U' 'L' 'L' DoubleQuote /. makeToken($_FULL); ./
            | DoubleQuote 'N' 'O' 'N' 'E' DoubleQuote /. makeToken($_NONE); ./
            | DoubleQuote 'C' 'a' 't' 'c' 'h' DoubleQuote /. makeToken($_CATCH); ./
            | identifier /. checkForKeyWord(); ./
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRING); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
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
            | '#' /. makeToken($_HASH); ./
            | '%' /. makeToken($_PERCENT); ./
            | '&' /. makeToken($_AMP); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '*' /. makeToken($_STAR); ./
            | '+' /. makeToken($_PLUS); ./
            | ',' /. makeToken($_COMMA); ./
            | '-' /. makeToken($_MINUS); ./
            | '.' /. makeToken($_DOT); ./
            | '/' /. makeToken($_SLASH); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMI); ./
            | '<' /. makeToken($_LT); ./
            | '=' /. makeToken($_EQ); ./
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
                | identifier '-' Letter
                | identifier '-' Digit

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

    SLBody -> NotDQ
            | SLBody NotDQ

    SLBodySQ -> NotSQ
              | SLBodySQ NotSQ

    NotDQ -> Letter | Digit | Space | HT | SingleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | '/' | n | r | t | b | f

    LineComment ::= '/' '/' LineCommentBody
    HashComment ::= Sharp HashCommentBody
    HashCommentBody -> $empty
                     | HashCommentBody NotNL
    LineCommentBody -> $empty
                     | LineCommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
