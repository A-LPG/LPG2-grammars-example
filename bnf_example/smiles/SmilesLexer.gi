-- Smiles char lexer matching SmilesParser letter tokens
%Options list
%Options fp=SmilesLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.smiles
%options template=LexerTemplateF.gi
%options filter=SmilesKWLexer.gi
%Define
    $kw_lexer_class /.$SmilesKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    DIGIT
    LBRACKET
    RBRACKET
    LPAREN
    RPAREN
    EQ
    HASH
    COLON
    SLASH
    BSLASH
    ATAT
    AT
    PLUS
    MINUS
    PERCENT
    STAR
    DOT
    PLUSPLUS
    MINUSMINUS
    UA
    UB
    UC
    UD
    UE
    UF
    UG
    UH
    UI
    UJ
    UK
    UL
    UM
    UN
    UO
    UP
    UQ
    UR
    US
    UT
    UU
    UV
    UW
    UX
    UY
    UZ
    LA
    LB
    LC
    LD
    LE
    LF
    LG
    LH
    LI
    LJ
    LK
    LL
    LM
    LN
    LO
    LP
    LQ
    LR
    LS
    LT
    LU
    LV
    LW
    LX
    LY
    LZ
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
    Token ::= HashComment /. skipToken(); ./
            | white /. skipToken(); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '=' /. makeToken($_EQ); ./
            | '#' /. makeToken($_HASH); ./
            | ':' /. makeToken($_COLON); ./
            | '/' /. makeToken($_SLASH); ./
            | BackSlash /. makeToken($_BSLASH); ./
            | '@' '@' /. makeToken($_ATAT); ./
            | '@' /. makeToken($_AT); ./
            | '+' '+' /. makeToken($_PLUSPLUS); ./
            | '-' '-' /. makeToken($_MINUSMINUS); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '%' /. makeToken($_PERCENT); ./
            | '*' /. makeToken($_STAR); ./
            | '.' /. makeToken($_DOT); ./
            | '0' /. makeToken($_DIGIT); ./
            | '1' /. makeToken($_DIGIT); ./
            | '2' /. makeToken($_DIGIT); ./
            | '3' /. makeToken($_DIGIT); ./
            | '4' /. makeToken($_DIGIT); ./
            | '5' /. makeToken($_DIGIT); ./
            | '6' /. makeToken($_DIGIT); ./
            | '7' /. makeToken($_DIGIT); ./
            | '8' /. makeToken($_DIGIT); ./
            | '9' /. makeToken($_DIGIT); ./
            | 'A' /. makeToken($_UA); ./
            | 'B' /. makeToken($_UB); ./
            | 'C' /. makeToken($_UC); ./
            | 'D' /. makeToken($_UD); ./
            | 'E' /. makeToken($_UE); ./
            | 'F' /. makeToken($_UF); ./
            | 'G' /. makeToken($_UG); ./
            | 'H' /. makeToken($_UH); ./
            | 'I' /. makeToken($_UI); ./
            | 'J' /. makeToken($_UJ); ./
            | 'K' /. makeToken($_UK); ./
            | 'L' /. makeToken($_UL); ./
            | 'M' /. makeToken($_UM); ./
            | 'N' /. makeToken($_UN); ./
            | 'O' /. makeToken($_UO); ./
            | 'P' /. makeToken($_UP); ./
            | 'Q' /. makeToken($_UQ); ./
            | 'R' /. makeToken($_UR); ./
            | 'S' /. makeToken($_US); ./
            | 'T' /. makeToken($_UT); ./
            | 'U' /. makeToken($_UU); ./
            | 'V' /. makeToken($_UV); ./
            | 'W' /. makeToken($_UW); ./
            | 'X' /. makeToken($_UX); ./
            | 'Y' /. makeToken($_UY); ./
            | 'Z' /. makeToken($_UZ); ./
            | 'a' /. makeToken($_LA); ./
            | 'b' /. makeToken($_LB); ./
            | 'c' /. makeToken($_LC); ./
            | 'd' /. makeToken($_LD); ./
            | 'e' /. makeToken($_LE); ./
            | 'f' /. makeToken($_LF); ./
            | 'g' /. makeToken($_LG); ./
            | 'h' /. makeToken($_LH); ./
            | 'i' /. makeToken($_LI); ./
            | 'j' /. makeToken($_LJ); ./
            | 'k' /. makeToken($_LK); ./
            | 'l' /. makeToken($_LL); ./
            | 'm' /. makeToken($_LM); ./
            | 'n' /. makeToken($_LN); ./
            | 'o' /. makeToken($_LO); ./
            | 'p' /. makeToken($_LP); ./
            | 'q' /. makeToken($_LQ); ./
            | 'r' /. makeToken($_LR); ./
            | 's' /. makeToken($_LS); ./
            | 't' /. makeToken($_LT); ./
            | 'u' /. makeToken($_LU); ./
            | 'v' /. makeToken($_LV); ./
            | 'w' /. makeToken($_LW); ./
            | 'x' /. makeToken($_LX); ./
            | 'y' /. makeToken($_LY); ./
            | 'z' /. makeToken($_LZ); ./

    HashComment ::= Sharp HashCommentBody
    HashCommentBody -> $empty | HashCommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | ':' | ';' | ',' | '.' | '=' | '$'
    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
