-- EDN Lexer (LPG)
-- Ported from antlr/grammars-v4 edn/edn.g4

%Options list
%Options fp=EdnLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.edn
%options template=LexerTemplateF.gi
%options filter=EdnKWLexer.gi

%Define
    $kw_lexer_class /.$EdnKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    INTEGER
    FLOAT
    CHARACTER
    HASHED_LBRACE
    HASH
    COLON
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
    LBRACE
    RBRACE
    NIL
    TRUE
    FALSE
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
    Token ::= HASHED_LBRACE /. makeToken($_HASHED_LBRACE); ./
            | '#' /. makeToken($_HASH); ./
            | ':' /. makeToken($_COLON); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | STRING /. makeToken($_STRING); ./
            | CHARACTER /. makeToken($_CHARACTER); ./
            | FLOAT /. makeToken($_FLOAT); ./
            | INTEGER /. makeToken($_INTEGER); ./
            | identifier /. checkForKeyWord(); ./
            | comment /. skipToken(); ./
            | white /. skipToken(); ./

    HASHED_LBRACE ::= '#' '{'

    -- Symbol / keyword body / tag name (nil/true/false via KW filter → else IDENTIFIER)
    identifier ::= '/'
                 | Name
                 | Name '/' Name

    Name ::= NameStart
           | Name NameChar

    NameStart -> Letter
               | Extra
               | SignDot Letter
               | SignDot Extra
               | SignDot Sharp
               | SignDot Colon

    SignDot -> '+' | '-' | '.'

    NameChar -> Letter | Digit | Extra | Sharp | Colon

    Extra -> '.' | '*' | '+' | '!' | '-' | '_' | '?' | '$' | '%' | '&' | '=' | '<' | '>'

    INTEGER ::= OptSign Digits OptN
    OptSign -> $empty | '+' | '-'
    OptN -> $empty | 'N' | 'n'

    FLOAT ::= OptSign Digits '.' Digits OptExp OptBigM
            | OptSign Digits OptExp BigM
            | OptSign Digits '.' Digits BigM

    OptExp -> $empty | Exp
    Exp ::= LetterEe OptSign Digits
    LetterEe -> e | E
    OptBigM -> $empty | BigM
    BigM -> 'M' | 'm'

    Digits ::= Digit | Digits Digit

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ | SLBody EscapeSequence
    NotDQ -> Letter | Digit | Extra | SpecialNotDQ | Space | HT | FF | AfterASCII | '_'
           | Sharp | Colon | '/' | '(' | ')' | '{' | '}' | '[' | ']' | "'" | '`' | '|' | '~' | '@' | '^' | ';' | ','
    EscapeSequence ::= '\' EscapeChar
    EscapeChar -> DoubleQuote | BackSlash | '/' | b | f | n | r | t
                | 'u' HexDigit HexDigit HexDigit HexDigit
    SpecialNotDQ -> '?' 

    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F

    CHARACTER ::= '\' CharBody
    CharBody ::= NamedChar
               | 'u' HexDigit HexDigit HexDigit HexDigit
               | CharAny

    NamedChar ::= 'n' 'e' 'w' 'l' 'i' 'n' 'e'
                | 'r' 'e' 't' 'u' 'r' 'n'
                | 's' 'p' 'a' 'c' 'e'
                | 't' 'a' 'b'
                | 'b' 'a' 'c' 'k' 's' 'p' 'a' 'c' 'e'
                | 'f' 'o' 'r' 'm' 'f' 'e' 'e' 'd'

    CharAny -> Letter | Digit | Extra | Sharp | Colon | '/' | '"' | "'"
             | '(' | ')' | '{' | '}' | '[' | ']' | '`' | '|' | '~' | '@' | '^' | ';' | ','
             | '?' | BackSlash | AfterASCII

    comment ::= ';' CommentBody
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | Extra | SpecialNotDQ | Space | HT | FF | AfterASCII | _
                 | Sharp | Colon | '/' | '(' | ')' | '{' | '}' | '[' | ']' | "'" | '"' | '`'
                 | '|' | '~' | '@' | '^' | ';' | ',' | '?' | BackSlash | '<' | '>' | '='

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- comma is whitespace in EDN
    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF | ','
%End
