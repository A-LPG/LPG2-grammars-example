-- Turing lexer subset
%Options list
%Options fp=TuringLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.turing
%options template=LexerTemplateF.gi
%options filter=TuringKWLexer.gi
%Define
    $kw_lexer_class /.$TuringKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER ID
    NUMBER ExplicitUnsignedIntegerConstant ExplicitUnsignedRealConstant ExplicitStringConstant
    COLON COMMA COLONEQ DOT DOTDOT
    EQ PLUS LIT_74144 STAR SLASH STARSTAR LT GT LTEQ GTEQ EMPTY_LIT
    LPAREN RPAREN
    PUT GET VAR INT INT_KW REAL STRING
    TYPE ARRAY OF RECORD PROCEDURE FUNCTION RESULT
    IF THEN ELSIF ELSE END LOOP EXIT WHEN CASE LABEL
    SKIP OPEN CLOSE CONST ASSERT BY FOR DECREASING
    TRUE FALSE DIV MOD AND OR NOT
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
    Token ::= ':' '=' /. makeToken($_COLONEQ); ./
            | '=' '=' /. makeToken($_EQ); ./
            | '=' /. makeToken($_COLONEQ); ./
            | '.' '.' /. makeToken($_DOTDOT); ./
            | '*' '*' /. makeToken($_STARSTAR); ./
            | '<' '=' /. makeToken($_LTEQ); ./
            | '>' '=' /. makeToken($_GTEQ); ./
            | NotEqual /. makeToken($_EMPTY_LIT); ./
            | ':' /. makeToken($_COLON); ./
            | ',' /. makeToken($_COMMA); ./
            | '.' /. makeToken($_DOT); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_LIT_74144); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | STRING_LITERAL /. makeToken($_ExplicitStringConstant); ./
            | NUMBER /. makeToken($_ExplicitUnsignedIntegerConstant); ./
            | identifier /. checkForKeyWord($_ID); ./
            | white /. skipToken(); ./
            | comment /. skipToken(); ./

    NotEqual ::= n o t '='

    identifier ::= Letter LetterOrDigitStar
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    LetterOrDigitStar -> $empty | LetterOrDigitStar LetterOrDigit
    LetterOrDigit -> Letter | Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    STRING_LITERAL ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | Special | Space | HT | FF
    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
               '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
               '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'
    NUMBER ::= Digit | NUMBER Digit
    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR

    comment ::= '%' NotNLStar
    NotNLStar -> $empty | NotNLStar NotNL
    NotNL -> Letter | Digit | Special | Space | HT | FF | DoubleQuote
%End
