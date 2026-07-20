-- CLIF Lexer (LPG)
%Options list
%Options fp=ClifLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.clif
%options template=LexerTemplateF.gi
%options filter=ClifKWLexer.gi
%Define
    $kw_lexer_class /.$ClifKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER NUMERAL QUOTEDSTRING ENCLOSEDNAME SEQMARK EQUAL
    OPEN CLOSE
    AND OR IFF IF FORALL EXISTS NOT
    CL_ROLESET CL_TEXT CL_IMPORTS CL_EXCLUDES CL_MODULE CL_COMMENT CL_PREFIX
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
    Token ::= '(' /. makeToken($_OPEN); ./
            | ')' /. makeToken($_CLOSE); ./
            | '=' /. makeToken($_EQUAL); ./
            | CL_ROLESET /. makeToken($_CL_ROLESET); ./
            | CL_TEXT /. makeToken($_CL_TEXT); ./
            | CL_IMPORTS /. makeToken($_CL_IMPORTS); ./
            | CL_EXCLUDES /. makeToken($_CL_EXCLUDES); ./
            | CL_MODULE /. makeToken($_CL_MODULE); ./
            | CL_COMMENT /. makeToken($_CL_COMMENT); ./
            | CL_PREFIX /. makeToken($_CL_PREFIX); ./
            | QUOTEDSTRING /. makeToken($_QUOTEDSTRING); ./
            | ENCLOSEDNAME /. makeToken($_ENCLOSEDNAME); ./
            | SEQMARK /. makeToken($_SEQMARK); ./
            | NUMERAL /. makeToken($_NUMERAL); ./
            | identifier /. checkForKeyWord(); ./
            | comment /. skipToken(); ./
            | line_comment /. skipToken(); ./
            | white /. skipToken(); ./

    CL_ROLESET ::= 'c' 'l' '-' 'r' 'o' 'l' 'e' 's' 'e' 't'
    CL_TEXT ::= 'c' 'l' '-' 't' 'e' 'x' 't'
    CL_IMPORTS ::= 'c' 'l' '-' 'i' 'm' 'p' 'o' 'r' 't' 's'
    CL_EXCLUDES ::= 'c' 'l' '-' 'e' 'x' 'c' 'l' 'u' 'd' 'e' 's'
    CL_MODULE ::= 'c' 'l' '-' 'm' 'o' 'd' 'u' 'l' 'e'
    CL_COMMENT ::= 'c' 'l' '-' 'c' 'o' 'm' 'm' 'e' 'n' 't'
    CL_PREFIX ::= 'c' 'l' '-' 'p' 'r' 'e' 'f' 'i' 'x'

    NUMERAL ::= Digit | NUMERAL Digit
    SEQMARK ::= '.' '.' '.' | SEQMARK NameChar

    QUOTEDSTRING ::= "'" SQBody "'"
    SQBody -> $empty | SQBody SqChar
    SqChar -> NameChar | Space | HT | FF | AfterASCII | '(' | ')' | '"' | '\'

    ENCLOSEDNAME ::= '"' DQBody '"'
    DQBody -> $empty | DQBody DqChar
    DqChar -> NameChar | Space | HT | FF | AfterASCII | '(' | ')' | "'" | '\'

    identifier ::= NameChar | identifier NameChar | identifier "'" | identifier '"' | identifier '\'
    NameChar -> Letter | Digit | SpecialName
    SpecialName -> '~' | '!' | '#' | '$' | '%' | '^' | '&' | '*' | '_' | '+' | '{' | '}' |
                   '|' | ':' | '<' | '>' | '?' | '`' | '-' | '=' | '[' | ']' | ';' | ',' | '.' | '/' | '@'

    comment ::= '/' '*' CommentBody '*' '/'
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | SpecialName | Space | HT | FF | LF | CR | AfterASCII | '"' | "'" | '/'

    line_comment ::= '/' '/' LineBody
    LineBody -> $empty | LineBody LineChar
    LineChar -> Letter | Digit | SpecialName | Space | HT | FF | AfterASCII | '"' | "'"

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
