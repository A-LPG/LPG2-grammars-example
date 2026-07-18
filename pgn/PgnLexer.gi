-- PGN Lexer (LPG)
%Options list
%Options fp=PgnLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.pgn
%options template=LexerTemplateF.gi
%options filter=PgnKWLexer.gi
%Define
    $kw_lexer_class /.$PgnKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    STRING
    INTEGER
    SYMBOL
    PERIOD
    ASTERISK
    LEFT_BRACKET RIGHT_BRACKET
    LEFT_PARENTHESIS RIGHT_PARENTHESIS
    WHITE_WINS BLACK_WINS DRAWN_GAME
    NUMERIC_ANNOTATION_GLYPH
    SUFFIX_ANNOTATION
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
    Token ::= '1' '-' '0' /. makeToken($_WHITE_WINS); ./
            | '0' '-' '1' /. makeToken($_BLACK_WINS); ./
            | '1' '/' '2' '-' '1' '/' '2' /. makeToken($_DRAWN_GAME); ./
            | '.' /. makeToken($_PERIOD); ./
            | '*' /. makeToken($_ASTERISK); ./
            | '[' /. makeToken($_LEFT_BRACKET); ./
            | ']' /. makeToken($_RIGHT_BRACKET); ./
            | '(' /. makeToken($_LEFT_PARENTHESIS); ./
            | ')' /. makeToken($_RIGHT_PARENTHESIS); ./
            | '$' DigitPlus /. makeToken($_NUMERIC_ANNOTATION_GLYPH); ./
            | SUFFIX /. makeToken($_SUFFIX_ANNOTATION); ./
            | STRING /. makeToken($_STRING); ./
            | INTEGER /. makeToken($_INTEGER); ./
            | SYMBOL /. makeToken($_SYMBOL); ./
            | white /. skipToken(); ./
            | line_comment /. skipToken(); ./
            | brace_comment /. skipToken(); ./

    SUFFIX ::= '!' | '?' | '!' '!' | '!' '?' | '?' '!' | '?' '?'

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SymExtra | Space | HT | FF | Escape
    Escape ::= '\' EscapeChar
    EscapeChar -> '"' | '\' | '/' | 'b' | 'f' | 'n' | 'r' | 't' | Letter | Digit

    INTEGER ::= DigitPlus
    DigitPlus ::= Digit | DigitPlus Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- Pure digit runs are INTEGER (g4 declares INTEGER before SYMBOL).
    -- Digit-leading SYMBOL must continue with a symbol char so "1" is not SYMBOL.
    SYMBOL ::= Letter SymRestStar
             | Digit SymRest SymRestStar
    SymRestStar -> $empty | SymRestStar SymRest
    SymRest -> Letter | Digit | '_' | '+' | '#' | '=' | ':' | '-'
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    SymExtra -> '_' | '+' | '#' | '=' | ':' | '-' | '!' | '?' | '/' | '@' | '~'
              | '%' | '&' | '^' | ';' | '|' | '{' | '}' | '<' | '>' | "'" | '`'
              | '(' | ')' | '*' | ',' | '.'

    line_comment ::= ';' NotNLStar
    NotNLStar -> $empty | NotNLStar NotNL
    NotNL -> Letter | Digit | SymExtra | Space | HT | FF | AfterASCII | '"' | "'" | '\'
           | '[' | ']' | '(' | ')' | '*' | ',' | '.' | '!' | '?'

    brace_comment ::= '{' BraceBody '}'
    BraceBody -> $empty | BraceBody NotRB
    NotRB -> Letter | Digit | SymExtra | Space | HT | FF | LF | CR | AfterASCII
           | '"' | "'" | '\' | '[' | ']' | '(' | ')' | '*' | ',' | '.' | '!' | '?'
           | ';' | '=' | ':' | '+' | '#' | '-' | '_' | '/' | '@' | '~' | '%' | '&' | '^' | '`'

    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR
%End
