-- MuddbLexer (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options list
%Options fp=MuddbLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.muddb
%options template=LexerTemplateF.gi
%options filter=MuddbKWLexer.gi

%Define
    $kw_lexer_class /.$MuddbKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    END
    NUM
    STRING
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
    Token ::= END_LIT /. makeToken($_END); ./
            | NUM /. makeToken($_NUM); ./
            | STRING /. makeToken($_STRING); ./
            | EOL /. makeToken($_EOL); ./

    END_LIT ::= '*' '*' '*' E N D Space O F Space D U M P '*' '*' '*'

    NUM ::= OptMinus Digits
    OptMinus -> $empty | '-'
    Digits ::= Digit | Digits Digit

    -- NUM wins for pure integers; STRING must start with a non-digit.
    STRING ::= StrStart StrTail
    StrStart -> Letter | StrSym | Space | HT
    StrTail -> $empty
             | StrTail StrChar
    StrChar -> Letter | Digit | StrSym | Space | HT
    StrSym -> ',' | ';' | ':' | "'" | '.' | '*' | '!' | '<' | '>' | '{' | '}' | '(' | ')' |
              '[' | ']' | '@' | '?' | '=' | '_' | DoubleQuote | '`' | '+' | '-' | '/' | '#'

    EOL ::= CR LF | LF | CR


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

%End
