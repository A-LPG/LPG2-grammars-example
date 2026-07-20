-- Gff3Lexer (LPG)
-- Ported from antlr/grammars-v4 gff3/gff3.g4
-- All # lines are COMMENTLINE (including ##gff-version 3).

%Options list
%Options fp=Gff3Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.gff3
%options template=LexerTemplateF.gi
%options filter=Gff3KWLexer.gi

%Define
    $kw_lexer_class /.$Gff3KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    COMMENTLINE
    TEXT
    TAB
    EOL
    EQUAL
    SEMI
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
    Token ::= COMMENTLINE /. makeToken($_COMMENTLINE); ./
            | TAB /. makeToken($_TAB); ./
            | EOL /. makeToken($_EOL); ./
            | '=' /. makeToken($_EQUAL); ./
            | ';' /. makeToken($_SEMI); ./
            | TEXT /. makeToken($_TEXT); ./

    COMMENTLINE ::= '#' CommentBody EOL
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | Space | HT | FF | AfterASCII |
                   '#' | '/' | '=' | ';' | '.' | ':' | ',' | '-' | '+' | '*' | '_' |
                   '@' | '$' | '%' | '&' | '^' | '~' | '`' | '!' | '|' | '<' | '>' |
                   '(' | ')' | '[' | ']' | '{' | '}' | '?' | DoubleQuote | "'" | BackSlash

    TAB ::= HT

    EOL ::= LF
          | CR LF
          | CR

    TEXT ::= TextChar
           | TEXT TextChar
    TextChar -> Letter | Digit | Symbol
    Symbol -> '.' | ':' | '^' | '*' | '$' | '@' | '%' | '!' | '+' | '_' | '?' | '-' | '|' | ',' | Space | '/'

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
%End
