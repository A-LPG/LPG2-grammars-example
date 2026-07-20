-- Domain Lexer (LPG)
-- Ported from antlr/grammars-v4 rfc1035/domain.g4

%Options list
%Options fp=DomainLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.rfc1035
%options template=LexerTemplateF.gi
%options filter=DomainKWLexer.gi

%Define
    $kw_lexer_class /.$DomainKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    LABEL
    DOT
    SPACE
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
    Token ::= LABEL /. makeToken($_LABEL); ./
            | '.'   /. makeToken($_DOT); ./
            | ' '   /. makeToken($_SPACE); ./

    -- LABEL ~= [A-Za-z]([A-Za-z0-9-]*[A-Za-z0-9])?
    LABEL ::= Letter
            | Letter LabelTail

    LabelTail ::= LetDig
                | LabelMid LetDig

    LabelMid ::= LetDigHyp
               | LabelMid LetDigHyp

    LetDigHyp -> LetDig | '-'

    LetDig -> Letter | Digit

    Letter -> LowerCaseLetter | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
%End
