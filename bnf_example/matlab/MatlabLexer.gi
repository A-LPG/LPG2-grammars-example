-- Matlab Lexer (LPG)
-- Ported from antlr/grammars-v4 matlab/matlab.g4

%Options list
%Options fp=MatlabLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.matlab
%options template=LexerTemplateF.gi
%options filter=MatlabKWLexer.gi

%Define
    $kw_lexer_class /.$MatlabKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    CONSTANT
    STRING_LITERAL
    ARRAYMUL
    ARRAYDIV
    ARRAYRDIV
    ARRAYPOW
    NCTRANSPOSE
    LE_OP
    GE_OP
    EQ_OP
    NE_OP
    TRANSPOSE
    BREAK
    RETURN
    FUNCTION
    FOR
    WHILE
    END
    GLOBAL
    IF
    CLEAR
    ELSE
    ELSEIF
    PLUS
    MINUS
    STAR
    SLASH
    BACKSLASH
    CARET
    EQ
    LT
    GT
    AMP
    PIPE
    TILDE
    COLON
    COMMA
    SEMI
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
    CR
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
    Token ::= identifier /. checkForKeyWord(); ./
            | constant   /. makeToken($_CONSTANT); ./
            | stringlit  /. makeToken($_STRING_LITERAL); ./
            | LineComment /. skipToken(); ./
            | horiz_ws   /. skipToken(); ./
            | newline    /. makeToken($_CR); ./
            | '.' '*'    /. makeToken($_ARRAYMUL); ./
            | '.' '/'    /. makeToken($_ARRAYRDIV); ./
            | '.' '\'   /. makeToken($_ARRAYDIV); ./
            | '.' '^'    /. makeToken($_ARRAYPOW); ./
            | '.' "'"    /. makeToken($_NCTRANSPOSE); ./
            | '<' '='    /. makeToken($_LE_OP); ./
            | '>' '='    /. makeToken($_GE_OP); ./
            | '=' '='    /. makeToken($_EQ_OP); ./
            | '~' '='    /. makeToken($_NE_OP); ./
            | '+'        /. makeToken($_PLUS); ./
            | '-'        /. makeToken($_MINUS); ./
            | '*'        /. makeToken($_STAR); ./
            | '/'        /. makeToken($_SLASH); ./
            | '\'       /. makeToken($_BACKSLASH); ./
            | '^'        /. makeToken($_CARET); ./
            | '='        /. makeToken($_EQ); ./
            | '<'        /. makeToken($_LT); ./
            | '>'        /. makeToken($_GT); ./
            | '&'        /. makeToken($_AMP); ./
            | '|'        /. makeToken($_PIPE); ./
            | '~'        /. makeToken($_TILDE); ./
            | ':'        /. makeToken($_COLON); ./
            | ','        /. makeToken($_COMMA); ./
            | ';'        /. makeToken($_SEMI); ./
            | '('        /. makeToken($_LPAREN); ./
            | ')'        /. makeToken($_RPAREN); ./
            | '['        /. makeToken($_LBRACKET); ./
            | ']'        /. makeToken($_RBRACKET); ./

    identifier -> Letter
                | identifier Letter
                | identifier Digit
                | identifier '_'

    Letter -> LowerCaseLetter | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    constant ::= number
               | number ExpPart

    number ::= Digits
             | Digits '.' Digits
             | '.' Digits

    Digits ::= Digit
             | Digits Digit

    ExpPart ::= Exp Digits
              | Exp '+' Digits
              | Exp '-' Digits
    Exp -> e | E

    stringlit ::= "'" SBody "'"

    SBody -> $empty
           | SBody SChar
           | SBody "'" "'"

    SChar -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | BackSlash

    LineComment ::= '%' CommentBody
    CommentBody -> $empty
                 | CommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    horiz_ws -> Space | HT | FF
              | horiz_ws Space
              | horiz_ws HT
              | horiz_ws FF

    newline ::= LF
              | CR
              | CR LF
              | newline LF
              | newline CR
%End
