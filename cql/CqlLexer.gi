-- CQL Lexer (LPG)
-- Ported from antlr/grammars-v4 cql/cql.g4

%Options list
%Options fp=CqlLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.cql
%options template=LexerTemplateF.gi
%options filter=CqlKWLexer.gi

%Define
    $kw_lexer_class /.$CqlKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    CHARSTRING1
    CHARSTRING2
    EQ
    GT
    LT
    GTE
    LTE
    NEQ
    EQEQ
    SLASH
    LPAREN
    RPAREN
    AND
    OR
    NOT
    PROX
    SORTBY
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
    Token ::= GTE /. makeToken($_GTE); ./
            | LTE /. makeToken($_LTE); ./
            | NEQ /. makeToken($_NEQ); ./
            | EQEQ /. makeToken($_EQEQ); ./
            | '=' /. makeToken($_EQ); ./
            | '>' /. makeToken($_GT); ./
            | '<' /. makeToken($_LT); ./
            | '/' /. makeToken($_SLASH); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | CHARSTRING2 /. makeToken($_CHARSTRING2); ./
            | CHARSTRING1 /. checkForKeyWord(); ./
            | white /. skipToken(); ./

    GTE ::= '>' '='
    LTE ::= '<' '='
    NEQ ::= '<' '>'
    EQEQ ::= '=' '='

    -- [A-Za-z.]+ ; keywords via checkForKeyWord → AND/OR/... else IDENTIFIER
    CHARSTRING1 ::= CsChar
                  | CHARSTRING1 CsChar

    CsChar -> Letter | '.'

    CHARSTRING2 ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | LF | CR | AfterASCII | _
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
