-- ABB RAPID Lexer (LPG)
%Options list
%Options fp=AbbLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.abb
%options template=LexerTemplateF.gi
%options filter=AbbKWLexer.gi
%Define
    $kw_lexer_class /.$AbbKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    INTLITERAL FLOATLITERAL STRINGLITERAL CHARLITERAL
    BOOLLITERAL
    ON_CALL OFF_CALL
    EQUALS COMMA COLON SEMICOLON
    BRACKET_OPEN BRACKET_CLOSE
    SQUARE_OPEN SQUARE_CLOSE
    CURLY_OPEN CURLY_CLOSE
    PLUS MINUS MULTIPLY
    NEWLINE
    MODULE
    ENDMODULE
    PROC
    ENDPROC
    LOCAL
    CONST
    PERS
    VAR
    TOOLDATA
    WOBJDATA
    SPEEDDATA
    ZONEDATA
    CLOCK
    BOOL
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
    Token ::= ':' '=' /. makeToken($_EQUALS); ./
            | ',' /. makeToken($_COMMA); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMICOLON); ./
            | '(' /. makeToken($_BRACKET_OPEN); ./
            | ')' /. makeToken($_BRACKET_CLOSE); ./
            | '[' /. makeToken($_SQUARE_OPEN); ./
            | ']' /. makeToken($_SQUARE_CLOSE); ./
            | '{' /. makeToken($_CURLY_OPEN); ./
            | '}' /. makeToken($_CURLY_CLOSE); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_MULTIPLY); ./
            | '\' 'O' 'N' /. makeToken($_ON_CALL); ./
            | '\' 'O' 'n' /. makeToken($_ON_CALL); ./
            | '\' 'o' 'N' /. makeToken($_ON_CALL); ./
            | '\' 'o' 'n' /. makeToken($_ON_CALL); ./
            | '\' 'O' 'F' 'F' /. makeToken($_OFF_CALL); ./
            | '\' 'O' 'f' 'f' /. makeToken($_OFF_CALL); ./
            | '\' 'o' 'F' 'F' /. makeToken($_OFF_CALL); ./
            | '\' 'o' 'f' 'f' /. makeToken($_OFF_CALL); ./
            | STRINGLITERAL /. makeToken($_STRINGLITERAL); ./
            | CHARLITERAL /. makeToken($_CHARLITERAL); ./
            | FLOATLITERAL /. makeToken($_FLOATLITERAL); ./
            | INTLITERAL /. makeToken($_INTLITERAL); ./
            | identifier /. checkForKeyWord(); ./
            | NEWLINE /. makeToken($_NEWLINE); ./
            | white /. skipToken(); ./
            | line_comment /. skipToken(); ./

    identifier ::= Letter LetterOrDigitStar
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    LetterOrDigitStar -> $empty | LetterOrDigitStar LetterOrDigit
    LetterOrDigit -> Letter | Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    INTLITERAL ::= DigitPlus
    DigitPlus ::= Digit | DigitPlus Digit

    FLOATLITERAL ::= DigitPlus '.' DigitStar
    DigitStar -> $empty | DigitStar Digit

    STRINGLITERAL ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | Special | Space | HT | FF | Escape
    Escape ::= '\' EscapeChar
    EscapeChar -> '"' | '\' | '/' | 'b' | 'f' | 'n' | 'r' | 't' | Letter | Digit

    CHARLITERAL ::= "'" NotSQ "'"
    NotSQ -> Letter | Digit | Special | Space | HT | Escape | '"'

    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~'
             | '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}'
             | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    NEWLINE ::= LF | CR | CR LF

    line_comment ::= '!' NotNLStar
    NotNLStar -> $empty | NotNLStar NotNL
    NotNL -> Letter | Digit | Special | Space | HT | FF | AfterASCII | '"' | "'" | '\'

    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF
%End
