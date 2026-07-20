-- Brainflak Lexer (LPG)
-- Ported from antlr/grammars-v4 esolang/brainflak/brainflak.g4

%Options list
%Options fp=BrainflakLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.brainflak
%options template=LexerTemplateF.gi
%options filter=BrainflakKWLexer.gi

%Define
    $kw_lexer_class /.$BrainflakKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    LPAREN
    RPAREN
    GT
    LT
    LBRACE
    RBRACE
    LBRACK
    RBRACK
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
    Token ::= '('        /. makeToken($_LPAREN); ./
            | ')'        /. makeToken($_RPAREN); ./
            | '>'        /. makeToken($_GT); ./
            | '<'        /. makeToken($_LT); ./
            | '{'       /. makeToken($_LBRACE); ./
            | '}'       /. makeToken($_RBRACE); ./
            | '['        /. makeToken($_LBRACK); ./
            | ']'        /. makeToken($_RBRACK); ./
            | SkipChar   /. skipToken(); ./

    SkipChar -> Letter | Digit | SpecialSkip | Space | LF | CR | HT | FF
              | CtlCharNotWS | AfterASCII


    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    SpecialSkip -> '!' | '@' | '`' | '~' | '%' | '&' | '^' | ':' | ';' | "'" | '"'
                 | '|' | '?' | '/' | '*' | '=' | '+' | '-' | '.' | ',' | '#' | '$' | '\' | '_'
%End
