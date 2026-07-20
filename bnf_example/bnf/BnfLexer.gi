-- BNF Lexer (LPG)
-- Ported from antlr/grammars-v4 bnf for parse-level examples

%Options list
%Options fp=BnfLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.bnf
%options template=LexerTemplateF.gi
%options filter=BnfKWLexer.gi

%Define
    $kw_lexer_class /.$BnfKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    ASSIGN
    OR
    LT
    GT
    STRING
    ID
    TEXT
    NL
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
    -- ASSIGN forms: ::=, -->, :≡, →, and other 2-char AfterASCII pairs
    Token ::= ':' ':' '=' /. makeToken($_ASSIGN); ./
            | '-' '-' '>' /. makeToken($_ASSIGN); ./
            | ':' AfterASCII /. makeToken($_ASSIGN); ./
            | AfterASCII AfterASCII /. makeToken($_ASSIGN); ./
            -- OR forms: |, o + overline + r + overline, ∣, other single AfterASCII
            | 'o' AfterASCII 'r' AfterASCII /. makeToken($_OR); ./
            | '|' /. makeToken($_OR); ./
            | AfterASCII /. makeToken($_OR); ./
            -- Bare < / >; bracket groups are assembled in the parser (g4-style)
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | string /. makeToken($_STRING); ./
            | id /. makeToken($_ID); ./
            | text /. makeToken($_TEXT); ./
            | newlines /. makeToken($_NL); ./
            | hspace /. skipToken(); ./

    string ::= '"' SLBody '"'
             | "'" SQBody "'"
    SLBody -> $empty | SLBody NotDQ
    SQBody -> $empty | SQBody NotSQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | LF | CR | AfterASCII | '_'
    NotSQ -> Letter | Digit | SpecialNotSQ | Space | HT | FF | AfterASCII | '_'
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'
    SpecialNotSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'

    id ::= Letter IdRest
    IdRest ::= IdChar | IdRest IdChar
    IdChar -> Letter | Digit | '-' | '_'

    text ::= Digit
           | SpecialText
           | Letter

    SpecialText -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                   '%' | '&' | '^' | ':' | ';' | '{' | '}' | '[' | ']' | '?' | ',' |
                   '.' | '=' | '#' | '$' | '\' 

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    newlines ::= Eol | newlines Eol
    Eol ::= LF | CR | CR LF
    hspace -> Space | HT | hspace Space | hspace HT
%End
