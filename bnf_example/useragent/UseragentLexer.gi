-- Useragent Lexer (LPG)
-- Ported from antlr/grammars-v4 useragent/useragent.g4

%Options list
%Options fp=UseragentLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.useragent
%options template=LexerTemplateF.gi
%options filter=UseragentKWLexer.gi

%Define
    $kw_lexer_class /.$UseragentKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    COMMENT
    SLASH
    DOT
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
    Token ::= COMMENT /. makeToken($_COMMENT); ./
            | STRING  /. makeToken($_STRING); ./
            | '/'     /. makeToken($_SLASH); ./
            | '.'     /. makeToken($_DOT); ./
            | white   /. skipToken(); ./

    STRING ::= LetterOrDigit
             | STRING LetterOrDigit

    LetterOrDigit -> Letter | Digit

    Letter -> LowerCaseLetter | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- COMMENT: '(' ~')'* ')'
    COMMENT ::= '(' CommentBody ')'

    CommentBody -> $empty
                 | CommentBody NotRP

    NotRP -> Letter
           | Digit
           | SpecialNotRP
           | Space
           | HT
           | FF
           | LF
           | CR
           | AfterASCII

    SpecialNotRP -> '+' | '-' | '/' | '(' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' |
                    '\' | '_'

    white -> WSChar
           | white WSChar

    -- Skip spaces and newlines only (tabs kept out of product tokens)
    WSChar -> Space | LF | CR
%End
