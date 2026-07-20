-- JamLexer (LPG)
-- Ported from antlr/grammars-v4 jam/jam.g4

%Options list
%Options fp=JamLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.jam
%options template=LexerTemplateF.gi
%options filter=JamKWLexer.gi

%Define
    $kw_lexer_class /.$JamKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    KEY
    REST
    SLASH
    EQ
    PCT
    NUM
    FLAT
    SHARP_ACC
    PLUS
    LBRACKET
    RBRACKET
    PIPE
    QUAL_M
    QUAL_CAP_M
    QUAL_P
    QUAL_D
    MAJ
    MIN
    DIM
    AUG
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
    Token ::= KEY /. makeToken($_KEY); ./
            | 'm' 'a' 'j' /. makeToken($_MAJ); ./
            | 'm' 'i' 'n' /. makeToken($_MIN); ./
            | 'd' 'i' 'm' /. makeToken($_DIM); ./
            | 'a' 'u' 'g' /. makeToken($_AUG); ./
            | 'm' /. makeToken($_QUAL_M); ./
            | 'M' /. makeToken($_QUAL_CAP_M); ./
            | 'P' /. makeToken($_QUAL_P); ./
            | 'd' /. makeToken($_QUAL_D); ./
            | 'b' /. makeToken($_FLAT); ./
            | '-' /. makeToken($_REST); ./
            | '/' /. makeToken($_SLASH); ./
            | '=' /. makeToken($_EQ); ./
            | '%' /. makeToken($_PCT); ./
            | '+' /. makeToken($_PLUS); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '|' /. makeToken($_PIPE); ./
            | comment /. skipToken(); ./
            | '#' /. makeToken($_SHARP_ACC); ./
            | NUM /. makeToken($_NUM); ./
            | white /. skipToken(); ./

    KEY ::= A | B | C | D | E | F | G

    NUM ::= Digit
          | NUM Digit

    comment ::= '#' NotNL CommentBody
    CommentBody -> $empty | CommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | FF | SpecialComment | '#'
    SpecialComment -> '.' | ',' | '-' | '_' | '(' | ')' | ':' | '/' | "'" | '+' | '=' | '!' | '?' | '@' | '$' | '%' | '&' | '*' | ';' | '<' | '>' | '[' | ']' | '{' | '}' | '|' | BackSlash | '`' | '~' | DoubleQuote

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
