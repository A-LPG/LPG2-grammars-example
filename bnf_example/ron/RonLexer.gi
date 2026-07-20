-- RonLexer (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options list
%Options fp=RonLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.ron
%options template=LexerTemplateF.gi
%options filter=RonKWLexer.gi

%Define
    $kw_lexer_class /.$RonKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    ID
    DECIMAL
    HEX
    BINARY
    STRING
    CHAR
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
    LBRACE
    RBRACE
    COMMA
    COLON
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
    Token ::= '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | ',' /. makeToken($_COMMA); ./
            | ':' /. makeToken($_COLON); ./
            | STRING /. makeToken($_STRING); ./
            | CHAR /. makeToken($_CHAR); ./
            | HEX /. makeToken($_HEX); ./
            | BINARY /. makeToken($_BINARY); ./
            | DECIMAL /. makeToken($_DECIMAL); ./
            | identifier /. checkForKeyWord(); ./
            | line_comment /. skipToken(); ./
            | block_comment /. skipToken(); ./
            | white /. skipToken(); ./

    DECIMAL ::= Digits
              | Digits '.' Digits
    Digits ::= Digit
             | Digits Digit

    HEX ::= '0' 'x' HexDigits
          | '0' 'X' HexDigits
    HexDigits ::= HexDigit
                | HexDigits HexDigit
    HexDigit -> Digit | A | B | C | D | E | F | a | b | c | d | e | f

    BINARY ::= '0' 'b' BinDigits
             | '0' 'B' BinDigits
    BinDigits ::= '0' | '1' | BinDigits '0' | BinDigits '1'

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | Space | HT | SpecialStr
    SpecialStr -> '.' | ',' | '-' | '_' | '(' | ')' | ':' | '/' | "'" | '+' | '=' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '*' | ';' | '<' | '>' | '[' | ']' | '{' | '}' | '|' | '\' | '`' | '~'

    CHAR ::= "'" NotSQ "'"
    NotSQ -> Letter | Digit | Space | SpecialStr | DoubleQuote

    identifier ::= Letter
                 | identifier Letter
                 | identifier _

    line_comment ::= '/' '/' LineCommentBody
    LineCommentBody -> $empty | LineCommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | FF | SpecialStr | DoubleQuote | '/'

    block_comment ::= '/' '*' BlockBody '*' '/'
    BlockBody -> $empty | BlockBody BlockChar
    BlockChar -> Letter | Digit | Space | HT | FF | LF | CR | SpecialStr | DoubleQuote | '/'


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9


    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
