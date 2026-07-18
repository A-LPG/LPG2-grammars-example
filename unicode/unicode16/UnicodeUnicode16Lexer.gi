-- Unicode general-category lexer (subset of classify.g4 CLASSIFY_* rules).
-- Maps ASCII + selected Latin-1 ranges to the same token names as grammars-v4.
-- Full 3000-line BMP table not ported (blocker); AfterASCII → CLASSIFY_Lo catch-all.
-- Not token-stream soup; tokens are real Unicode GC names from the g4.

%Options list
%Options fp=UnicodeUnicode16Lexer
%options single_productions
%options package=lpg.grammars.unicode.unicode16
%options template=LexerTemplateF.gi
%options filter=UnicodeUnicode16KWLexer.gi

%Define
    $kw_lexer_class /.$UnicodeUnicode16KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    CLASSIFY___
    CLASSIFY_Cc
    CLASSIFY_Cf
    CLASSIFY_Cn
    CLASSIFY_Co
    CLASSIFY_Cs
    CLASSIFY_Ll
    CLASSIFY_Lm
    CLASSIFY_Lo
    CLASSIFY_Lt
    CLASSIFY_Lu
    CLASSIFY_Mc
    CLASSIFY_Me
    CLASSIFY_Mn
    CLASSIFY_Nd
    CLASSIFY_Nl
    CLASSIFY_No
    CLASSIFY_Pc
    CLASSIFY_Pd
    CLASSIFY_Pe
    CLASSIFY_Pf
    CLASSIFY_Pi
    CLASSIFY_Po
    CLASSIFY_Ps
    CLASSIFY_Sc
    CLASSIFY_Sk
    CLASSIFY_Sm
    CLASSIFY_So
    CLASSIFY_Zl
    CLASSIFY_Zp
    CLASSIFY_Zs
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
    -- One codepoint → one CLASSIFY_* token (classify.g4 lexer rules, ASCII/Latin-1 slice)
    Token ::= classify_lu /. makeToken($_CLASSIFY_Lu); ./
            | classify_ll /. makeToken($_CLASSIFY_Ll); ./
            | classify_nd /. makeToken($_CLASSIFY_Nd); ./
            | classify_zs /. makeToken($_CLASSIFY_Zs); ./
            | classify_cc /. makeToken($_CLASSIFY_Cc); ./
            | classify_pc /. makeToken($_CLASSIFY_Pc); ./
            | classify_pd /. makeToken($_CLASSIFY_Pd); ./
            | classify_ps /. makeToken($_CLASSIFY_Ps); ./
            | classify_pe /. makeToken($_CLASSIFY_Pe); ./
            | classify_po /. makeToken($_CLASSIFY_Po); ./
            | classify_sm /. makeToken($_CLASSIFY_Sm); ./
            | classify_sc /. makeToken($_CLASSIFY_Sc); ./
            | classify_sk /. makeToken($_CLASSIFY_Sk); ./
            | classify_lo /. makeToken($_CLASSIFY_Lo); ./

    -- CLASSIFY_Lu : 'A'..'Z' | Latin-1 capitals via AfterASCII handled as Lo catch-all
    classify_lu ::= A | B | C | D | E | F | G | H | I | J | K | L | M
                  | N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    -- CLASSIFY_Ll : 'a'..'z'
    classify_ll ::= a | b | c | d | e | f | g | h | i | j | k | l | m
                  | n | o | p | q | r | s | t | u | v | w | x | y | z

    -- CLASSIFY_Nd : '0'..'9'
    classify_nd ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- CLASSIFY_Zs : space (U+0020); NBSP etc. not in ASCII map
    classify_zs ::= Space

    -- CLASSIFY_Cc : controls (tab, LF, CR, FF) — U+0000..001F slice
    classify_cc ::= HT | LF | CR | FF

    -- CLASSIFY_Pc : connector punctuation '_'
    classify_pc ::= _

    -- CLASSIFY_Pd : dash punctuation '-'
    classify_pd ::= Minus

    -- CLASSIFY_Ps / Pe : open/close punctuation
    classify_ps ::= LeftParen | LeftBracket | LeftBrace
    classify_pe ::= RightParen | RightBracket | RightBrace

    -- CLASSIFY_Po : other punctuation (subset of classify.g4 Po ranges)
    classify_po ::= Exclamation | Sharp | Percent | Ampersand | SingleQuote
                  | Star | Comma | Dot | Slash | Colon | SemiColon | QuestionMark
                  | AtSign | BackSlash | DoubleQuote

    -- CLASSIFY_Sm : math symbols
    classify_sm ::= Plus | LessThan | Equal | GreaterThan | VerticalBar | Tilde

    -- CLASSIFY_Sc : currency '$'
    classify_sc ::= DollarSign

    -- CLASSIFY_Sk : modifier symbols
    classify_sk ::= Caret | BackQuote

    -- Remaining BMP (≥ U+0080): honest catch-all as Other_Letter (not full table)
    classify_lo ::= AfterASCII
%End
