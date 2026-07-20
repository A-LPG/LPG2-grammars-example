-- MAML Lexer (LPG)
-- Ported from antlr/grammars-v4 maml/MAML.g4
-- Newlines are significant separators; spaces/tabs and #comments are skipped.

%Options list
%Options fp=MamlLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.maml
%options template=LexerTemplateF.gi
%options filter=MamlKWLexer.gi

%Define
    $kw_lexer_class /.$MamlKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    RAW_STRING
    NUMBER
    TRUE
    FALSE
    NULLLITERAL
    NL
    COLON
    COMMA
    LBRACE
    RBRACE
    LBRACKET
    RBRACKET
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
    Token ::= comment      /. skipToken(); ./
            | rawString    /. makeToken($_RAW_STRING); ./
            | string       /. makeToken($_STRING); ./
            | number       /. makeToken($_NUMBER); ./
            | identifier   /. checkForKeyWord(); ./
            | ':'          /. makeToken($_COLON); ./
            | ','          /. makeToken($_COMMA); ./
            | '{'          /. makeToken($_LBRACE); ./
            | '}'          /. makeToken($_RBRACE); ./
            | '['          /. makeToken($_LBRACKET); ./
            | ']'          /. makeToken($_RBRACKET); ./
            | newlines     /. makeToken($_NL); ./
            | hspace       /. skipToken(); ./

    comment ::= '#' CommentBody
    CommentBody -> $empty | CommentBody NotNL
    NotNL -> Letter | Digit | Special | Space | HT | FF | AfterASCII | '_'

    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
               '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
               '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'

    rawString ::= '"' '"' '"' RawBody '"' '"' '"'
    RawBody ::= NotDQ
              | RawBody NotDQ
              | RawBody '"' NotDQ
              | RawBody '"' '"' NotDQ
    -- NotDQ also allows newlines inside raw strings
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | LF | CR | AfterASCII | '_'
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'

    string ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQPlain
    NotDQPlain -> Letter | Digit | SpecialNotDQ | Space | HT | FF | AfterASCII | '_'
                | Escape
    Escape ::= '\' EscapeChar
    EscapeChar -> DoubleQuote | BackSlash | '/' | n | t | r
                | 'u' '{' Hex HexOpt '}'
    HexOpt -> $empty | Hex | Hex Hex | Hex Hex Hex | Hex Hex Hex Hex | Hex Hex Hex Hex Hex
    Hex -> Digit | a | b | c | d | e | f | A | B | C | D | E | F

    -- Prefer NUMBER over digit-leading IDENTIFIER via longer/earlier match
    number ::= OptMinus IntPart OptFrac OptExp

    OptMinus -> $empty
              | '-'

    IntPart ::= 0
              | NonZero DigitsOpt

    NonZero -> 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    DigitsOpt -> $empty
               | Digits

    Digits -> Digit
            | Digits Digit

    OptFrac -> $empty
             | '.' Digits

    OptExp -> $empty
            | Exp

    Exp ::= LetterEe OptSign Digits

    LetterEe -> e | E

    OptSign -> $empty
             | '+'
             | '-'

    -- IDENTIFIER keys: must start with letter/_/- (digits-only keys use NUMBER)
    identifier ::= IdStart IdRestOpt
    IdStart -> Letter | '_' | '-'
    IdRestOpt -> $empty | IdRest
    IdRest -> IdChar | IdRest IdChar
    IdChar -> Letter | Digit | '_' | '-'

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    newlines ::= Eol
               | newlines Eol
    Eol ::= LF | CR | CR LF

    hspace -> Space | HT | hspace Space | hspace HT
%End
