-- PBM Lexer (LPG)
-- Ported from antlr/grammars-v4 pbm/pbm.g4 for parse-level examples.

%Options list
%Options fp=PbmLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.pbm
%options template=LexerTemplateF.gi
%options filter=PbmKWLexer.gi

%Define
    $kw_lexer_class /.$PbmKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    MAGIC
    DIGITS
    ZERO
    ONE
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
    Token ::= MAGIC  /. makeToken($_MAGIC); ./
            | ZERO   /. makeToken($_ZERO); ./
            | ONE    /. makeToken($_ONE); ./
            | DIGITS /. makeToken($_DIGITS); ./
            | white  /. skipToken(); ./
            | COMMENT /. skipToken(); ./

    -- MAGIC : 'P' [0-9]
    MAGIC ::= 'P' Digit

    -- Prefer single-bit tokens for table cells; multi-digit / other digits → DIGITS
    ZERO ::= 0
    ONE ::= 1

    -- DIGITS : [0-9]+  (2+ digits, or a single digit other than 0/1)
    DIGITS ::= OtherDigit
             | Digit Digit
             | DIGITS Digit

    OtherDigit -> 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    COMMENT ::= '#' CommentBodyOpt

    CommentBodyOpt -> $empty
                    | CommentBody

    CommentBody -> NotNL
                 | CommentBody NotNL

    NotNL -> Letter
           | Digit
           | SpecialNotNL
           | Space
           | HT
           | FF
           | AfterASCII

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '$' | '\'

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT
%End
