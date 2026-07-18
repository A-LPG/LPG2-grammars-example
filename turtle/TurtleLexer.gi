-- Turtle lexer subset: @prefix / IRIREF / PrefixedName
%Options list
%Options fp=TurtleLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.turtle
%options template=LexerTemplateF.gi
%options filter=TurtleKWLexer.gi
%Define
    $kw_lexer_class /.$TurtleKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    String NumericLiteral
    DOT SEMI COMMA COLON
    LBRACKET RBRACKET LPAREN RPAREN
    PREFIX BASE A TRUE FALSE
    IRIREF PrefixedName
    BlankNode LANGTAG OP_40132
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
    BackSlash    ::= '\\'
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
    Token ::= AtPrefix /. makeToken($_PREFIX); ./
            | AtBase /. makeToken($_BASE); ./
            | '.' /. makeToken($_DOT); ./
            | ';' /. makeToken($_SEMI); ./
            | ',' /. makeToken($_COMMA); ./
            | ':' /. makeToken($_COLON); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '^' '^' /. makeToken($_OP_40132); ./
            | IRIREF /. makeToken($_IRIREF); ./
            | BlankNode /. makeToken($_BlankNode); ./
            | LANGTAG /. makeToken($_LANGTAG); ./
            | PrefixedName /. makeToken($_PrefixedName); ./
            | Namespace /.
                  makeToken(getLeftSpan(), getRightSpan() - 1, $_IDENTIFIER);
                  makeToken(getRightSpan(), getRightSpan(), $_COLON);
              ./
            | STRING /. makeToken($_String); ./
            | NUMBER /. makeToken($_NumericLiteral); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./
            | hashComment /. skipToken(); ./

    AtPrefix ::= '@' p r e f i x
    AtBase ::= '@' b a s e

    IRIREF ::= '<' IRIBody '>'
    IRIBody -> $empty | IRIBody IRIChar
    IRIChar -> Letter | Digit | '/' | ':' | '.' | '_' | '-' | '#' | '?' | '=' | '&' | '%' | '+'

    PrefixedName ::= IDENT_PART ':' IDENT_PART
                   | ':' IDENT_PART
    Namespace ::= IDENT_PART ':'
    IDENT_PART ::= Letter LetterOrDigitStar

    BlankNode ::= '_' ':' IDENT_PART
    LANGTAG ::= '@' Letter LangTail
    LangTail -> $empty | LangTail LetterOrDigit | LangTail '-'

    identifier ::= Letter LetterOrDigitStar
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    LetterOrDigitStar -> $empty | LetterOrDigitStar LetterOrDigit
    LetterOrDigit -> Letter | Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | Special | Space | HT | FF
    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
               '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
               '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'
    NUMBER ::= Digit | NUMBER Digit
    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR

    hashComment ::= '#' NotNLStar
    NotNLStar -> $empty | NotNLStar NotNL
    NotNL -> Letter | Digit | Special | Space | HT | FF | DoubleQuote
%End
