-- ITN Lexer (LPG)
-- Ported from antlr/grammars-v4 itn/itn.g4 for parse-level examples.

%Options list
%Options fp=ItnLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.itn
%options template=LexerTemplateF.gi
%options filter=ItnKWLexer.gi

%Define
    $kw_lexer_class /.$ItnKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NUM
    TEXT
    PIPE
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
    Token ::= '|'   /. makeToken($_PIPE); ./
            | NUM   /. makeToken($_NUM); ./
            | TEXT  /. makeToken($_TEXT); ./
            | white /. skipToken(); ./

    -- NUM : [0-9]+
    NUM ::= Digit
          | NUM Digit

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- TEXT : [ a-zA-Z0-9]+  (space and alphanumerics; digits alone prefer NUM by rule order / length)
    -- Prefer NUM when the whole run is digits; TEXT when letters/spaces appear.
    TEXT ::= TextStart TextTailOpt

    TextStart -> Letter
               | Space

    TextTailOpt -> $empty
                 | TextTail

    TextTail -> TextChar
              | TextTail TextChar

    TextChar -> Letter
              | Digit
              | Space

    Letter -> LowerCaseLetter
            | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    -- WS : [\r\n\t]+ -> skip  (spaces are part of TEXT)
    white -> WSChar
           | white WSChar

    WSChar -> LF | CR | HT
%End
