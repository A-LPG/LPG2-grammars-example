-- Python3 Lexer (LPG) — flat subset without INDENT/DEDENT modes.
-- Newlines separate statements; suite bodies are same-line simple statements.

%Options list
%Options fp=PythonPython3Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.python.python3
%options template=LexerTemplateF.gi
%options filter=PythonPython3KWLexer.gi

%Define
    $kw_lexer_class /.$PythonPython3KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NUMBER
    STRING
    NEWLINE
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
    COMMA
    DOT
    COLON
    SEMI
    EQ
    PLUS
    MINUS
    STAR
    SLASH
    LANGLE
    RANGLE
    EQEQ
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
    Token ::= STRING     /. makeToken($_STRING); ./
            | NUMBER     /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord(); ./
            | '('        /. makeToken($_LPAREN); ./
            | ')'        /. makeToken($_RPAREN); ./
            | '['        /. makeToken($_LBRACKET); ./
            | ']'        /. makeToken($_RBRACKET); ./
            | ','        /. makeToken($_COMMA); ./
            | '.'        /. makeToken($_DOT); ./
            | ':'        /. makeToken($_COLON); ./
            | ';'        /. makeToken($_SEMI); ./
            | '=' '='    /. makeToken($_EQEQ); ./
            | '='        /. makeToken($_EQ); ./
            | '+'        /. makeToken($_PLUS); ./
            | '-'        /. makeToken($_MINUS); ./
            | '*'        /. makeToken($_STAR); ./
            | '/'        /. makeToken($_SLASH); ./
            | '<'        /. makeToken($_LANGLE); ./
            | '>'        /. makeToken($_RANGLE); ./
            | NEWLINE    /. makeToken($_NEWLINE); ./
            | comment    /. skipToken(); ./
            | white      /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit
                 | '_'
                 | identifier '_'

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    NUMBER ::= Digits
             | Digits '.' Digits
    Digits ::= Digit | Digits Digit

    STRING ::= '"' SLBody '"'
             | "'" SQBody "'"
    SLBody -> $empty | SLBody NotDQ | SLBody Escape
    SQBody -> $empty | SQBody NotSQ | SQBody Escape
    Escape ::= BackSlash EscapeAny
    EscapeAny -> Letter | Digit | DoubleQuote | SingleQuote | BackSlash | Space | '/' | 'n' | 't'
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | AfterASCII | '_'
    NotSQ -> Letter | Digit | SpecialNotSQ | Space | HT | FF | AfterASCII | '_'
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'
    SpecialNotSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'

    -- '#' comments; newline is a separate NEWLINE token
    comment ::= '#' CommentBody
    CommentBody -> $empty | CommentBody NotNL
    NotNL -> Letter | Digit | SpecialNotNL | Space | HT | FF | AfterASCII | '_' | '"' | "'"
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | '[' | ']' |
                    '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | BackSlash

    NEWLINE ::= LF
              | CR
              | CR LF

    white -> WSChar | white WSChar
    WSChar -> Space | HT | FF
%End
