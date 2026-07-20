-- C Lexer (LPG) — curated subset: functions, decls, control flow, expressions.

%Options list
%Options fp=CLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.c
%options template=LexerTemplateF.gi
%options filter=CKWLexer.gi

%Define
    $kw_lexer_class /.$CKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
                                        CharacterConstant
StringLiteral
IntegerConstant
GT
LT
EXTERN
For
Do
While
IDENTIFIER
    INTEGER_LITERAL
    BINARY_LITERAL
    STRING_LITERAL
    LBRACE
    RBRACE
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
    SEMI
    COMMA
    EQ
    PLUS
    MINUS
    STAR
    SLASH
    LANGLE
    RANGLE
    EQEQ
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
    Token ::= '{'              /. makeToken($_LBRACE); ./
            | '}'              /. makeToken($_RBRACE); ./
            | '('              /. makeToken($_LPAREN); ./
            | ')'              /. makeToken($_RPAREN); ./
            | '['              /. makeToken($_LBRACKET); ./
            | ']'              /. makeToken($_RBRACKET); ./
            | ';'              /. makeToken($_SEMI); ./
            | ','              /. makeToken($_COMMA); ./
            | '=' '='          /. makeToken($_EQEQ); ./
            | '='              /. makeToken($_EQ); ./
            | '+'              /. makeToken($_PLUS); ./
            | '-'              /. makeToken($_MINUS); ./
            | '*'              /. makeToken($_STAR); ./
            | '/'              /. makeToken($_SLASH); ./
            | '<'              /. makeToken($_LT); ./
            | '>'              /. makeToken($_GT); ./
            | '!'              /. makeToken($_BANG); ./
            | STRING_LITERAL   /. makeToken($_StringLiteral); ./
            | BINARY_LITERAL   /. makeToken($_IntegerConstant); ./
            | INTEGER_LITERAL  /. makeToken($_IntegerConstant); ./
            | identifier       /. checkForKeyWord(); ./
            | comment          /. skipToken(); ./
            | white            /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    BINARY_LITERAL ::= '0' 'b' BinDigits
                     | '0' 'B' BinDigits
    BinDigits ::= BinDigit | BinDigits BinDigit
    BinDigit -> 0 | 1

    INTEGER_LITERAL ::= Digits
    Digits ::= Digit | Digits Digit

    STRING_LITERAL ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ | SLBody Escape
    Escape ::= BackSlash EscapeAny
    EscapeAny -> Letter | Digit | DoubleQuote | SingleQuote | BackSlash | Space | '/' | 'n' | 't' | '%'
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | AfterASCII | '_'
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'

    comment ::= '/' '/' LineBody
              | '/' '*' BlockBody '*' '/'
    LineBody -> $empty | LineBody NotNL
    NotNL -> Letter | Digit | SpecialNotNL | Space | HT | FF | AfterASCII | '"' | "'"
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | '[' | ']' |
                    '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '\'
    BlockBody -> $empty | BlockBody BlockChar
    BlockChar -> Letter | Digit | SpecialBlock | Space | HT | FF | LF | CR | AfterASCII | '/'
    SpecialBlock -> '+' | '-' | '(' | ')' | '!' | '@' | '`' | '~' | '%' | '&' | '^' |
                    ':' | ';' | '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' |
                    '<' | '>' | '=' | '#' | '$' | '_' | '\' | "'" | '"'

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
