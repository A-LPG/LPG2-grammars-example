-- Cmake Lexer (LPG)
%Options list
%Options fp=CmakeLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.cmake
%options template=LexerTemplateF.gi
%options filter=CmakeKWLexer.gi
%Define
    $kw_lexer_class /.$CmakeKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    UNQUOTED_ARGUMENT
    BRACKET_ARGUMENT
    QUOTED_ARGUMENT
    LPAREN
    RPAREN
    X
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
    Token ::= '('                /. makeToken($_LPAREN); ./
            | ')'                /. makeToken($_RPAREN); ./
            | BRACKET_ARGUMENT   /. makeToken($_BRACKET_ARGUMENT); ./
            | QUOTED_ARGUMENT    /. makeToken($_QUOTED_ARGUMENT); ./
            | IDENTIFIER_TOK     /. makeToken($_IDENTIFIER); ./
            | UNQUOTED_ARGUMENT  /. makeToken($_UNQUOTED_ARGUMENT); ./
            | comment            /. skipToken(); ./
            | white              /. skipToken(); ./

    -- Identifier for [A-Za-z_][A-Za-z0-9_]*. Unquoted must start with a non-id char
    -- (digit/special/escape) so pure command names stay IDENTIFIER; "world.c" → ID + ".c".
    IDENTIFIER_TOK ::= Letter IdRest
    IdRest -> $empty | IdRest Letter | IdRest Digit

    UNQUOTED_ARGUMENT ::= UnquotedStart UnquotedTailOpt
    UnquotedStart -> Digit | UnquotedSpecial | EscapeSequence
    UnquotedTailOpt -> $empty | UnquotedTail
    UnquotedTail -> UnquotedChar | UnquotedTail UnquotedChar
    UnquotedChar -> Digit | UnquotedSpecial | EscapeSequence | '_'
                  | LowerCaseLetter | UpperCaseLetter

    UnquotedSpecial -> '+' | '-' | '*' | '!' | '@' | '`' | '~' | '%' | '&' | '^' |
                       ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                       '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '$'

    EscapeSequence ::= '\' EscapeChar
    EscapeChar -> 't' | 'r' | 'n' | ';' | Letter | Digit | UnquotedSpecial | '(' | ')' | '"' | '#' | '\' | '_' | Space

    QUOTED_ARGUMENT ::= '"' QBody '"'
    QBody -> $empty | QBody QChar
    QChar -> Letter | Digit | SpecialQ | Space | HT | FF | LF | CR | EscapeSequence | AfterASCII
    SpecialQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    -- [=[ body ]=]  and  [[ body ]]
    BRACKET_ARGUMENT ::= '[' '=' '[' BracketContent ']' '=' ']'
                       | '[' '[' BracketContent ']' ']'

    BracketContent -> $empty | BracketContent BracketChar
    BracketChar -> Letter | Digit | SpecialB | Space | HT | FF | LF | CR | AfterASCII | '"' | '#' | '\' | '(' | ')' | '='
    SpecialB -> '+' | '-' | '/' | '*' | '!' | '@' | '`' | '~' | '%' | '&' | '^' |
                ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                '[' | '?' | ',' | '.' | '<' | '>' | '$' | '_'

    comment ::= '#' CommentBody
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | SpecialC | Space | HT | FF | '"' | AfterASCII | '='
    SpecialC -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                '[' | ']' | '?' | ',' | '.' | '<' | '>' | '$' | '\' | '_'

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
