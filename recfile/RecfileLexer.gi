-- Recfile Lexer (LPG)
-- Ported from antlr/grammars-v4 recfile/recfile.g4 for parse-level examples.

%Options list
%Options fp=RecfileLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.recfile
%options template=LexerTemplateF.gi
%options filter=RecfileKWLexer.gi

%Define
    $kw_lexer_class /.$RecfileKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    PERCENT
    COLON
    PLUS
    EOL
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
    Token ::= '%'     /. makeToken($_PERCENT); ./
            | ':'     /. makeToken($_COLON); ./
            | '+'     /. makeToken($_PLUS); ./
            | EOL     /. makeToken($_EOL); ./
            | STRING  /. makeToken($_STRING); ./
            | white   /. skipToken(); ./
            | COMMENT /. skipToken(); ./

    -- STRING : [a-zA-Z0-9'.] [a-zA-Z0-9_ '.]*
    STRING ::= StringStart StringTailOpt

    StringStart -> Letter
                 | Digit
                 | "'"
                 | '.'

    StringTailOpt -> $empty
                   | StringTail

    StringTail -> StringChar
                | StringTail StringChar

    StringChar -> Letter
                | Digit
                | '_'
                | Space
                | "'"
                | '.'

    Letter -> LowerCaseLetter
            | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- EOL : [\r\n]+
    EOL ::= EOLChar
          | EOL EOLChar

    EOLChar -> LF | CR

    COMMENT ::= '#' CommentBody

    CommentBody -> NotNL
                 | CommentBody NotNL

    NotNL -> Letter
           | Digit
           | SpecialNotNL
           | Space
           | HT
           | FF
           | AfterASCII

    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '$' | '\' | '_'

    -- WS : [ \t]+ -> skip
    white -> WSChar
           | white WSChar

    WSChar -> Space | HT
%End
