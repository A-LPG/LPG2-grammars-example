-- VBA Like Lexer (LPG)
-- Ported from antlr/grammars-v4 vba/vba_like/vba_like.g4 for parse-level examples.

%Options list
%Options fp=VbaLikeLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.vba.vba_like
%options template=LexerTemplateF.gi
%options filter=VbaLikeKWLexer.gi

%Define
    $kw_lexer_class /.$VbaLikeKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    CHAR
    WILD_CHAR
    WILD_SEQ
    WILD_DIGIT
    LBRACKET
    RBRACKET
    MINUS
    BANG
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
    -- CHAR : ~[-*#?[\]] ; specials are distinct tokens for the parser
    Token ::= '?'  /. makeToken($_WILD_CHAR); ./
            | '*'  /. makeToken($_WILD_SEQ); ./
            | '#'  /. makeToken($_WILD_DIGIT); ./
            | '['  /. makeToken($_LBRACKET); ./
            | ']'  /. makeToken($_RBRACKET); ./
            | '-'  /. makeToken($_MINUS); ./
            | '!'  /. makeToken($_BANG); ./
            | CHAR /. makeToken($_CHAR); ./

    CHAR ::= CharAtom

    CharAtom -> Letter
              | Digit
              | SpecialAsChar
              | Space
              | HT
              | FF
              | LF
              | CR
              | AfterASCII
              | CtlCharNotWS

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- printable specials except - * # ? [ ]
    SpecialAsChar -> '+' | '/' | '(' | ')' | '@' | '`' | '~' |
                     '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                     ',' | '.' | '<' | '>' | '=' | '$' | '\'
%End
