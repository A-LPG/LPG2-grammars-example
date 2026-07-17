-- BibTeX Lexer (LPG) — quoted-string + integer values (brace values via curated examples)
%Options list
%Options fp=BibtexLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.bibtex
%options template=LexerTemplateF.gi
%options filter=BibtexKWLexer.gi
%Define
    $kw_lexer_class /.$BibtexKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    STRING_LITERAL
    INTEGER_LITERAL
    EQ COMMA LBRACE RBRACE LPAREN RPAREN
    ARTICLE BOOK BOOKLET INBOOK INCOLLECTION INPROCEEDINGS
    PROCEEDINGS MANUAL MASTERTHESIS PHDTHESIS MISC TECHREPORT UNPUBLISHED
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
    Token ::= '=' /. makeToken($_EQ); ./
            | ',' /. makeToken($_COMMA); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '@' 'a' 'r' 't' 'i' 'c' 'l' 'e' /. makeToken($_ARTICLE); ./
            | '@' 'i' 'n' 'p' 'r' 'o' 'c' 'e' 'e' 'd' 'i' 'n' 'g' 's' /. makeToken($_INPROCEEDINGS); ./
            | '@' 'i' 'n' 'c' 'o' 'l' 'l' 'e' 'c' 't' 'i' 'o' 'n' /. makeToken($_INCOLLECTION); ./
            | '@' 'm' 'a' 's' 't' 'e' 'r' 't' 'h' 'e' 's' 'i' 's' /. makeToken($_MASTERTHESIS); ./
            | '@' 't' 'e' 'c' 'h' 'r' 'e' 'p' 'o' 'r' 't' /. makeToken($_TECHREPORT); ./
            | '@' 'u' 'n' 'p' 'u' 'b' 'l' 'i' 's' 'h' 'e' 'd' /. makeToken($_UNPUBLISHED); ./
            | '@' 'p' 'r' 'o' 'c' 'e' 'e' 'd' 'i' 'n' 'g' 's' /. makeToken($_PROCEEDINGS); ./
            | '@' 'p' 'h' 'd' 't' 'h' 'e' 's' 'i' 's' /. makeToken($_PHDTHESIS); ./
            | '@' 'b' 'o' 'o' 'k' 'l' 'e' 't' /. makeToken($_BOOKLET); ./
            | '@' 'i' 'n' 'b' 'o' 'o' 'k' /. makeToken($_INBOOK); ./
            | '@' 'm' 'a' 'n' 'u' 'a' 'l' /. makeToken($_MANUAL); ./
            | '@' 'b' 'o' 'o' 'k' /. makeToken($_BOOK); ./
            | '@' 'm' 'i' 's' 'c' /. makeToken($_MISC); ./
            | STRING_LITERAL /. makeToken($_STRING_LITERAL); ./
            | INTEGER_LITERAL /. makeToken($_INTEGER_LITERAL); ./
            | identifier /. makeToken($_IDENTIFIER); ./
            | white /. skipToken(); ./
            | comment /. skipToken(); ./

    identifier ::= IdStart IdRestStar
    IdStart -> a | b | c | d | e | f | g | h | i | j | k | l | m |
               n | o | p | q | r | s | t | u | v | w | x | y | z |
               A | B | C | D | E | F | G | H | I | J | K | L | M |
               N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    IdRestStar -> $empty | IdRestStar IdRest
    IdRest -> IdStart | Digit | '-'
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    INTEGER_LITERAL ::= DigitPlus
    DigitPlus ::= Digit | DigitPlus Digit

    STRING_LITERAL ::= '"' QBody '"'
    QBody -> $empty | QBody NotDQ
    NotDQ -> IdStart | Digit | Special | Space | HT | FF | Escape
    Escape ::= '\' EscapeChar
    EscapeChar -> '"' | '\' | '/' | 'b' | 'f' | 'n' | 'r' | 't' | IdStart | Digit
    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
               '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' |
               '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | "'"

    comment ::= '%' NotNLStar
    NotNLStar -> $empty | NotNLStar NotNL
    NotNL -> IdStart | Digit | Special | Space | HT | FF | AfterASCII | "'" | '\'

    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR
%End
