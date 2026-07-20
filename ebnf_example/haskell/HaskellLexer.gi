-- Real lexer for HaskellParser (not token-stream soup). Keywords via HaskellKWLexer.
%Options list
%Options fp=HaskellLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.haskell
%options template=LexerTemplateF.gi
%options filter=HaskellKWLexer.gi

%Define
    $kw_lexer_class /.$HaskellKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    AMP
    AMPEQ
    ANDAND
    ANN
    ANYCLASS
    ARROW
    ARROWSTAR
    AS
    AT
    ATEQ
    AopenParen
    BACKSLASH
    BACKTICK
    BANG
    BITCLEAR
    BY
    CAPI
    CARET
    CARETEQ
    CASE
    CCALL
    CCURLY
    CHAR
    CHAR_LITERAL
    CLASS
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    COMPLETE
    CONID
    CPLUSPLUS
    CPPCALL
    CTYPE
    DATA
    DECIMAL
    DEFAULT
    DEPRECATED
    DERIVING
    DO
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DQUOTE
    ELLIPSIS
    ELSE
    EQ
    EQEQ
    EQEQEQ
    EXPORT
    FAMILY
    FATARROW
    FLOAT
    FORALL
    FOREIGN
    GROUP
    GT
    GTEQ
    HASH
    HEXADECIMAL
    HIDING
    IDENTIFIER
    IF
    IMPORT
    IN
    INCOHERENT
    INFIX
    INFIXL
    INFIXR
    INLINE
    INSTANCE
    INTERRUPTIBLE
    JAVASCRIPT
    JSCALL
    LANGUAGE
    LBRACE
    LBRACKET
    LCASE
    LET
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MDO
    MINIMAL
    MINUS
    MINUSEQ
    MINUSMINUS
    MODULE
    NEWLINE
    NEWTYPE
    NOINLINE
    NOTEQ
    NOTEQEQ
    NOUNPACK
    NUMBER
    OCTAL
    OCURLY
    OF
    OPTIONS
    OPTIONS_GHC
    OP_17764
    OP_2297
    OP_306
    OP_3577
    OP_42250
    OP_55434
    OP_63039
    OP_6677
    OP_72325
    OP_73196
    OP_86933
    OP_88377
    OP_94043
    OP_94994
    OROR
    OVERLAPPABLE
    OVERLAPPING
    OVERLAPS
    PATTERN
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    QUALIFIED
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACKET
    REC
    RECEIVE
    ROLE
    RPAREN
    RSHIFT
    RSHIFTEQ
    RULES
    SAFE
    SCC
    SEMI
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SOURCE
    SPECIALISE
    SPECIALISE_INLINE
    SPECINLINE
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STDCALL
    STOCK
    STRING
    THEN
    TILDE
    TYPE
    UNDERSCORE
    UNPACK
    UNSAFE
    URSHIFT
    URSHIFTEQ
    USING
    VARID
    VCCURLY
    VIA
    VOCURLY
    WARNING
    WHERE
    YIELDSTAR
    _D_
    _P_
    _T_
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
    Token ::= conid /. checkForKeyWord($_CONID); ./
            | varid /. checkForKeyWord($_VARID); ./
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRING); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
            | newline    /. makeToken($_NEWLINE); ./
            | white /. skipToken(); ./
            | 'S' 'P' 'E' 'C' 'I' 'A' 'L' 'I' 'S' 'E' '_' 'I' 'N' 'L' 'I' 'N' 'E' /. makeToken($_SPECIALISE_INLINE); ./
            | 'O' 'P' 'T' 'I' 'O' 'N' 'S' '_' 'G' 'H' 'C' /. makeToken($_OPTIONS_GHC); ./
            | 'y' 'i' 'e' 'l' 'd' '*' /. makeToken($_YIELDSTAR); ./
            | '>' '>' '>' '=' /. makeToken($_URSHIFTEQ); ./
            | BackSlash SingleQuote BackSlash SingleQuote /. makeToken($_OP_42250); ./
            | '!' '=' '=' /. makeToken($_NOTEQEQ); ./
            | '#' '-' '}' /. makeToken($_OP_88377); ./
            | '*' '*' '=' /. makeToken($_STARSTAREQ); ./
            | '-' '<' '<' /. makeToken($_OP_55434); ./
            | '-' '>' '*' /. makeToken($_ARROWSTAR); ./
            | '.' '.' '.' /. makeToken($_ELLIPSIS); ./
            | '/' '/' '=' /. makeToken($_SLASHSLASHEQ); ./
            | '<' '<' '=' /. makeToken($_LSHIFTEQ); ./
            | '=' '=' '=' /. makeToken($_EQEQEQ); ./
            | '>' '>' '-' /. makeToken($_OP_73196); ./
            | '>' '>' '=' /. makeToken($_RSHIFTEQ); ./
            | '>' '>' '>' /. makeToken($_URSHIFT); ./
            | '?' '?' '=' /. makeToken($_QUESTQUESTEQ); ./
            | '[' 'd' '|' /. makeToken($__D_); ./
            | '[' 'p' '|' /. makeToken($__P_); ./
            | '[' 't' '|' /. makeToken($__T_); ./
            | '[' '|' '|' /. makeToken($_OP_72325); ./
            | '{' '-' '#' /. makeToken($_OP_306); ./
            | '|' '|' ']' /. makeToken($_OP_63039); ./
            | '!' '=' /. makeToken($_NOTEQ); ./
            | '#' ')' /. makeToken($_OP_17764); ./
            | '$' '$' /. makeToken($_OP_94043); ./
            | '%' '=' /. makeToken($_PERCENTEQ); ./
            | '&' '&' /. makeToken($_ANDAND); ./
            | '&' '=' /. makeToken($_AMPEQ); ./
            | '&' '^' /. makeToken($_BITCLEAR); ./
            | '(' '#' /. makeToken($_OP_86933); ./
            | '*' '*' /. makeToken($_STARSTAR); ./
            | '*' '=' /. makeToken($_STAREQ); ./
            | '+' '+' /. makeToken($_PLUSPLUS); ./
            | '+' '=' /. makeToken($_PLUSEQ); ./
            | '-' '-' /. makeToken($_MINUSMINUS); ./
            | '-' '<' /. makeToken($_OP_94994); ./
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
            | '>' '-' /. makeToken($_OP_2297); ./
            | '>' '=' /. makeToken($_GTEQ); ./
            | '>' '>' /. makeToken($_RSHIFT); ./
            | '?' '.' /. makeToken($_QUESTDOT); ./
            | '?' '?' /. makeToken($_QUESTQUEST); ./
            | '@' '=' /. makeToken($_ATEQ); ./
            | '[' '|' /. makeToken($_OP_6677); ./
            | BackSlash SingleQuote /. makeToken($_SQUOTE); ./
            | BackSlash BackSlash /. makeToken($_BACKSLASH); ./
            | '^' '=' /. makeToken($_CARETEQ); ./
            | '|' '=' /. makeToken($_PIPEEQ); ./
            | '|' ']' /. makeToken($_OP_3577); ./
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

    varid ::= LowerCaseLetter varidRest

    conid ::= UpperCaseLetter conidRest

    varidRest -> $empty
               | varidRest Letter
               | varidRest Digit
               | varidRest HASH

    conidRest -> $empty
               | conidRest Letter
               | conidRest Digit
               | conidRest HASH

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
    WSChar -> Space | HT | FF

    newline -> LF
             | CR LF
             | CR
%End
