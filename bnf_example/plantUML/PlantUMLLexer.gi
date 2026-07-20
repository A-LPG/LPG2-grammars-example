-- PlantUML Lexer (LPG) — aligned to grammars-v4 plantUML/PlantUMLLexer.g4
%Options list
%Options fp=PlantUMLLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.plantUML
%options template=LexerTemplateF.gi
%options filter=PlantUMLKWLexer.gi

%Define
    $kw_lexer_class /.$PlantUMLKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NUMBER
    FLOAT_LITERAL
    STARTUML
    ENDUML
    CLASS
    ENUM
    INTERFACE
    ABSTRACT
    EXTENDS
    NEWLINE
    GT
    LT
    PLUS
    DASH
    DOT
    DOUBLE_DOT
    STAR
    COMMA
    LPAREN
    RPAREN
    LBRACK
    RBRACK
    AMP
    EQUALS
    CLASS_BODY_START
    BODY_CLOSE
    BODY_OPEN
    BODY_INLINE_BRACES
    BODY_CONTENT
    BODY_NL
    STEREOTYPE_TEXT
    ASSOC_DETAIL
    AFTER_COLON_TEXT
    NULL_LITERAL
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
    Token ::= STARTUML /. makeToken($_STARTUML); ./
            | ENDUML   /. makeToken($_ENDUML); ./
            | STEREOTYPE_TEXT /. makeToken($_STEREOTYPE_TEXT); ./
            | ASSOC_DETAIL /. makeToken($_ASSOC_DETAIL); ./
            | AFTER_COLON_TEXT /. makeToken($_AFTER_COLON_TEXT); ./
            | CLASS_BODY_START /. makeToken($_CLASS_BODY_START); ./
            | BODY_CLOSE /. makeToken($_BODY_CLOSE); ./
            | BODY_INLINE_BRACES /. makeToken($_BODY_INLINE_BRACES); ./
            | FLOAT_LITERAL /. makeToken($_FLOAT_LITERAL); ./
            | NUMBER   /. makeToken($_NUMBER); ./
            | IDENTIFIER /. checkForKeyWord(); ./
            | GT       /. makeToken($_GT); ./
            | LT       /. makeToken($_LT); ./
            | PLUS     /. makeToken($_PLUS); ./
            | DASH     /. makeToken($_DASH); ./
            | DOUBLE_DOT /. makeToken($_DOUBLE_DOT); ./
            | DOT      /. makeToken($_DOT); ./
            | STAR     /. makeToken($_STAR); ./
            | COMMA    /. makeToken($_COMMA); ./
            | LPAREN   /. makeToken($_LPAREN); ./
            | RPAREN   /. makeToken($_RPAREN); ./
            | LBRACK   /. makeToken($_LBRACK); ./
            | RBRACK   /. makeToken($_RBRACK); ./
            | AMP      /. makeToken($_AMP); ./
            | EQUALS   /. makeToken($_EQUALS); ./
            | NEWLINE  /. makeToken($_NEWLINE); ./
            | SLComment /. skipToken(); ./
            | MLComment /. skipToken(); ./
            | white    /. skipToken(); ./

    STARTUML ::= '@' 's' 't' 'a' 'r' 't' 'u' 'm' 'l'
    ENDUML   ::= '@' 'e' 'n' 'd' 'u' 'm' 'l'

    STEREOTYPE_TEXT ::= '<' '<' NotGTStar '>' '>'
    NotGTStar -> $empty | NotGTStar NotGT
    NotGT -> Letter | Digit | Space | HT | Slash | Minus | Plus | Star | Colon | Comma | Dot | AfterASCII | '_'

    ASSOC_DETAIL ::= '"' NotDQStar '"'
    NotDQStar -> $empty | NotDQStar NotDQ
    NotDQ -> Letter | Digit | Space | HT | AfterASCII | '_' | Plus | Minus | Dot

    AFTER_COLON_TEXT ::= Colon NotNLPlus

    CLASS_BODY_START ::= LeftBrace

    BODY_INLINE_BRACES ::= LeftBrace BodyInlineChars RightBrace
    BodyInlineChars -> $empty | BodyInlineChars BodyInlineChar
    BodyInlineChar -> Letter | Digit | Space | HT | Plus | Minus | Dot | Colon | Comma | AfterASCII | '_'

    BODY_OPEN ::= LeftBrace
    BODY_CLOSE ::= RightBrace
    BODY_CONTENT ::= NotBraceNLPlus
    BODY_NL ::= LF | CR

    NotBraceNLPlus -> NotBraceNLChar | NotBraceNLPlus NotBraceNLChar
    NotBraceNLChar -> Letter | Digit | Space | HT | Plus | Minus | Dot | Colon | Comma | AfterASCII | '_'

    DOUBLE_DOT ::= Dot Dot
    DASH ::= Minus
    GT ::= GreaterThan
    LT ::= LessThan
    COMMA ::= Comma
    LPAREN ::= LeftParen
    RPAREN ::= RightParen
    LBRACK ::= LeftBracket
    RBRACK ::= RightBracket
    AMP ::= Sharp
    EQUALS ::= Equal
    PLUS ::= Plus
    DOT ::= Dot
    STAR ::= Star

    FLOAT_LITERAL ::= DigitPlus Dot DigitPlus
    NUMBER ::= DigitPlus
    DigitPlus ::= Digit | DigitPlus Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    IDENTIFIER ::= IdStart | IDENTIFIER IdPart
    IdStart -> Letter | '_'
    IdPart -> Letter | Digit | '_'
    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    NEWLINE ::= LF | CR

    NotNLPlus ::= NotNLChar | NotNLPlus NotNLChar
    NotNLChar -> Letter | Digit | Space | HT | Plus | Minus | Dot | Comma | AfterASCII | '_'

    SLComment ::= Slash Slash SLCBody
    SLCBody -> $empty | SLCBody NotNL
    MLComment ::= Slash Star MLCBody Star Slash
    MLCBody -> $empty | MLCBody NotStar | MLCBody Star NotSlash
    NotStar -> Letter | Digit | Space | HT | LF | CR | AfterASCII | '_' | Plus | Minus | Dot
    NotSlash -> Letter | Digit | Space | HT | LF | CR | AfterASCII | '_' | Star | Plus | Minus | Dot
    NotNL -> Letter | Digit | Space | HT | FF | AfterASCII | '_'

    white -> WSChar | white WSChar
    WSChar -> Space | HT | FF
%End
