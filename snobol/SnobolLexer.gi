-- Snobol lexer (port of grammars-v4 snobol/snobol.g4 lexer rules)
%Options list
%Options fp=SnobolLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.snobol
%options template=LexerTemplateF.gi
%options filter=SnobolKWLexer.gi

%Define
    $kw_lexer_class /.$SnobolKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    STRINGLITERAL1
    STRINGLITERAL2
    INTEGER
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
    COMMA
    DOT
    COLON
    EQ
    PLUS
    MINUS
    STAR
    SLASH
    AMP
    CARET
    GT
    LT
    TIMES
    DIV
    COMMENT
    END
    COMMENT
    EOL
    F
    S
    ARRAY
    ATAN
    BREAK
    CHOP
    CONVERT
    COS
    DATE
    DIFFER
    DUPL
    EXP
    GE
    GT
    IDENT
    LE
    LN
    LGT
    NE
    REMDR
    REPLACE
    REVERSE
    SIN
    SIZE
    SORT
    TABLE
    TAN
    TRIM
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
    Token ::= STRINGLITERAL1 /. makeToken($_STRINGLITERAL1); ./
            | STRINGLITERAL2 /. makeToken($_STRINGLITERAL2); ./
            | COMMENT /. makeToken($_COMMENT); ./
            | EOLTok /. makeToken($_EOL); ./
            | INTEGER /. makeToken($_INTEGER); ./
            | SnobolIdent /. checkForKeyWord($_STRING); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | ',' /. makeToken($_COMMA); ./
            | ':' /. makeToken($_COLON); ./
            | '=' /. makeToken($_EQ); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '&' /. makeToken($_AMP); ./
            | '^' /. makeToken($_CARET); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | white /. skipToken(); ./

    STRINGLITERAL1 ::= DoubleQuote SL1Body DoubleQuote
    SL1Body -> $empty | SL1Body NotDQ1
    NotDQ1 -> Letter | Digit | Space | HT | Special1 | AfterASCII | '_' | QuestionMark | SingleQuote
    Special1 -> Plus | Minus | Slash | LeftParen | RightParen | Star | Colon | Comma | Ampersand | Caret | Equal | Exclamation | Dot

    STRINGLITERAL2 ::= SingleQuote SL2Body SingleQuote
    SL2Body -> $empty | SL2Body NotSQ2
    NotSQ2 -> Letter | Digit | Space | HT | Special2 | AfterASCII | '_'
    Special2 -> Plus | Minus | Slash | LeftParen | RightParen | Star | Colon | Comma | Ampersand | Caret | Equal | DoubleQuote

    COMMENT ::= Star CommentBody
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | Space | HT | Special1 | AfterASCII | '_'

    EOLTok ::= LF | CR LF | CR

    INTEGER ::= OptSign Digits
    OptSign -> $empty | Plus | Minus
    Digits ::= Digit | Digits Digit

    SnobolIdent ::= Letter IdentSuffix
    IdentSuffix -> $empty | IdentSuffix IdentChar
    IdentChar -> Letter | Digit | Exclamation | Star | UnderscoreChar
    UnderscoreChar -> _

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | HT | FF
%End
