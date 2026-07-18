-- XSD Regex Lexer (LPG) — character-level port of grammars-v4 xsd-regex/regexLexer.g4
-- Modes collapsed: QuantExact/XmlChar/Char → REGEXCHAR; nested group tokens share base forms.
-- Not generic IDENTIFIER/NUMBER token-stream soup.

%Options list
%Options fp=XsdRegexLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.xsd_regex
%options template=LexerTemplateF.gi
%options filter=XsdRegexKWLexer.gi

%Define
    $kw_lexer_class /.$XsdRegexKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    REGEXCHAR
    PIPE
    PLUS
    QUESTION
    STAR
    WildcardEsc
    LPAREN
    RPAREN
    StartQuantity
    EndQuantity
    COMMA
    SingleCharEsc
    MultiCharEsc
    CatEsc
    ComplEsc
    NegCharGroup
    PosCharGroup
    NestedSingleCharEsc
    NestedMultiCharEsc
    NestedCatEsc
    NestedComplEsc
    NestedNegCharGroup
    NestedPosCharGroup
    EndCharGroup
    DASH
    EndCategory
    IsCategory
    IsBlock
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
    Token ::= alnum /. makeToken($_REGEXCHAR); ./
            | '_' /. makeToken($_REGEXCHAR); ./
            | BackSlash esc_letter /. makeToken($_SingleCharEsc); ./
            | BackSlash multi_esc /. makeToken($_MultiCharEsc); ./
            | BackSlash 'p' '{' /. makeToken($_CatEsc); ./
            | BackSlash 'P' '{' /. makeToken($_ComplEsc); ./
            | '[' '^' /. makeToken($_NegCharGroup); ./
            | '[' /. makeToken($_PosCharGroup); ./
            | ']' /. makeToken($_EndCharGroup); ./
            | '{' /. makeToken($_StartQuantity); ./
            | '}' /. makeToken($_EndQuantity); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '|' /. makeToken($_PIPE); ./
            | '+' /. makeToken($_PLUS); ./
            | '*' /. makeToken($_STAR); ./
            | '?' /. makeToken($_QUESTION); ./
            | '.' /. makeToken($_WildcardEsc); ./
            | '-' /. makeToken($_DASH); ./
            | ',' /. makeToken($_COMMA); ./
            | white /. skipToken(); ./

    alnum ::= letter | digit

    letter ::= a | b | c | d | e | f | g | h | i | j | k | l | m |
               n | o | p | q | r | s | t | u | v | w | x | y | z |
               A | B | C | D | E | F | G | H | I | J | K | L | M |
               N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    digit ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    esc_letter ::= 'n' | 'r' | 't' | BackSlash | '|' | '.' | '?' | '*' | '+'
                 | '(' | ')' | '{' | '}' | '-' | '[' | ']' | '^'

    multi_esc ::= 's' | 'S' | 'i' | 'I' | 'c' | 'C' | 'd' | 'D' | 'w' | 'W'

    white -> Space | HT | LF | CR | FF | white Space | white HT | white LF | white CR | white FF
%End
