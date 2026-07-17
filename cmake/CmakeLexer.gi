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
            | UNQUOTED_ARGUMENT  /. makeToken($_UNQUOTED_ARGUMENT); ./
            | IDENTIFIER_TOK     /. makeToken($_IDENTIFIER); ./
            | comment            /. skipToken(); ./
            | white              /. skipToken(); ./

    IDENTIFIER_TOK ::= Letter IdRest
    IdRest -> $empty | IdRest Letter | IdRest Digit

    UNQUOTED_ARGUMENT ::= UnquotedChar | UNQUOTED_ARGUMENT UnquotedChar
    UnquotedChar -> Digit | UnquotedSpecial | EscapeSequence | '_'
                  | LowerCaseLetter | UpperCaseLetter
    -- exclude letters that start IDENTIFIER - actually IDENTIFIER is tried first if Letter.
    -- Order: BRACKET, QUOTED, IDENTIFIER, UNQUOTED - unquoted won't start with letter if IDENTIFIER matches.
    -- Unquoted can be world.c (has dot) - IDENTIFIER is [A-Za-z_][A-Za-z0-9_]* so world is ID, .c needs separate?
    -- In ANTLR: Identifier and Unquoted_argument are both lexer rules; "world.c" - Identifier matches "world", then Unquoted "."? 
    -- Actually '.' can start Unquoted. "world.c" tokenizes as Identifier "world" + Unquoted ".c"? 
    -- Unquoted is (~[ \t\r\n()#"\\]|Escape)+ so ".c" is unquoted. Or full "world.c" as unquoted if Identifier doesn't take it.
    -- Longer match: "world.c" - Identifier matches "world" (5), Unquoted matches "world.c" (7) - unquoted wins!
    -- So put UNQUOTED before IDENTIFIER, or make IDENTIFIER only when not followed by unquoted chars.
    -- Simpler: only IDENTIFIER for pure ids; unquoted for paths with dots. Put UNQUOTED first with broader pattern including letters.

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
