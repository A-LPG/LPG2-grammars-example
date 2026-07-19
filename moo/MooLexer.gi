-- Real lexer for MooParser (not token-stream soup). Keywords via MooKWLexer.
%Options list
%Options fp=MooLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.moo
%options template=LexerTemplateF.gi
%options filter=MooKWLexer.gi

%Define
    $kw_lexer_class /.$MooKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    AMP
    AMPEQ
    AND
    ANDAND
    ARROW
    ARROWSTAR
    AS
    ASSIGN
    AT
    ATEQ
    BACKSLASH
    BACKTICK
    BANG
    BITCLEAR
    CALLED
    CARET
    CARETEQ
    CHAR_LITERAL
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    DIV
    DO
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DQUOTE
    ELLIPSIS
    ELSE
    ELSEIF
    ENDFOR
    ENDIF
    ENDTRY
    EQ
    EQEQ
    EQEQEQ
    EXCEPT
    FATARROW
    FOR
    GT
    GTE
    GTEQ
    HASH
    IDENTIFIER
    IF
    IN
    INTEGER
    LBRACE
    LBRACKET
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTE
    LTEQ
    LTGT
    MINUS
    MINUSEQ
    MINUSMINUS
    MOD
    NEQ
    NOTEQ
    NOTEQEQ
    NUMBER
    OBJREF
    OR
    OROR
    PERCENT
    PERCENTEQ
    PERMISSIONS
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    POW
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACKET
    REAL
    RECEIVE
    RETURN
    RPAREN
    RSHIFT
    RSHIFTEQ
    SEMI
    SEMICOLON
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
    STRINGLITERAL
    TILDE
    TIMES
    TO
    TRY
    UNDERSCORE
    URSHIFT
    URSHIFTEQ
    WHILE
    YIELDSTAR
    AT_ADDALIAS
    AT_CONTENTS
    AT_CREATE
    AT_DESCRIBE
    AT_DISP
    AT_DISPLAY
    AT_EDIT
    AT_KIDS
    AT_NOTEDIT
    AT_PARENT
    AT_PROGRAM
    AT_PROP
    AT_PROPERTY
    AT_RMPROP
    AT_RMPROPERTY
    AT_SET
    AT_VERB
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
    Token ::= mooName /. checkForKeyWord($_STRING); ./
            | objref   /. makeToken($_OBJREF); ./
            | perms    /. makeToken($_PERMISSIONS); ./
            | realTok  /. makeToken($_REAL); ./
            | number   /. makeToken($_INTEGER); ./
            | qstring  /. makeToken($_STRINGLITERAL); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
            | white /. skipToken(); ./
            | '@' 'r' 'm' 'p' 'r' 'o' 'p' 'e' 'r' 't' 'y' /. makeToken($_AT_RMPROPERTY); ./
            | '@' 'a' 'd' 'd' 'a' 'l' 'i' 'a' 's' /. makeToken($_AT_ADDALIAS); ./
            | '@' 'c' 'o' 'n' 't' 'e' 'n' 't' 's' /. makeToken($_AT_CONTENTS); ./
            | '@' 'd' 'e' 's' 'c' 'r' 'i' 'b' 'e' /. makeToken($_AT_DESCRIBE); ./
            | '@' 'p' 'r' 'o' 'p' 'e' 'r' 't' 'y' /. makeToken($_AT_PROPERTY); ./
            | '@' 'd' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($_AT_DISPLAY); ./
            | '@' 'n' 'o' 't' 'e' 'd' 'i' 't' /. makeToken($_AT_NOTEDIT); ./
            | '@' 'p' 'r' 'o' 'g' 'r' 'a' 'm' /. makeToken($_AT_PROGRAM); ./
            | '@' 'c' 'r' 'e' 'a' 't' 'e' /. makeToken($_AT_CREATE); ./
            | '@' 'p' 'a' 'r' 'e' 'n' 't' /. makeToken($_AT_PARENT); ./
            | '@' 'r' 'm' 'p' 'r' 'o' 'p' /. makeToken($_AT_RMPROP); ./
            | 'y' 'i' 'e' 'l' 'd' '*' /. makeToken($_YIELDSTAR); ./
            | '@' 'd' 'i' 's' 'p' /. makeToken($_AT_DISP); ./
            | '@' 'e' 'd' 'i' 't' /. makeToken($_AT_EDIT); ./
            | '@' 'k' 'i' 'd' 's' /. makeToken($_AT_KIDS); ./
            | '@' 'p' 'r' 'o' 'p' /. makeToken($_AT_PROP); ./
            | '@' 'v' 'e' 'r' 'b' /. makeToken($_AT_VERB); ./
            | '>' '>' '>' '=' /. makeToken($_URSHIFTEQ); ./
            | '@' 's' 'e' 't' /. makeToken($_AT_SET); ./
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
            | '#' /. makeToken($_HASH); ./
            | '%' /. makeToken($_PERCENT); ./
            | '&' /. makeToken($_AMP); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '*' /. makeToken($_STAR); ./
            | '+' /. makeToken($_PLUS); ./
            | ',' /. makeToken($_COMMA); ./
            | '-' /. makeToken($_MINUS); ./
            | '.' /. makeToken($_DOT); ./
            | '/' /. makeToken($_SLASH); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMI); ./
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
            | '{' /. makeToken($_LBRACE); ./
            | '|' /. makeToken($_PIPE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '~' /. makeToken($_TILDE); ./

    mooName ::= Letter mooNameRest

    mooNameRest -> $empty
                 | mooNameRest Letter
                 | mooNameRest Digit
                 | mooNameRest '!' | mooNameRest '_'

    objref ::= Sharp Digits

    perms ::= PermChar | perms PermChar

    PermChar -> r | c | x | d

    realTok ::= Digits Dot Digits

    qstring ::= '"' SLBody '"'

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
