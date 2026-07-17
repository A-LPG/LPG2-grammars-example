-- TinyMUD Lexer (LPG)
%Options list
%Options fp=TinymudLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.tinymud
%options template=LexerTemplateF.gi
%options filter=TinymudKWLexer.gi
%Define
    $kw_lexer_class /.$TinymudKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    STRING
    NUMBER
    EQ
    BANG
    EOL
    AT_BOOT
    AT_CHOWN
    AT_CREATE
    AT_DESCRIBE
    AT_DESC
    AT_DIG
    AT_DUMP
    AT_FAIL
    AT_FIND
    AT_FORCE
    AT_LINK
    AT_LOCK
    AT_NAME
    AT_NEWPASSWORD
    AT_OFAIL
    AT_OPEN
    AT_OSUCCESS
    AT_OSUCC
    AT_PASSWORD
    AT_PCREATE
    AT_SET
    AT_SHUTDOWN
    AT_STATS
    AT_SUCCESS
    AT_SUCC
    AT_TELEPORT
    AT_TOAD
    AT_UNLINK
    AT_UNLOCK
    AT_WALL
    DROP
    THROW
    EXAMINE
    GET
    TAKE
    GIVE
    GO
    GOTO
    MOVE
    GRIPE
    HELP
    INVENTORY
    INV
    KILL
    LOOK
    READ
    NEWS
    PAGE
    QUIT
    ROB
    SAY
    SCORE
    WHISPER
    WHO
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
    Token ::= '=' /. makeToken($_EQ); ./
            | '!' /. makeToken($_BANG); ./
            | EOL /. makeToken($_EOL); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | '@' 'n' 'e' 'w' 'p' 'a' 's' 's' 'w' 'o' 'r' 'd' /. makeToken($_AT_NEWPASSWORD); ./
            | '@' 'd' 'e' 's' 'c' 'r' 'i' 'b' 'e' /. makeToken($_AT_DESCRIBE); ./
            | '@' 'o' 's' 'u' 'c' 'c' 'e' 's' 's' /. makeToken($_AT_OSUCCESS); ./
            | '@' 'p' 'a' 's' 's' 'w' 'o' 'r' 'd' /. makeToken($_AT_PASSWORD); ./
            | '@' 's' 'h' 'u' 't' 'd' 'o' 'w' 'n' /. makeToken($_AT_SHUTDOWN); ./
            | '@' 't' 'e' 'l' 'e' 'p' 'o' 'r' 't' /. makeToken($_AT_TELEPORT); ./
            | '@' 'p' 'c' 'r' 'e' 'a' 't' 'e' /. makeToken($_AT_PCREATE); ./
            | '@' 's' 'u' 'c' 'c' 'e' 's' 's' /. makeToken($_AT_SUCCESS); ./
            | '@' 'c' 'r' 'e' 'a' 't' 'e' /. makeToken($_AT_CREATE); ./
            | '@' 'u' 'n' 'l' 'i' 'n' 'k' /. makeToken($_AT_UNLINK); ./
            | '@' 'u' 'n' 'l' 'o' 'c' 'k' /. makeToken($_AT_UNLOCK); ./
            | '@' 'c' 'h' 'o' 'w' 'n' /. makeToken($_AT_CHOWN); ./
            | '@' 'f' 'o' 'r' 'c' 'e' /. makeToken($_AT_FORCE); ./
            | '@' 'o' 'f' 'a' 'i' 'l' /. makeToken($_AT_OFAIL); ./
            | '@' 'o' 's' 'u' 'c' 'c' /. makeToken($_AT_OSUCC); ./
            | '@' 's' 't' 'a' 't' 's' /. makeToken($_AT_STATS); ./
            | '@' 'b' 'o' 'o' 't' /. makeToken($_AT_BOOT); ./
            | '@' 'd' 'e' 's' 'c' /. makeToken($_AT_DESC); ./
            | '@' 'd' 'u' 'm' 'p' /. makeToken($_AT_DUMP); ./
            | '@' 'f' 'a' 'i' 'l' /. makeToken($_AT_FAIL); ./
            | '@' 'f' 'i' 'n' 'd' /. makeToken($_AT_FIND); ./
            | '@' 'l' 'i' 'n' 'k' /. makeToken($_AT_LINK); ./
            | '@' 'l' 'o' 'c' 'k' /. makeToken($_AT_LOCK); ./
            | '@' 'n' 'a' 'm' 'e' /. makeToken($_AT_NAME); ./
            | '@' 'o' 'p' 'e' 'n' /. makeToken($_AT_OPEN); ./
            | '@' 's' 'u' 'c' 'c' /. makeToken($_AT_SUCC); ./
            | '@' 't' 'o' 'a' 'd' /. makeToken($_AT_TOAD); ./
            | '@' 'w' 'a' 'l' 'l' /. makeToken($_AT_WALL); ./
            | '@' 'd' 'i' 'g' /. makeToken($_AT_DIG); ./
            | '@' 's' 'e' 't' /. makeToken($_AT_SET); ./
            | STRING /. checkForKeyWord($_STRING); ./
            | white /. skipToken(); ./

    EOL ::= LF | CR LF | CR
    NUMBER ::= Digit | NUMBER Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- STRING: [a-zA-Z][a-zA-Z0-9_. %,']*
    STRING ::= Letter StrRest
    StrRest ::= %Empty | StrRest StrChar
    StrChar -> Letter | Digit | '.' | '_' | Space | '%' | ',' | "'"
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    white ::= Space | HT | FF | white Space | white HT | white FF
%End
