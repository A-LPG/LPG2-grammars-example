-- StarLexer (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options list
%Options fp=StarLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.star
%options template=LexerTemplateF.gi
%options filter=StarKWLexer.gi

%Define
    $kw_lexer_class /.$StarKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING1
    STRING2
    STRING3
    LITERAL
    LOOP
    STOP
    GLOBAL
    SAVE
    DATA
    DATANAME
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
    Token ::= LOOP_KW /. makeToken($_LOOP); ./
            | STOP_KW /. makeToken($_STOP); ./
            | GLOBAL_KW /. makeToken($_GLOBAL); ./
            | SAVE /. makeToken($_SAVE); ./
            | DATA /. makeToken($_DATA); ./
            | DATANAME /. makeToken($_DATANAME); ./
            | STRING3 /. makeToken($_STRING3); ./
            | STRING1 /. makeToken($_STRING1); ./
            | STRING2 /. makeToken($_STRING2); ./
            | LITERAL /. makeToken($_LITERAL); ./
            | comment /. skipToken(); ./
            | white /. skipToken(); ./

    LOOP_KW ::= l o o p '_'
    STOP_KW ::= s t o p '_'
    GLOBAL_KW ::= g l o b a l '_'

    DATA ::= d a t a '_' NameRest
    SAVE ::= s a v e '_' NameRest
    DATANAME ::= '_' NameRest

    NameRest ::= NameChar
               | NameRest NameChar
    NameChar -> Letter | Digit | _

    STRING1 ::= "'" S1Body "'"
    S1Body -> $empty | S1Body NotSQ
    NotSQ -> Letter | Digit | Space | HT | SpecialLit | DoubleQuote | LF | CR

    STRING2 ::= '"' S2Body '"'
    S2Body -> $empty | S2Body NotDQ
    NotDQ -> Letter | Digit | Space | HT | SpecialLit | "'" | LF | CR

    -- CIF-style semicolon text field
    STRING3 ::= ';' S3Body ';'
    S3Body -> $empty | S3Body S3Char
    S3Char -> Letter | Digit | Space | HT | FF | LF | CR | SpecialLit | DoubleQuote | "'" | '#'

    LITERAL ::= LitChar
              | LITERAL LitChar
    LitChar -> Letter | Digit | '(' | ')' | "'" | '.' | '+' | '-' | '/' | '*'

    comment ::= '#' CommentBody
    CommentBody -> $empty | CommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | FF | SpecialLit | DoubleQuote | "'" | '_'
    SpecialLit -> '(' | ')' | '.' | '+' | '-' | '/' | '*' | ',' | ':' | '=' | '!' | '?' | '@' | '$' | '%' | '&' | ';' | '<' | '>' | '[' | ']' | '{' | '}' | '|' | '\' | '`' | '~'


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9


    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
