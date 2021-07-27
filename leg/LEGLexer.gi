%options package=org.eclipse.imp.leg.parser
%options template=LexerTemplateF.gi
%options filter=LEGKWLexer.gi
--
-- This is just a sample lexer and not a real lexer for LEG
--

%Globals
    /.import java.util.*;
    import org.eclipse.imp.parser.ILexer;
    ./
%End

%Define
    $additional_interfaces /., ILexer./
    $kw_lexer_class /.$LEGKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    --
    -- List all the token types the lexer will directly process
    -- and export to the parser. If a keyword lexer is used as
    -- a filter for this lexer, it may export a set of keywords
    -- that will also be passed along to the parser.
    -- 
    -- For example:
    --
        SINGLE_LINE_COMMENT
        IDENTIFIER 
        NUMBER
        DoubleLiteral
        COMMA
        SEMICOLON
        PLUS
        MINUS
        TIMES
        DIVIDE
        GREATER
        LESS
        EQUAL
        NOTEQUAL
        ASSIGN
        LEFTPAREN
        RIGHTPAREN
        LEFTBRACE
        RIGHTBRACE
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
    LeftParen    ::= '('
    RightParen   ::= ')'
    Equal        ::= '='
%End

%Start
    Token
%End

%Rules
    Token ::= identifier    /.    checkForKeyWord();./
            | number        /.    makeToken($_NUMBER);./
            | DoubleLiteral /.    makeToken($_DoubleLiteral);./
            | white         /.    skipToken();./
            | slc           /.    makeComment($_SINGLE_LINE_COMMENT);./
            | ';'           /.    makeToken($_SEMICOLON);./
            | ','           /.    makeToken($_COMMA);./
            | '+'           /.    makeToken($_PLUS);./
            | '-'           /.    makeToken($_MINUS);./
            | '='           /.    makeToken($_ASSIGN);./
            | '('           /.    makeToken($_LEFTPAREN);./
            | ')'           /.    makeToken($_RIGHTPAREN);./
            | '{'           /.    makeToken($_LEFTBRACE);./
            | '}'           /.    makeToken($_RIGHTBRACE);./
            | '*'           /.    makeToken($_TIMES);./
            | '/'           /.    makeToken($_DIVIDE);./
            | '>'           /.    makeToken($_GREATER);./
            | '<'           /.    makeToken($_LESS);./
            | '=' '='       /.    makeToken($_EQUAL);./
            | '!' '='       /.    makeToken($_NOTEQUAL);./

    identifier -> letter
                | identifier letter
                | identifier digit

    number ::= digit
             | number digit

    DoubleLiteral ::= Decimal
                    | Decimal Exponent
                    | number Exponent
                    
    Exponent ::= LetterEe number
               | LetterEe '-' number
               | LetterEe '+' number

    LetterEe ::= 'e'
               | 'E'

    Decimal ::= '.' number
              | number '.'
              | number '.' number
    
    white ::= whiteChar
            | white whiteChar

    slc ::= '/' '/'
          | slc notEOL

    digit ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    aA ::= a | A
    bB ::= b | B
    cC ::= c | C
    dD ::= d | D
    eE ::= e | E
    fF ::= f | F
    gG ::= g | G
    hH ::= h | H
    iI ::= i | I
    jJ ::= j | J
    kK ::= k | K
    lL ::= l | L
    mM ::= m | M
    nN ::= n | N
    oO ::= o | O
    pP ::= p | P
    qQ ::= q | Q
    rR ::= r | R
    sS ::= s | S
    tT ::= t | T
    uU ::= u | U
    vV ::= v | V
    wW ::= w | W
    xX ::= x | X
    yY ::= y | Y
    zZ ::= z | Z

    letter ::= aA | bB | cC | dD | eE | fF | gG | hH | iI | jJ | kK | lL | mM | nN | oO | pP | qQ | rR | sS | tT | uU | vV | wW | xX | yY | zZ

    -- any ::= letter | digit | special | white

    whiteChar ::= Space | LF | CR | HT | FF

    special ::= '+' | '-' | '(' | ')' | '"' | '!' | '@' | '`' | '~' | '.' |
                '%' | '&' | '^' | ':' | ';' | "'" | '\' | '|' | '{' | '}' |
                '[' | ']' | '?' | ',' | '<' | '>' | '=' | '#' | '*' | '_' |
                '/' | '$'

    notEOL ::= letter | digit | special | Space | HT | FF
%End
