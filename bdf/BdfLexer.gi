-- BDF Lexer (LPG)
%Options list
%Options fp=BdfLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.bdf
%options template=LexerTemplateF.gi
%options filter=BdfKWLexer.gi
%Define
    $kw_lexer_class /.$BdfKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    ARG
    QUOTEDSTRING
    STARTFONT ENDFONT FONT SIZE FONTBOUNDINGBOX
    STARTPROPERTIES ENDPROPERTIES CHARS STARTCHAR ENDCHAR
    ENCODING SWIDTH DWIDTH BBX BITMAP
    FONT_ASCENT FONT_DESCENT FOUNDRY FAMILY_NAME WEIGHT_NAME SLANT
    SETWIDTH_NAME ADD_STYLE_NAME PIXEL_SIZE POINT_SIZE
    RESOLUTION_X RESOLUTION_Y SPACING AVERAGE_WIDTH
    CHARSET_REGISTRY CHARSET_ENCODING FONTNAME_REGISTRY CHARSET_COLLECTIONS
    FONT_NAME FACE_NAME COPYRIGHT FONT_VERSION
    UNDERLINE_POSITION UNDERLINE_THICKNESS X_HEIGHT CAP_HEIGHT
    RAW_ASCENT RAW_DESCENT NORM_SPACE RELATIVE_WEIGHT RELATIVE_SETWIDTH
    FIGURE_WIDTH AVG_LOWERCASE_WIDTH AVG_UPPERCASE_WIDTH
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
    Token ::= QUOTEDSTRING /. makeToken($_QUOTEDSTRING); ./
            | ARG /. checkForKeyWord(); ./
            | white /. skipToken(); ./

    -- ARG / keyword body: optional U+ prefix, optional minus, alnum/dot/dash run
    ARG ::= OptUPlus OptMinus ArgBody
    OptUPlus -> $empty | 'U' '+' | 'u' '+'
    OptMinus -> $empty | '-'
    ArgBody ::= ArgChar | ArgBody ArgChar
    ArgChar -> Letter | Digit | '-' | '.'

    QUOTEDSTRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | ArgChar | Space | HT | FF | AfterASCII | '_'
           | '+' | '/' | '(' | ')' | '*' | '!' | '@' | '~' | '%' | '&' | '^' | ':' | ';'
           | "'" | '|' | '{' | '}' | '[' | ']' | '?' | ',' | '<' | '>' | '=' | '#' | '$' | '\'

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
