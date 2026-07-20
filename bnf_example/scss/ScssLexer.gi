-- Real lexer for ScssParser (not token-stream soup). Keywords via ScssKWLexer.
%Options list
%Options fp=ScssLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.scss
%options template=LexerTemplateF.gi
%options filter=ScssKWLexer.gi

%Define
    $kw_lexer_class /.$ScssKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    AMP
    AMPEQ
    ANDAND
    ARROW
    ARROWSTAR
    AT
    ATEQ
    AbsLength
    Amp
    And
    Angle
    As
    At
    AtEach
    AtElse
    AtFor
    AtIf
    AtWhile
    BACKSLASH
    BACKTICK
    BANG
    BITCLEAR
    BlockEnd
    BlockStart
    CARET
    CARETEQ
    CHAR_LITERAL
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    Calc
    Colon
    Comma
    Content
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DQUOTE
    DashMatch
    Default
    Div
    Dollar
    Dot
    ELLIPSIS
    EQ
    EQEQ
    EQEQEQ
    Eq
    Error
    Extend
    FATARROW
    False
    FontFace
    FontRelative
    Format
    Forward
    Freq
    From
    Function
    GT
    GTEQ
    Greater
    HASH
    Hash
    IDENTIFIER
    Ident
    If
    Import
    Important
    In
    Include
    Includes
    Keyframes
    LBRACE
    LBRACKET
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    Lbrack
    Less
    Lparen
    MINUS
    MINUSEQ
    MINUSMINUS
    Media
    Minus
    Mixin
    NOTEQ
    NOTEQEQ
    NUMBER
    Not
    NotEq
    Number
    OROR
    Only
    Or
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    Percentage
    Pipe
    Plus
    PrefixMatch
    PseudoNot
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACKET
    RECEIVE
    RPAREN
    RSHIFT
    RSHIFTEQ
    Rbrack
    Repeat
    Require
    Resolution
    Return
    Rgba
    Rotate
    Rparen
    SEMI
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STRING
    Semi
    Space
    String_
    SubstringMatch
    SuffixMatch
    TILDE
    Through
    Tilde
    Time
    Times
    To
    True
    UNDERSCORE
    URSHIFT
    URSHIFTEQ
    Uri
    Use
    Using
    Var
    Variable
    VendorPrefix
    ViewportRelative
    Warn
    With
    YIELDSTAR
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
    Token ::= AtSign 'f' 'o' 'n' 't' '-' 'f' 'a' 'c' 'e' /. makeToken($_FontFace); ./
            | AtSign 'k' 'e' 'y' 'f' 'r' 'a' 'm' 'e' 's' /. makeToken($_Keyframes); ./
            | AtSign 'f' 'u' 'n' 'c' 't' 'i' 'o' 'n' /. makeToken($_Function); ./
            | AtSign 'i' 'n' 'c' 'l' 'u' 'd' 'e' /. makeToken($_Include); ./
            | AtSign 'r' 'e' 'q' 'u' 'i' 'r' 'e' /. makeToken($_Require); ./
            | AtSign 'f' 'o' 'r' 'w' 'a' 'r' 'd' /. makeToken($_Forward); ./
            | AtSign 'c' 'o' 'n' 't' 'e' 'n' 't' /. makeToken($_Content); ./
            | AtSign 'i' 'm' 'p' 'o' 'r' 't' /. makeToken($_Import); ./
            | AtSign 'r' 'e' 't' 'u' 'r' 'n' /. makeToken($_Return); ./
            | AtSign 'e' 'x' 't' 'e' 'n' 'd' /. makeToken($_Extend); ./
            | AtSign 'm' 'i' 'x' 'i' 'n' /. makeToken($_Mixin); ./
            | AtSign 'm' 'e' 'd' 'i' 'a' /. makeToken($_Media); ./
            | AtSign 'e' 'r' 'r' 'o' 'r' /. makeToken($_Error); ./
            | AtSign 'w' 'h' 'i' 'l' 'e' /. makeToken($_AtWhile); ./
            | AtSign 'w' 'a' 'r' 'n' /. makeToken($_Warn); ./
            | AtSign 'e' 'l' 's' 'e' /. makeToken($_AtElse); ./
            | AtSign 'e' 'a' 'c' 'h' /. makeToken($_AtEach); ./
            | AtSign 'u' 's' 'e' /. makeToken($_Use); ./
            | AtSign 'f' 'o' 'r' /. makeToken($_AtFor); ./
            | AtSign 'i' 'f' /. makeToken($_AtIf); ./
            | identifier /. checkForKeyWord(); ./
            | number     /. makeToken($_Number); ./
            | string     /. makeToken($_String_); ./
            | Space /. makeToken($_Space); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
            | white /. skipToken(); ./
            | 'y' 'i' 'e' 'l' 'd' '*' /. makeToken($_YIELDSTAR); ./
            | '>' '>' '>' '=' /. makeToken($_URSHIFTEQ); ./
            | '!' '=' '=' /. makeToken($_NOTEQEQ); ./
            | '*' '*' '=' /. makeToken($_STARSTAREQ); ./
            | '-' '>' '*' /. makeToken($_ARROWSTAR); ./
            | '.' '.' '.' /. makeToken($_ELLIPSIS); ./
            | '/' '/' '=' /. makeToken($_SLASHSLASHEQ); ./
            | '<' '<' '=' /. makeToken($_LSHIFTEQ); ./
            | '=' '=' '=' /. makeToken($_EQEQEQ); ./
            | '>' '>' '=' /. makeToken($_RSHIFTEQ); ./
            | '>' '>' '>' /. makeToken($_URSHIFT); ./
            | '?' '?' '=' /. makeToken($_QUESTQUESTEQ); ./
            | '!' '=' /. makeToken($_NOTEQ); ./
            | '%' '=' /. makeToken($_PERCENTEQ); ./
            | '&' '&' /. makeToken($_ANDAND); ./
            | '&' '=' /. makeToken($_AMPEQ); ./
            | '&' '^' /. makeToken($_BITCLEAR); ./
            | '*' '*' /. makeToken($_STARSTAR); ./
            | '*' '=' /. makeToken($_STAREQ); ./
            | '+' '+' /. makeToken($_PLUSPLUS); ./
            | '+' '=' /. makeToken($_PLUSEQ); ./
            | '-' '-' /. makeToken($_MINUSMINUS); ./
            | '-' '=' /. makeToken($_MINUSEQ); ./
            | '-' '>' /. makeToken($_ARROW); ./
            | '.' '*' /. makeToken($_DOTSTAR); ./
            | '.' '.' /. makeToken($_DOTDOT); ./
            | '/' '/' /. makeToken($_SLASHSLASH); ./
            | '/' '=' /. makeToken($_SLASHEQ); ./
            | ':' ':' /. makeToken($_COLONCOLON); ./
            | ':' '=' /. makeToken($_COLONEQ); ./
            | '<' '-' /. makeToken($_RECEIVE); ./
            | '<' '<' /. makeToken($_LSHIFT); ./
            | '<' '=' /. makeToken($_LTEQ); ./
            | '<' '>' /. makeToken($_LTGT); ./
            | '=' '=' /. makeToken($_EQEQ); ./
            | '=' '>' /. makeToken($_FATARROW); ./
            | '>' '=' /. makeToken($_GTEQ); ./
            | '>' '>' /. makeToken($_RSHIFT); ./
            | '?' '.' /. makeToken($_QUESTDOT); ./
            | '?' '?' /. makeToken($_QUESTQUEST); ./
            | '@' '=' /. makeToken($_ATEQ); ./
            | '^' '=' /. makeToken($_CARETEQ); ./
            | '|' '=' /. makeToken($_PIPEEQ); ./
            | '|' '|' /. makeToken($_OROR); ./
            | '!' /. makeToken($_BANG); ./
            | '"' /. makeToken($_DQUOTE); ./
            | '#' /. makeToken($_Hash); ./
            | '%' /. makeToken($_Percentage); ./
            | '&' /. makeToken($_AMP); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '*' /. makeToken($_STAR); ./
            | '+' /. makeToken($_PLUS); ./
            | ',' /. makeToken($_COMMA); ./
            | '-' /. makeToken($_MINUS); ./
            | '.' /. makeToken($_DOT); ./
            | '/' /. makeToken($_SLASH); ./
            | ':' /. makeToken($_Colon); ./
            | ';' /. makeToken($_Semi); ./
            | '<' /. makeToken($_LT); ./
            | '=' /. makeToken($_EQ); ./
            | '>' /. makeToken($_GT); ./
            | '?' /. makeToken($_QUESTION); ./
            | '@' /. makeToken($_AT); ./
            | '[' /. makeToken($_LBRACKET); ./
            | '\' /. makeToken($_BACKSLASH); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '^' /. makeToken($_CARET); ./
            | '`' /. makeToken($_BACKTICK); ./
            | '{' /. makeToken($_BlockStart); ./
            | '|' /. makeToken($_PIPE); ./
            | '}' /. makeToken($_BlockEnd); ./
            | '~' /. makeToken($_TILDE); ./

    identifier -> Letter
                | identifier Letter
                | identifier Digit
                | identifier '-' Letter
                | identifier '-' Digit

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _
            | AfterASCII
            | DollarSign

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digit
             | number Digit
             | number '_' Digit
             | number '.' Digit
             | number '.' Digits
             | '.' Digits

    Digits ::= Digit
             | Digits Digit

    string ::= '"' SLBody '"'
             | SingleQuote SLBodySQ SingleQuote

    SLBody -> $empty
            | SLBody NotDQ

    SLBodySQ -> $empty
              | SLBodySQ NotSQ

    NotDQ -> Letter | Digit | Space | HT | SingleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | '/' | n | r | t | b | f

    LineComment ::= '/' '/' LineCommentBody
    HashComment ::= Sharp HashCommentBody
    HashCommentBody -> $empty
                     | HashCommentBody NotNL
    LineCommentBody -> $empty
                     | LineCommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
