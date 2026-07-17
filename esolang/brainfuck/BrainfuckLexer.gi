-- Brainfuck Lexer (LPG)
-- Ported from antlr/grammars-v4 esolang/brainfuck/brainfuck.g4

%Options list
%Options fp=BrainfuckLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.brainfuck
%options template=LexerTemplateF.gi
%options filter=BrainfuckKWLexer.gi

%Define
    $kw_lexer_class /.$BrainfuckKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    GT
    LT
    PLUS
    MINUS
    DOT
    COMMA
    LPAREN
    RPAREN
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
    Token ::= '>'        /. makeToken($_GT); ./
            | '<'        /. makeToken($_LT); ./
            | '+'        /. makeToken($_PLUS); ./
            | '-'        /. makeToken($_MINUS); ./
            | '.'        /. makeToken($_DOT); ./
            | ','        /. makeToken($_COMMA); ./
            | '['        /. makeToken($_LPAREN); ./
            | ']'        /. makeToken($_RPAREN); ./
            | SkipChar   /. skipToken(); ./

    -- WS: . -> skip  (any non-opcode)
    SkipChar -> Letter | Digit | SpecialSkip | Space | LF | CR | HT | FF
              | CtlCharNotWS | AfterASCII


    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    SpecialSkip -> '!' | '@' | '`' | '~' | '%' | '&' | '^' | ':' | ';' | "'" | '"'
                 | '|' | '{' | '}' | '?' | '/' | '*' | '=' | '(' | ')' | '#' | '$' | '\' | '_'
%End
