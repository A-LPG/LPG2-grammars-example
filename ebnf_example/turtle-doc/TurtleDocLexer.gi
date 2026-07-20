-- Turtle lexer — mirrors grammars-v4 turtle-doc/turtle.g4 (parse-level subset).

%Options list
%Options fp=TurtleDocLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.turtle_doc
%options template=LexerTemplateF.gi
%options filter=TurtleDocKWLexer.gi

%Define
    $kw_lexer_class /.$TurtleDocKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    AtPrefixKeyword
    AtBaseKeyword
    PrefixKeyword
    BaseKeyword
    TrueKeyword
    FalseKeyword
    IRIREF
    BlankNodeLabel
    StringLiteralQuote
    StringLiteralSingleQuote
    NUMBER
    Dot
    Coma
    Semi
    COLON
    LParen
    RParen
    LEnd
    REnd
    LetterA
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
    Token ::= AtSign p r e f i x /. makeToken($_AtPrefixKeyword); ./
            | AtSign b a s e /. makeToken($_AtBaseKeyword); ./
            | blank_label /. makeToken($_BlankNodeLabel); ./
            | iriref /. makeToken($_IRIREF); ./
            | string_q /. makeToken($_StringLiteralQuote); ./
            | string_sq /. makeToken($_StringLiteralSingleQuote); ./
            | number /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord(); ./
            | HashComment /. skipToken(); ./
            | white /. skipToken(); ./
            | '.' /. makeToken($_Dot); ./
            | ',' /. makeToken($_Coma); ./
            | ';' /. makeToken($_Semi); ./
            | ':' /. makeToken($_COLON); ./
            | '(' /. makeToken($_LParen); ./
            | ')' /. makeToken($_RParen); ./
            | '[' /. makeToken($_LEnd); ./
            | ']' /. makeToken($_REnd); ./

    identifier -> Letter
                | identifier Letter
                | identifier Digit
                | identifier '_'
                | identifier '-'

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    blank_label ::= '_' ':' BlankRest
    BlankRest ::= Letter | Digit | '_'
                | BlankRest Letter
                | BlankRest Digit
                | BlankRest '_'
                | BlankRest '-'

    iriref ::= '<' IriBody '>'
    IriBody -> $empty
             | IriBody IriChar
    IriChar -> Letter | Digit | '/' | ':' | '.' | '-' | '_' | '#' | '?' | '&' | '=' | '%'

    string_q ::= '"' SLBody '"'
    string_sq ::= SingleQuote SLBodySQ SingleQuote

    SLBody -> $empty
            | SLBody NotDQ
    SLBodySQ -> $empty
              | SLBodySQ NotSQ

    NotDQ -> Letter | Digit | Space | HT | SpecialNotDQ | Escape
    NotSQ -> Letter | Digit | Space | HT | SpecialNotSQ | Escape

    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'
    SpecialNotSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | n | r | t | b | f

    number ::= Digit
             | number Digit

    HashComment ::= Sharp CommentBody
    CommentBody -> $empty
                 | CommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '$' | '_' | BackSlash

    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
