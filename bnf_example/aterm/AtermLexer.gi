-- ATerm Lexer (LPG)
-- Ported from antlr/grammars-v4 aterm/aterm.g4 for parse-level examples.

%Options list
%Options fp=AtermLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.aterm
%options template=LexerTemplateF.gi
%options filter=AtermKWLexer.gi

%Define
    $kw_lexer_class /.$AtermKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    ID_
    STRING_
    INT_
    REAL_
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
    LBRACE
    RBRACE
    LT
    GT
    COMMA
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
    Token ::= '('     /. makeToken($_LPAREN); ./
            | ')'     /. makeToken($_RPAREN); ./
            | '['     /. makeToken($_LBRACKET); ./
            | ']'     /. makeToken($_RBRACKET); ./
            | '{'     /. makeToken($_LBRACE); ./
            | '}'     /. makeToken($_RBRACE); ./
            | '<'     /. makeToken($_LT); ./
            | '>'     /. makeToken($_GT); ./
            | ','     /. makeToken($_COMMA); ./
            | STRING_ /. makeToken($_STRING_); ./
            | REAL_   /. makeToken($_REAL_); ./
            | INT_    /. makeToken($_INT_); ./
            | ID_     /. makeToken($_ID_); ./
            | white   /. skipToken(); ./

    -- ID_ : [a-zA-Z][a-zA-Z0-9]*
    ID_ ::= Letter IdTailOpt

    IdTailOpt -> $empty
               | IdTail

    IdTail -> LetterOrDigit
            | IdTail LetterOrDigit

    LetterOrDigit -> Letter
                   | Digit

    Letter -> LowerCaseLetter
            | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- STRING_ : '"' ~'"'* '"'
    STRING_ ::= '"' SLBody '"'

    SLBody -> $empty
            | SLBody NotDQ

    NotDQ -> Letter
           | Digit
           | SpecialNotDQ
           | Space
           | HT
           | FF
           | AfterASCII

    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'

    -- INT_ : ('+'|'-')? NAT
    INT_ ::= Nat
           | Sign Nat

    Sign -> '+' | '-'

    Nat ::= Digit
          | Nat Digit

    -- REAL_ : INT_ '.' NAT EXP_?
    -- EXP_ : (('e'|'E') INT_) | 'ε'  (epsilon omitted; unused in examples)
    REAL_ ::= INT_ '.' Nat
            | INT_ '.' Nat Exp

    Exp ::= LetterEe SignedInt

    LetterEe -> e | E

    SignedInt ::= Nat
                | Sign Nat

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT
%End
