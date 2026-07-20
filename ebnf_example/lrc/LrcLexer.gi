-- LRC lyrics lexer (port of grammars-v4 lrc/lrcLexer.g4)
%Options list
%Options fp=LrcLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.lrc
%options template=LexerTemplateF.gi
%options filter=LrcKWLexer.gi

%Define
    $kw_lexer_class /.$LrcKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    LB
    RB
    TIMESTAMP
    TEXT
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
    Token ::= LeftBracket /. makeToken($_LB); ./
            | RightBracket /. makeToken($_RB); ./
            | TimeStampTok /. makeToken($_TIMESTAMP); ./
            | TEXT /. makeToken($_TEXT); ./
            | white /. skipToken(); ./

    TimeStampTok ::= Digits Colon Digits Dot Digits

    Digits ::= Digit Digit
             | Digits Digit

    TEXT ::= TextChar
           | TEXT TextChar

    TextChar -> Letter
              | Digit
              | SpecialText
              | Space
              | HT

    Letter -> LowerCaseLetter | UpperCaseLetter | Underscore
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    Underscore -> _

    SpecialText -> PlusSign | MinusSign | SlashSign | StarSign | LParenSign | RParenSign |
                   CommaSign | ColonSign | AmpSign | SQuoteSign
    PlusSign -> Plus
    MinusSign -> Minus
    SlashSign -> Slash
    StarSign -> Star
    LParenSign -> LeftParen
    RParenSign -> RightParen
    CommaSign -> Comma
    AmpSign -> Ampersand
    SQuoteSign -> SingleQuote
    ColonSign -> Colon

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
