-- Real lexer for PowerbuilderParser (not token-stream soup). Keywords via PowerbuilderKWLexer.
%Options list
%Options fp=PowerbuilderLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.powerbuilder
%options template=LexerTemplateF.gi
%options filter=PowerbuilderKWLexer.gi

%Define
    $kw_lexer_class /.$PowerbuilderKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ALIAS
    AMP
    AMPEQ
    AND
    ANDAND
    ANY
    ARROW
    ARROWSTAR
    AT
    ATEQ
    AUTOINSTANTIATE
    BACKSLASH
    BACKTICK
    BANG
    BITCLEAR
    BLOB
    BOOLEAN
    BYTE
    CALL
    CARAT
    CARET
    CARETEQ
    CASE
    CATCH
    CHAR
    CHARACTER
    CHAR_LITERAL
    CHOOSE
    CLOSE
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    COMMIT
    CONNECT
    CONSTANT
    CONTINUE
    CREATE
    CURSOR
    DATE
    DATETIME
    DATE_TYPE
    DEC
    DECIMAL
    DECLARE
    DELETE
    DESCRIBE
    DESCRIPTOR
    DESTROY
    DISCONNECT
    DIV
    DIVEQ
    DO
    DOLLAR
    DOT
    DOTDOT
    DOTDOTDOT
    DOTSTAR
    DOUBLE
    DQUOTE
    DQUOTED_STRING
    DYNAMIC
    ELLIPSIS
    ELSE
    ELSEIF
    END
    ENUM
    EQ
    EQEQ
    EQEQEQ
    EVENT
    EXECUTE
    EXIT
    FALSE
    FATARROW
    FETCH
    FINALLY
    FOR
    FORWARD
    FROM
    FUNCTION
    GLOBAL
    GOTO
    GT
    GTE
    GTEQ
    GTLT
    HALT
    HASH
    ID
    IDENTIFIER
    IF
    IMMEDIATE
    INDIRECT
    INSERT
    INT
    INTEGER
    INTO
    IS
    LBRACE
    LBRACKET
    LCURLY
    LIBRARY
    LOCAL
    LONG
    LONGLONG
    LOOP
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTE
    LTEQ
    LTGT
    MINUS
    MINUSEQ
    MINUSMINUS
    MULT
    MULTEQ
    NEXT
    NOT
    NOTEQ
    NOTEQEQ
    NULL_
    NUMBER
    ON
    OPEN
    OR
    OROR
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    POST
    PREPARE
    PRIVATE
    PRIVATEREAD
    PRIVATEWRITE
    PROCEDURE
    PROTECTED
    PROTECTEDREAD
    PROTECTEDWRITE
    PROTOTYPES
    PUBLIC
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QUOTED_STRING
    RBRACE
    RBRACKET
    RCURLY
    READONLY
    REAL
    RECEIVE
    REF
    RELEASE
    RETURN
    ROLLBACK
    RPAREN
    RPCFUNC
    RSHIFT
    RSHIFTEQ
    SELECT
    SELECTBLOB
    SEMI
    SET
    SHARED
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SQLCA
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STEP
    STRING
    SUBROUTINE
    SUPER
    SYSTEM
    THEN
    THROW
    THROWS
    TICK
    TILDE
    TIME
    TIME_TYPE
    TO
    TRIGGER
    TRUE
    TRY
    TYPE
    UINT
    ULONG
    UNDERSCORE
    UNSIGNEDINTEGER
    UNSIGNEDLONG
    UNTIL
    UPDATE
    UPDATEBLOB
    URSHIFT
    URSHIFTEQ
    USING
    VALUES
    VARIABLES
    WHERE
    WHILE
    WINDOW
    WITHIN
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
    Token ::= 'A' 'U' 'T' 'O' 'I' 'N' 'S' 'T' 'A' 'N' 'T' 'I' 'A' 'T' 'E' /. makeToken($_AUTOINSTANTIATE); ./
            | 'U' 'N' 'S' 'I' 'G' 'N' 'E' 'D' 'I' 'N' 'T' 'E' 'G' 'E' 'R' /. makeToken($_UNSIGNEDINTEGER); ./
            | 'P' 'R' 'O' 'T' 'E' 'C' 'T' 'E' 'D' 'W' 'R' 'I' 'T' 'E' /. makeToken($_PROTECTEDWRITE); ./
            | 'P' 'R' 'O' 'T' 'E' 'C' 'T' 'E' 'D' 'R' 'E' 'A' 'D' /. makeToken($_PROTECTEDREAD); ./
            | 'P' 'R' 'I' 'V' 'A' 'T' 'E' 'W' 'R' 'I' 'T' 'E' /. makeToken($_PRIVATEWRITE); ./
            | 'U' 'N' 'S' 'I' 'G' 'N' 'E' 'D' 'L' 'O' 'N' 'G' /. makeToken($_UNSIGNEDLONG); ./
            | 'P' 'R' 'I' 'V' 'A' 'T' 'E' 'R' 'E' 'A' 'D' /. makeToken($_PRIVATEREAD); ./
            | 'D' 'E' 'S' 'C' 'R' 'I' 'P' 'T' 'O' 'R' /. makeToken($_DESCRIPTOR); ./
            | 'D' 'I' 'S' 'C' 'O' 'N' 'N' 'E' 'C' 'T' /. makeToken($_DISCONNECT); ./
            | 'P' 'R' 'O' 'T' 'O' 'T' 'Y' 'P' 'E' 'S' /. makeToken($_PROTOTYPES); ./
            | 'S' 'E' 'L' 'E' 'C' 'T' 'B' 'L' 'O' 'B' /. makeToken($_SELECTBLOB); ./
            | 'S' 'U' 'B' 'R' 'O' 'U' 'T' 'I' 'N' 'E' /. makeToken($_SUBROUTINE); ./
            | 'U' 'P' 'D' 'A' 'T' 'E' 'B' 'L' 'O' 'B' /. makeToken($_UPDATEBLOB); ./
            | 'C' 'H' 'A' 'R' 'A' 'C' 'T' 'E' 'R' /. makeToken($_CHARACTER); ./
            | 'I' 'M' 'M' 'E' 'D' 'I' 'A' 'T' 'E' /. makeToken($_IMMEDIATE); ./
            | 'P' 'R' 'O' 'C' 'E' 'D' 'U' 'R' 'E' /. makeToken($_PROCEDURE); ./
            | 'P' 'R' 'O' 'T' 'E' 'C' 'T' 'E' 'D' /. makeToken($_PROTECTED); ./
            | 'V' 'A' 'R' 'I' 'A' 'B' 'L' 'E' 'S' /. makeToken($_VARIABLES); ./
            | 'C' 'O' 'N' 'S' 'T' 'A' 'N' 'T' /. makeToken($_CONSTANT); ./
            | 'C' 'O' 'N' 'T' 'I' 'N' 'U' 'E' /. makeToken($_CONTINUE); ./
            | 'D' 'A' 'T' 'E' 'T' 'I' 'M' 'E' /. makeToken($_DATETIME); ./
            | 'D' 'E' 'S' 'C' 'R' 'I' 'B' 'E' /. makeToken($_DESCRIBE); ./
            | 'F' 'U' 'N' 'C' 'T' 'I' 'O' 'N' /. makeToken($_FUNCTION); ./
            | 'I' 'N' 'D' 'I' 'R' 'E' 'C' 'T' /. makeToken($_INDIRECT); ./
            | 'L' 'O' 'N' 'G' 'L' 'O' 'N' 'G' /. makeToken($_LONGLONG); ./
            | 'R' 'E' 'A' 'D' 'O' 'N' 'L' 'Y' /. makeToken($_READONLY); ./
            | 'R' 'O' 'L' 'L' 'B' 'A' 'C' 'K' /. makeToken($_ROLLBACK); ./
            | 'B' 'O' 'O' 'L' 'E' 'A' 'N' /. makeToken($_BOOLEAN); ./
            | 'C' 'O' 'N' 'N' 'E' 'C' 'T' /. makeToken($_CONNECT); ./
            | 'D' 'E' 'C' 'I' 'M' 'A' 'L' /. makeToken($_DECIMAL); ./
            | 'D' 'E' 'C' 'L' 'A' 'R' 'E' /. makeToken($_DECLARE); ./
            | 'D' 'E' 'S' 'T' 'R' 'O' 'Y' /. makeToken($_DESTROY); ./
            | 'D' 'Y' 'N' 'A' 'M' 'I' 'C' /. makeToken($_DYNAMIC); ./
            | 'E' 'X' 'E' 'C' 'U' 'T' 'E' /. makeToken($_EXECUTE); ./
            | 'F' 'I' 'N' 'A' 'L' 'L' 'Y' /. makeToken($_FINALLY); ./
            | 'F' 'O' 'R' 'W' 'A' 'R' 'D' /. makeToken($_FORWARD); ./
            | 'I' 'N' 'T' 'E' 'G' 'E' 'R' /. makeToken($_INTEGER); ./
            | 'L' 'I' 'B' 'R' 'A' 'R' 'Y' /. makeToken($_LIBRARY); ./
            | 'P' 'R' 'E' 'P' 'A' 'R' 'E' /. makeToken($_PREPARE); ./
            | 'P' 'R' 'I' 'V' 'A' 'T' 'E' /. makeToken($_PRIVATE); ./
            | 'R' 'E' 'L' 'E' 'A' 'S' 'E' /. makeToken($_RELEASE); ./
            | 'R' 'P' 'C' 'F' 'U' 'N' 'C' /. makeToken($_RPCFUNC); ./
            | 'T' 'R' 'I' 'G' 'G' 'E' 'R' /. makeToken($_TRIGGER); ./
            | 'C' 'H' 'O' 'O' 'S' 'E' /. makeToken($_CHOOSE); ./
            | 'C' 'O' 'M' 'M' 'I' 'T' /. makeToken($_COMMIT); ./
            | 'C' 'R' 'E' 'A' 'T' 'E' /. makeToken($_CREATE); ./
            | 'C' 'U' 'R' 'S' 'O' 'R' /. makeToken($_CURSOR); ./
            | 'D' 'E' 'L' 'E' 'T' 'E' /. makeToken($_DELETE); ./
            | 'D' 'O' 'U' 'B' 'L' 'E' /. makeToken($_DOUBLE); ./
            | 'E' 'L' 'S' 'E' 'I' 'F' /. makeToken($_ELSEIF); ./
            | 'G' 'L' 'O' 'B' 'A' 'L' /. makeToken($_GLOBAL); ./
            | 'I' 'N' 'S' 'E' 'R' 'T' /. makeToken($_INSERT); ./
            | 'P' 'U' 'B' 'L' 'I' 'C' /. makeToken($_PUBLIC); ./
            | 'R' 'E' 'T' 'U' 'R' 'N' /. makeToken($_RETURN); ./
            | 'S' 'E' 'L' 'E' 'C' 'T' /. makeToken($_SELECT); ./
            | 'S' 'H' 'A' 'R' 'E' 'D' /. makeToken($_SHARED); ./
            | 'S' 'Y' 'S' 'T' 'E' 'M' /. makeToken($_SYSTEM); ./
            | 'T' 'H' 'R' 'O' 'W' 'S' /. makeToken($_THROWS); ./
            | 'U' 'P' 'D' 'A' 'T' 'E' /. makeToken($_UPDATE); ./
            | 'V' 'A' 'L' 'U' 'E' 'S' /. makeToken($_VALUES); ./
            | 'W' 'I' 'N' 'D' 'O' 'W' /. makeToken($_WINDOW); ./
            | 'W' 'I' 'T' 'H' 'I' 'N' /. makeToken($_WITHIN); ./
            | 'A' 'L' 'I' 'A' 'S' /. makeToken($_ALIAS); ./
            | 'C' 'A' 'T' 'C' 'H' /. makeToken($_CATCH); ./
            | 'C' 'L' 'O' 'S' 'E' /. makeToken($_CLOSE); ./
            | 'E' 'V' 'E' 'N' 'T' /. makeToken($_EVENT); ./
            | 'F' 'A' 'L' 'S' 'E' /. makeToken($_FALSE); ./
            | 'F' 'E' 'T' 'C' 'H' /. makeToken($_FETCH); ./
            | 'L' 'O' 'C' 'A' 'L' /. makeToken($_LOCAL); ./
            | 'S' 'Q' 'L' 'C' 'A' /. makeToken($_SQLCA); ./
            | 'S' 'U' 'P' 'E' 'R' /. makeToken($_SUPER); ./
            | 'T' 'H' 'R' 'O' 'W' /. makeToken($_THROW); ./
            | 'U' 'L' 'O' 'N' 'G' /. makeToken($_ULONG); ./
            | 'U' 'N' 'T' 'I' 'L' /. makeToken($_UNTIL); ./
            | 'U' 'S' 'I' 'N' 'G' /. makeToken($_USING); ./
            | 'W' 'H' 'E' 'R' 'E' /. makeToken($_WHERE); ./
            | 'W' 'H' 'I' 'L' 'E' /. makeToken($_WHILE); ./
            | 'B' 'L' 'O' 'B' /. makeToken($_BLOB); ./
            | 'B' 'Y' 'T' 'E' /. makeToken($_BYTE); ./
            | 'C' 'A' 'L' 'L' /. makeToken($_CALL); ./
            | 'C' 'A' 'S' 'E' /. makeToken($_CASE); ./
            | 'C' 'H' 'A' 'R' /. makeToken($_CHAR); ./
            | 'D' 'A' 'T' 'E' /. makeToken($_DATE_TYPE); ./
            | 'E' 'L' 'S' 'E' /. makeToken($_ELSE); ./
            | 'E' 'X' 'I' 'T' /. makeToken($_EXIT); ./
            | 'F' 'R' 'O' 'M' /. makeToken($_FROM); ./
            | 'G' 'O' 'T' 'O' /. makeToken($_GOTO); ./
            | 'H' 'A' 'L' 'T' /. makeToken($_HALT); ./
            | 'I' 'N' 'T' 'O' /. makeToken($_INTO); ./
            | 'L' 'O' 'N' 'G' /. makeToken($_LONG); ./
            | 'L' 'O' 'O' 'P' /. makeToken($_LOOP); ./
            | 'N' 'E' 'X' 'T' /. makeToken($_NEXT); ./
            | 'N' 'U' 'L' 'L' /. makeToken($_NULL_); ./
            | 'O' 'P' 'E' 'N' /. makeToken($_OPEN); ./
            | 'P' 'O' 'S' 'T' /. makeToken($_POST); ./
            | 'R' 'E' 'A' 'L' /. makeToken($_REAL); ./
            | 'S' 'T' 'E' 'P' /. makeToken($_STEP); ./
            | 'T' 'H' 'E' 'N' /. makeToken($_THEN); ./
            | 'T' 'I' 'M' 'E' /. makeToken($_TIME_TYPE); ./
            | 'T' 'R' 'U' 'E' /. makeToken($_TRUE); ./
            | 'T' 'Y' 'P' 'E' /. makeToken($_TYPE); ./
            | 'U' 'I' 'N' 'T' /. makeToken($_UINT); ./
            | 'A' 'N' 'D' /. makeToken($_AND); ./
            | 'A' 'N' 'Y' /. makeToken($_ANY); ./
            | 'D' 'E' 'C' /. makeToken($_DEC); ./
            | '.' '.' '.' /. makeToken($_DOTDOTDOT); ./
            | DoubleQuote Tilde Tilde /. makeToken($_DQUOTED_STRING); ./
            | Tilde DoubleQuote DoubleQuote /. makeToken($_DQUOTED_STRING); ./
            | 'E' 'N' 'D' /. makeToken($_END); ./
            | 'F' 'O' 'R' /. makeToken($_FOR); ./
            | 'I' 'N' 'T' /. makeToken($_INT); ./
            | 'N' 'O' 'T' /. makeToken($_NOT); ./
            | Tilde SingleQuote SingleQuote /. makeToken($_QUOTED_STRING); ./
            | 'R' 'E' 'F' /. makeToken($_REF); ./
            | 'S' 'E' 'T' /. makeToken($_SET); ./
            | Colon Colon '.' /. makeToken($_TIME); ./
            | 'T' 'R' 'Y' /. makeToken($_TRY); ./
            | Minus Minus /. makeToken($_DATE); ./
            | Slash Equal /. makeToken($_DIVEQ); ./
            | 'D' 'O' /. makeToken($_DO); ./
            | GreaterThan Equal /. makeToken($_GTE); ./
            | LessThan GreaterThan /. makeToken($_GTLT); ./
            | 'I' 'F' /. makeToken($_IF); ./
            | 'I' 'S' /. makeToken($_IS); ./
            | LessThan Equal /. makeToken($_LTE); ./
            | Star Equal /. makeToken($_MULTEQ); ./
            | 'O' 'N' /. makeToken($_ON); ./
            | 'O' 'R' /. makeToken($_OR); ./
            | SingleQuote SingleQuote /. makeToken($_QUOTED_STRING); ./
            | 'T' 'O' /. makeToken($_TO); ./
            | Caret /. makeToken($_CARAT); ./
            | Slash /. makeToken($_DIV); ./
            | DoubleQuote /. makeToken($_DQUOTED_STRING); ./
            | '!' /. makeToken($_ENUM); ./
            | '{' /. makeToken($_LCURLY); ./
            | Star /. makeToken($_MULT); ./
            | '}' /. makeToken($_RCURLY); ./
            | BackQuote /. makeToken($_TICK); ./
            | LeftParen /. makeToken($_LPAREN); ./
            | RightParen /. makeToken($_RPAREN); ./
            | Comma /. makeToken($_COMMA); ./
            | SemiColon /. makeToken($_SEMI); ./
            | Colon /. makeToken($_COLON); ./
            | Equal /. makeToken($_EQ); ./
            | Plus /. makeToken($_PLUS); ./
            | Minus /. makeToken($_MINUS); ./
            | LessThan /. makeToken($_LT); ./
            | GreaterThan /. makeToken($_GT); ./
            | _ /. makeToken($_UNDERSCORE); ./
            | identifier /. checkForKeyWord(); ./
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRING); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
            | white /. skipToken(); ./

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

    SLBody -> $empty
            | SLBody NotDQ

    SLBodySQ -> $empty
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
