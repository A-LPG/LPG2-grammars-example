-- Sickbay Lexer (LPG)
%Options list
%Options fp=SickbayLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.esolang.sickbay
%options template=LexerTemplateF.gi
%options filter=SickbayKWLexer.gi
%Define
    $kw_lexer_class /.$SickbayKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    IINTID
    INTCONST
    STRCONST
    INTOP
    NL
    REM
    SEMI
    COLON
    EQUAL
    LPAREN
    RPAREN
    CHR_DOLLAR
    RND_PERCENT
    LET
    GOTO
    GOSUB
    RETURN
    END
    PRINT
    PROLONG
    CUTSHORT
    DIM
    RING
    INPUT
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
    Token ::= REM         /. makeToken($_REM); ./
            | 'C' 'H' 'R' '$' /. makeToken($_CHR_DOLLAR); ./
            | 'R' 'N' 'D' '%' /. makeToken($_RND_PERCENT); ./
            | INTCONST    /. makeToken($_INTCONST); ./
            | STRCONST    /. makeToken($_STRCONST); ./
            | NL          /. makeToken($_NL); ./
            | '+'         /. makeToken($_INTOP); ./
            | '-'         /. makeToken($_INTOP); ./
            | '*'         /. makeToken($_INTOP); ./
            | '/'         /. makeToken($_INTOP); ./
            | ';'         /. makeToken($_SEMI); ./
            | ':'         /. makeToken($_COLON); ./
            | '='         /. makeToken($_EQUAL); ./
            | '('         /. makeToken($_LPAREN); ./
            | ')'         /. makeToken($_RPAREN); ./
            | identifier  /. checkForKeyWord(); ./
            | white       /. skipToken(); ./

    REM ::= 'R' 'E' 'M' RemSpaces RemBody
    RemSpaces ::= Space | HT | RemSpaces Space | RemSpaces HT
    RemBody -> $empty | RemBody RemChar
    RemChar -> Letter | Digit | SpecialRem | Space | HT | FF | '%' | AfterASCII
    SpecialRem -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                  ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                  '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '"' | '_'

    INTCONST ::= Digit | INTCONST Digit

    -- IINTID via identifier: [A-Z][A-Z0-9%]*
    identifier ::= UpperCaseLetter
                 | identifier UpperCaseLetter
                 | identifier Digit
                 | identifier '%'

    STRCONST ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialStr | Space | HT | FF
    SpecialStr -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                  '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                  '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    NL ::= LF | CR LF | CR

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> Space | HT | white Space | white HT
%End
