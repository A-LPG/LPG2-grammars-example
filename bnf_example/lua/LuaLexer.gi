-- Lua Lexer (LPG)
-- Ported from antlr/grammars-v4 lua for parse-level examples.

%Options list
%Options fp=LuaLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.lua
%options template=LexerTemplateF.gi
%options filter=LuaKWLexer.gi

%Define
    $kw_lexer_class /.$LuaKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NAME
    NORMALSTRING
    CHARSTRING
    LONGSTRING
    INT
    FLOAT
    HEX
    HEX_FLOAT
    SEMI
    EQ
    COMMA
    LT
    GT
    CC
    DOT
    SQUIG
    MINUS
    POUND
    OP
    CP
    LL
    GG
    AMP
    SS
    PER
    COL
    LE
    GE
    PLUS
    STAR
    OCU
    CCU
    OB
    CB
    EE
    DD
    PIPE
    CARET
    SLASH
    DDD
    SQEQ
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
    Token ::= ';'           /. makeToken($_SEMI); ./
            | '=' '='       /. makeToken($_EE); ./
            | '='           /. makeToken($_EQ); ./
            | ','           /. makeToken($_COMMA); ./
            | '<' '='       /. makeToken($_LE); ./
            | '<' '<'       /. makeToken($_LL); ./
            | '<'           /. makeToken($_LT); ./
            | '>' '='       /. makeToken($_GE); ./
            | '>' '>'       /. makeToken($_GG); ./
            | '>'           /. makeToken($_GT); ./
            | ':' ':'       /. makeToken($_CC); ./
            | ':'           /. makeToken($_COL); ./
            | '.' '.' '.'   /. makeToken($_DDD); ./
            | '.' '.'       /. makeToken($_DD); ./
            | '.'           /. makeToken($_DOT); ./
            | '~' '='       /. makeToken($_SQEQ); ./
            | '~'           /. makeToken($_SQUIG); ./
            | '-' '-' LongBracket0 /. skipToken(); ./
            | '-' '-' LongBracket3 /. skipToken(); ./
            | '-' '-' NotLB CommentTail /. skipToken(); ./
            | '-'           /. makeToken($_MINUS); ./
            | '#'           /. makeToken($_POUND); ./
            | '('           /. makeToken($_OP); ./
            | ')'           /. makeToken($_CP); ./
            | '&'           /. makeToken($_AMP); ./
            | '/' '/'       /. makeToken($_SS); ./
            | '/'           /. makeToken($_SLASH); ./
            | '%'           /. makeToken($_PER); ./
            | '+'           /. makeToken($_PLUS); ./
            | '*'           /. makeToken($_STAR); ./
            | '{'           /. makeToken($_OCU); ./
            | '}'           /. makeToken($_CCU); ./
            | LongBracket0  /. makeToken($_LONGSTRING); ./
            | LongBracket3  /. makeToken($_LONGSTRING); ./
            | '['           /. makeToken($_OB); ./
            | ']'           /. makeToken($_CB); ./
            | '|'           /. makeToken($_PIPE); ./
            | '^'           /. makeToken($_CARET); ./
            | NORMALSTRING  /. makeToken($_NORMALSTRING); ./
            | CHARSTRING    /. makeToken($_CHARSTRING); ./
            | HEX_FLOAT     /. makeToken($_HEX_FLOAT); ./
            | HEX           /. makeToken($_HEX); ./
            | FLOAT         /. makeToken($_FLOAT); ./
            | INT           /. makeToken($_INT); ./
            | identifier    /. checkForKeyWord($_NAME); ./
            | white         /. skipToken(); ./
            | shebang       /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    NotLB -> Letter | Digit | SpecialNotLB | Space | HT | FF | '"' | "'" | AfterASCII
    SpecialNotLB -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | ']' | '?' |
                    ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '\'

    NotNL -> Letter | Digit | SpecialNotNL | Space | HT | FF | AfterASCII |
             '"' | "'" | '[' | ']'
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | '?' |
                    ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '\'

    -- Long brackets level 0: [[ ... ]]
    LongBracket0 ::= '[' '[' LongBody0 ']' ']'
    LongBody0 -> $empty | LongBody0 LongChar0
    LongChar0 -> NotRB | ']' NotRB
    NotRB -> Letter | Digit | SpecialNotRB | Space | HT | FF | LF | CR | AfterASCII |
             '"' | "'" | '['
    SpecialNotRB -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | '?' |
                    ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '\'

    -- Long brackets level 3 (empty body covers curated example 3741.lua)
    LongBracket3 ::= '[' '=' '=' '=' '[' ']' '=' '=' '=' ']'

    NORMALSTRING ::= '"' DQBody '"'
    DQBody -> $empty | DQBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | EscapeSequence | AfterASCII
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    CHARSTRING ::= "'" SQBody "'"
    SQBody -> $empty | SQBody NotSQ
    NotSQ -> Letter | Digit | SpecialNotSQ | Space | HT | FF | EscapeSequence | AfterASCII
    SpecialNotSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    EscapeSequence ::= '\' EscapeChar
    EscapeChar ::= DoubleQuote | SingleQuote | BackSlash | Slash |
                   a | b | f | n | r | t | v | z | '|' | '#' | '$' |
                   LF | CR | Digit | Digit Digit | Digit Digit Digit |
                   x HexDigit HexDigit |
                   u '{' HexDigits '}'

    HexDigits ::= HexDigit | HexDigits HexDigit
    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F

    INT ::= Digits
    Digits ::= Digit | Digits Digit

    HEX ::= 0 Xx HexDigits
    Xx -> x | X

    FLOAT ::= Digits '.' DigitsOpt ExpOpt
            | '.' Digits ExpOpt
            | Digits Exp

    DigitsOpt -> $empty | Digits
    ExpOpt -> $empty | Exp
    Exp ::= LetterEe OptSign Digits
    LetterEe -> e | E
    OptSign -> $empty | '+' | '-'

    HEX_FLOAT ::= 0 Xx HexDigits '.' HexDigitsOpt HexExpOpt
                | 0 Xx '.' HexDigits HexExpOpt
                | 0 Xx HexDigits HexExp
    HexDigitsOpt -> $empty | HexDigits
    HexExpOpt -> $empty | HexExp
    HexExp ::= LetterPp OptSign Digits
    LetterPp -> p | P

    CommentTail -> $empty | CommentTail NotNL

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

    shebang ::= '#' OptBang CommentTail
    OptBang -> $empty | '!'
%End

