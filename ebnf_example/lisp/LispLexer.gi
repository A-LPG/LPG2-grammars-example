-- Lisp Lexer (LPG)
-- Ported from antlr/grammars-v4 lisp/lisp.g4 for parse-level examples.

%Options list
%Options fp=LispLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.lisp
%options template=LexerTemplateF.gi
%options filter=LispKWLexer.gi

%Define
    $kw_lexer_class /.$LispKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    ATOMIC_SYMBOL
    LPAREN
    RPAREN
    DOT
    X
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
    Token ::= '('            /. makeToken($_LPAREN); ./
            | ')'            /. makeToken($_RPAREN); ./
            | '.'            /. makeToken($_DOT); ./
            | ATOMIC_SYMBOL  /. makeToken($_ATOMIC_SYMBOL); ./
            | white          /. skipToken(); ./

    -- ATOMIC_SYMBOL : LETTER ATOM_PART?
    -- LETTER : [a-z] ; NUMBER fragment : [1-9]
    ATOMIC_SYMBOL ::= LowerCaseLetter AtomPartOpt

    AtomPartOpt -> $empty
                 | AtomPart

    AtomPart -> AtomChar
              | AtomPart AtomChar

    AtomChar -> LowerCaseLetter
              | NonZeroDigit

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    NonZeroDigit -> 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT
%End
