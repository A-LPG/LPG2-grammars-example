-- Scala2 Lexer (LPG) — curated Wave C subset for example1.scala

%Options list
%Options fp=Scala2Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.scala.scala2
%options template=LexerTemplateF.gi
%options filter=Scala2KWLexer.gi

%Define
    $kw_lexer_class /.$Scala2KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    LBRACE
    RBRACE
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
    COLON
    EQ
    DOT
    COMMA
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
    Token ::= '{'        /. makeToken($_LBRACE); ./
            | '}'        /. makeToken($_RBRACE); ./
            | '('        /. makeToken($_LPAREN); ./
            | ')'        /. makeToken($_RPAREN); ./
            | '['        /. makeToken($_LBRACKET); ./
            | ']'        /. makeToken($_RBRACKET); ./
            | ':'        /. makeToken($_COLON); ./
            | '='        /. makeToken($_EQ); ./
            | '.'        /. makeToken($_DOT); ./
            | ','        /. makeToken($_COMMA); ./
            | STRING     /. makeToken($_STRING); ./
            | identifier /. checkForKeyWord(); ./
            | comment    /. skipToken(); ./
            | white      /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    STRING ::= '"' SQBody '"'
    SQBody -> $empty | SQBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | AfterASCII | "'"
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | '[' | ']' |
                    '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '\'

    comment ::= '/' '/' LineBody
              | '/' '*' BlockBody '*' '/'
    LineBody -> $empty | LineBody NotNL
    NotNL -> Letter | Digit | SpecialNotNL | Space | HT | FF | AfterASCII | '"' | "'"
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | '[' | ']' |
                    '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '\'
    BlockBody -> $empty | BlockBody BlockChar
    BlockChar -> Letter | Digit | SpecialBlock | Space | HT | FF | LF | CR | AfterASCII | '/'
    SpecialBlock -> '+' | '-' | '(' | ')' | '!' | '@' | '`' | '~' | '%' | '&' | '^' |
                    ':' | ';' | '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' |
                    '<' | '>' | '=' | '#' | '$' | '_' | '\' | "'" | '"'

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
