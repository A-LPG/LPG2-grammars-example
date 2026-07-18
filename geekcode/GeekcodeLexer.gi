-- Geekcode Lexer (LPG) — letter/punctuation tokens aligned to grammars-v4 geekcode.g4

%Options list
%Options fp=GeekcodeLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.geekcode
%options template=LexerTemplateF.gi
%options filter=GeekcodeKWLexer.gi

%Define
    $kw_lexer_class /.$GeekcodeKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    GCODE
    PLUS
    MINUS
    STAR
    SLASH
    COLON
    LPAREN
    RPAREN
    LETTER
    DIGIT
    IDENTIFIER
    DRESS
    S
    AGE
    COMPUTERS
    PERL
    LINUX
    EMACS
    WWW
    USENET
    USENET_ORACLE
    KIBO
    OS2
    MACINTOSH
    VMS
    POLITCALSOCIAL
    POLITICSECONOMIC
    CYPHERPUNKS
    PGP
    STARTREK
    BABYLON5
    XFILES
    ROLEPLAYING
    TELEVISION
    BOOKS
    DILBERT
    DOOM
    EDUCATION
    HOUSEING
    RELATIONSHIPS
    SEXU
    SEXM
    SEXF
    HAIR
    GLASSES
    PENS
    AUTO
    WEIRDNESS
    VERBAGE
    BSD386
    JEOPARDY
    MAGIC
    BARNEY
    MUSIC
    FRIENDS
    NUTRITION
    UNIX
    BSD
    ULTRIX
    AIX
    SYSV
    HPUX
    IRIX
    OSF1
    SOLARIS
    SCO
    NEXT
    NOTRIGID
    WANNABE
    FORLIVING
    NOKNOWLEDGE
    REFUSE
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
    Token ::= GCODE /. makeToken($_GCODE); ./
            | 'P' 'G' 'P' /. makeToken($_PGP); ./
            | 'P' 'S' /. makeToken($_POLITCALSOCIAL); ./
            | 'P' 'E' /. makeToken($_POLITICSECONOMIC); ./
            | 'D' 'I' /. makeToken($_DILBERT); ./
            | 't' 'v' /. makeToken($_TELEVISION); ./
            | 'a' 'u' /. makeToken($_AUTO); ./
            | 'U' 'B' /. makeToken($_BSD); ./
            | 'U' 'U' /. makeToken($_ULTRIX); ./
            | 'U' 'A' /. makeToken($_AIX); ./
            | 'U' 'V' /. makeToken($_SYSV); ./
            | 'U' 'H' /. makeToken($_HPUX); ./
            | 'U' 'I' /. makeToken($_IRIX); ./
            | 'U' 'O' /. makeToken($_OSF1); ./
            | 'U' 'S' /. makeToken($_SOLARIS); ./
            | 'U' 'C' /. makeToken($_SCO); ./
            | 'U' 'X' /. makeToken($_NEXT); ./
            | 'U' /. makeToken($_UNIX); ./
            | 'd' /. makeToken($_DRESS); ./
            | 's' /. makeToken($_S); ./
            | 'a' /. makeToken($_AGE); ./
            | 'C' /. makeToken($_COMPUTERS); ./
            | 'P' /. makeToken($_PERL); ./
            | 'L' /. makeToken($_LINUX); ./
            | 'E' /. makeToken($_EMACS); ./
            | 'W' /. makeToken($_WWW); ./
            | 'N' /. makeToken($_USENET); ./
            | 'o' /. makeToken($_USENET_ORACLE); ./
            | 'K' /. makeToken($_KIBO); ./
            | 'O' /. makeToken($_OS2); ./
            | 'M' /. makeToken($_MACINTOSH); ./
            | 'V' /. makeToken($_VMS); ./
            | 'Y' /. makeToken($_CYPHERPUNKS); ./
            | 't' /. makeToken($_STARTREK); ./
            | '5' /. makeToken($_BABYLON5); ./
            | 'X' /. makeToken($_XFILES); ./
            | 'R' /. makeToken($_ROLEPLAYING); ./
            | 'b' /. makeToken($_BOOKS); ./
            | 'D' /. makeToken($_DOOM); ./
            | 'e' /. makeToken($_EDUCATION); ./
            | 'h' /. makeToken($_HOUSEING); ./
            | 'r' /. makeToken($_RELATIONSHIPS); ./
            | 'y' /. makeToken($_SEXU); ./
            | 'z' /. makeToken($_SEXM); ./
            | 'x' /. makeToken($_SEXF); ./
            | 'H' /. makeToken($_HAIR); ./
            | 'g' /. makeToken($_GLASSES); ./
            | 'p' /. makeToken($_PENS); ./
            | 'w' /. makeToken($_WEIRDNESS); ./
            | 'v' /. makeToken($_VERBAGE); ./
            | '3' /. makeToken($_BSD386); ./
            | 'j' /. makeToken($_JEOPARDY); ./
            | 'G' /. makeToken($_MAGIC); ./
            | 'B' /. makeToken($_BARNEY); ./
            | 'u' /. makeToken($_MUSIC); ./
            | 'f' /. makeToken($_FRIENDS); ./
            | 'n' /. makeToken($_NUTRITION); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | ':' /. makeToken($_COLON); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '@' /. makeToken($_NOTRIGID); ./
            | '>' /. makeToken($_WANNABE); ./
            | '$' /. makeToken($_FORLIVING); ./
            | '?' /. makeToken($_NOKNOWLEDGE); ./
            | '!' /. makeToken($_REFUSE); ./
            | white /. skipToken(); ./

    GCODE ::= 'G' AlphaPlus SlashAlphaStar
    AlphaPlus ::= Alpha | AlphaPlus Alpha
    SlashAlphaStar ::= $empty | SlashAlphaStar '/' AlphaPlus
    Alpha -> A | B | C | D | E | F | G | H | I | J | K | L | M |
             N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR
%End
