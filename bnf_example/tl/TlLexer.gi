-- TL Lexer (LPG)
-- Ported from antlr/grammars-v4 tl/tl.g4

%Options list
%Options fp=TlLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.tl
%options template=LexerTemplateF.gi
%options filter=TlKWLexer.gi

%Define
    $kw_lexer_class /.$TlKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    ATOMIC
    TL_ALWAYS
    TL_WAS
    TL_OR
    TL_UPTACK
    TL_NOT
    LPAREN
    RPAREN
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
    -- Unicode ops (∨ ⊥ ⌐) via AfterASCII+classify. ASCII stand-ins | # ~ for
    -- examples: LexStream allocates char[file.length()] by bytes, so UTF-8
    -- multi-byte leaves trailing NULs that break lexing.
    Token ::= 'G'          /. makeToken($_TL_ALWAYS); ./
            | 'H'          /. makeToken($_TL_WAS); ./
            | '|'          /. makeToken($_TL_OR); ./
            | '#'          /. makeToken($_TL_UPTACK); ./
            | '~'          /. makeToken($_TL_NOT); ./
            | AfterASCII   /.
                    $BeginJava
                        int c = lexStream.getCharValue(getLeftSpan());
                        if (c == 0x2228) makeToken($_TL_OR);
                        else if (c == 0x22a5) makeToken($_TL_UPTACK);
                        else if (c == 0x2310) makeToken($_TL_NOT);
                        else skipToken();
                    $EndJava
               ./
            | '('          /. makeToken($_LPAREN); ./
            | ')'          /. makeToken($_RPAREN); ./
            | ATOMIC       /. makeToken($_ATOMIC); ./
            | white        /. skipToken(); ./

    ATOMIC ::= LowerCaseLetter
             | ATOMIC LowerCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT | FF
%End
