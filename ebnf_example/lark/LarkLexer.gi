-- Lark Lexer (LPG)
-- Ported from antlr/grammars-v4 lark/LarkLexer.g4

%Options list
%Options fp=LarkLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.lark
%options template=LexerTemplateF.gi
%options filter=LarkKWLexer.gi

%Define
    $kw_lexer_class /.$LarkKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    COLON
    LC
    RC
    LP
    RP
    LB
    RB
    COMMA
    DOT
    ARROW
    IGNORE
    IMPORT
    OVERRIDE
    DECLARE
    DD
    SQ
    VBAR
    OP
    RULE
    TOKEN
    STRING
    REGEXP
    NUMBER
    NL
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
    Token ::= '%' 'i' 'g' 'n' 'o' 'r' 'e' /. makeToken($_IGNORE); ./
            | '%' 'i' 'm' 'p' 'o' 'r' 't' /. makeToken($_IMPORT); ./
            | '%' 'o' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($_OVERRIDE); ./
            | '%' 'd' 'e' 'c' 'l' 'a' 'r' 'e' /. makeToken($_DECLARE); ./
            | '-' '>' /. makeToken($_ARROW); ./
            | '.' '.' /. makeToken($_DD); ./
            | ':' /. makeToken($_COLON); ./
            | '{' /. makeToken($_LC); ./
            | '}' /. makeToken($_RC); ./
            | '(' /. makeToken($_LP); ./
            | ')' /. makeToken($_RP); ./
            | '[' /. makeToken($_LB); ./
            | ']' /. makeToken($_RB); ./
            | ',' /. makeToken($_COMMA); ./
            | '.' /. makeToken($_DOT); ./
            | '~' /. makeToken($_SQ); ./
            | '|' /. makeToken($_VBAR); ./
            | regexp /. makeToken($_REGEXP); ./
            | string /. makeToken($_STRING); ./
            | number /. makeToken($_NUMBER); ./
            | ruleName /. makeToken($_RULE); ./
            | tokenName /. makeToken($_TOKEN); ./
            | '+' /. makeToken($_OP); ./
            | '*' /. makeToken($_OP); ./
            | '?' /. makeToken($_OP); ./
            | comment /. skipToken(); ./
            | newlines /. makeToken($_NL); ./
            | hspace /. skipToken(); ./

    ruleName ::= OptBang OptUS Lower LetterDigitUSOpt
    OptBang -> $empty | '!'
    OptUS -> $empty | '_' | '?'
    Lower -> a | b | c | d | e | f | g | h | i | j | k | l | m |
             n | o | p | q | r | s | t | u | v | w | x | y | z
    LetterDigitUSOpt -> $empty | LetterDigitUS
    LetterDigitUS -> LDUS | LetterDigitUS LDUS
    LDUS -> Lower | Digit | '_'

    tokenName ::= OptUS2 Upper UpperDigitUSOpt
    OptUS2 -> $empty | '_'
    Upper -> A | B | C | D | E | F | G | H | I | J | K | L | M |
             N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    UpperDigitUSOpt -> $empty | UpperDigitUS
    UpperDigitUS -> UDUS | UpperDigitUS UDUS
    UDUS -> Upper | Digit | '_'

    string ::= '"' SLBody '"' OptI
    OptI -> $empty | 'i'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | LF | CR | AfterASCII | '_'
           | Escape
    Escape ::= '\' EscapeChar
    EscapeChar -> DoubleQuote | BackSlash | '/' | n | t | r | f | b | SingleQuote
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'

    regexp ::= '/' RegBody '/' RegFlags
    RegBody ::= RegChar | RegBody RegChar
    RegChar -> Letter | Digit | SpecialReg | Space | HT | FF | AfterASCII | '_'
             | '\' RegEsc
    RegEsc -> '/' | BackSlash | Letter | Digit | SpecialReg | '.'
    SpecialReg -> '+' | '-' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                  '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                  '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'
    RegFlags -> $empty | RegFlag | RegFlags RegFlag
    RegFlag -> i | m | s | l | u | x

    number ::= OptSign Digits
    OptSign -> $empty | '+' | '-'
    Digits -> Digit | Digits Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    Letter -> Lower | Upper

    comment ::= '/' '/' CommentBody
    CommentBody -> $empty | CommentBody NotNL
    NotNL -> Letter | Digit | SpecialReg | Space | HT | FF | AfterASCII | '_' | '/'

    newlines ::= Eol | newlines Eol
    Eol ::= LF | CR | CR LF
    hspace -> Space | HT | hspace Space | hspace HT
%End
