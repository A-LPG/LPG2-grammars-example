-- GuidoLexer (LPG)
%Options list
%Options fp=GuidoLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.guido
%options template=LexerTemplateF.gi
%options filter=GuidoKWLexer.gi
%Define
    $kw_lexer_class /.$GuidoKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NUMBER
    STRING
    STRINGLITERAL
    TAGSTART
    REST
    LBRACE
    RBRACE
    LBRACKET
    RBRACKET
    LPAREN
    RPAREN
    LT
    GT
    COMMA
    SHARP
    AMP
    STAR
    SLASH
    DOT
    PLUS
    MINUS
    EQUAL
    TITLE
    TEMPO
    CLEF
    METER
    SLUR
    KEY
    BARFORMAT
    STAFF
    REPEATEND
    T
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

    Token ::= BackSlash /. makeToken($_TAGSTART); ./
            | '_' /. makeToken($_REST); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | ',' /. makeToken($_COMMA); ./
            | '#' /. makeToken($_SHARP); ./
            | '&' /. makeToken($_AMP); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '.' /. makeToken($_DOT); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '=' /. makeToken($_EQUAL); ./
            | 't' 'i' 't' 'l' 'e' /. makeToken($_TITLE); ./
            | 't' 'e' 'm' 'p' 'o' /. makeToken($_TEMPO); ./
            | 'c' 'l' 'e' 'f' /. makeToken($_CLEF); ./
            | 'm' 'e' 't' 'e' 'r' /. makeToken($_METER); ./
            | 's' 'l' 'u' 'r' /. makeToken($_SLUR); ./
            | 'k' 'e' 'y' /. makeToken($_KEY); ./
            | 'b' 'a' 'r' 'F' 'o' 'r' 'm' 'a' 't' /. makeToken($_BARFORMAT); ./
            | 's' 't' 'a' 'f' 'f' /. makeToken($_STAFF); ./
            | 'r' 'e' 'p' 'e' 'a' 't' 'E' 'n' 'd' /. makeToken($_REPEATEND); ./
            | 't' /. makeToken($_T); ./
            | STRINGLITERAL /. makeToken($_STRINGLITERAL); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | STRING /. makeToken($_STRING); ./
            | comment /. skipToken(); ./
            | white /. skipToken(); ./


    STRINGLITERAL ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    NUMBER ::= Digit | NUMBER Digit
    STRING ::= Letter | STRING Letter

    comment ::= '%' CommentBody
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | SpecialNotNL | Space | HT | FF
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '"'

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
