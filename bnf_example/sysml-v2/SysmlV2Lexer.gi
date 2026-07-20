-- Real lexer for SysmlV2Parser (not token-stream soup). Keywords via SysmlV2KWLexer.
%Options list
%Options fp=SysmlV2Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sysml_v2
%options template=LexerTemplateF.gi
%options filter=SysmlV2KWLexer.gi

%Define
    $kw_lexer_class /.$SysmlV2KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABOUT
    ABSTRACT
    ACCEPT
    ACTION
    ACTOR
    AFTER
    ALIAS
    ALL
    ALLOCATE
    ALLOCATION
    AMP
    AMPEQ
    ANALYSIS
    AND
    ANDAND
    ARROW
    ARROWSTAR
    AS
    ASSERT
    ASSIGN
    ASSOC
    ASSUME
    AT
    ATEQ
    ATTRIBUTE
    AT_AT
    AT_SIGN
    BACKSLASH
    BACKTICK
    BANG
    BANG_EQ
    BANG_EQ_EQ
    BEHAVIOR
    BIND
    BINDING
    BITCLEAR
    BOOL
    BY
    CALC
    CARET
    CARETEQ
    CASE
    CHAINS
    CHAR_LITERAL
    CLASS
    CLASSIFIER
    COLON
    COLONCOLON
    COLONEQ
    COLON_COLON
    COLON_COLON_GT
    COLON_EQ
    COLON_GT
    COLON_GT_GT
    COMMA
    COMMENT
    COMPOSITE
    CONCERN
    CONJUGATE
    CONJUGATES
    CONJUGATION
    CONNECT
    CONNECTION
    CONNECTOR
    CONST
    CONSTANT
    CONSTRAINT
    CROSSES
    DATATYPE
    DECIDE
    DEF
    DEFAULT
    DEFINED
    DEPENDENCY
    DERIVED
    DIFFERENCES
    DISJOINING
    DISJOINT
    DO
    DOC
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOT_DOT
    DOT_QUESTION
    DOUBLE_STRING
    DQUOTE
    ELLIPSIS
    ELSE
    END
    ENTRY
    ENUM
    EQ
    EQEQ
    EQEQEQ
    EQ_EQ
    EQ_EQ_EQ
    EVENT
    EXHIBIT
    EXIT
    EXPOSE
    EXPR
    FALSE
    FATARROW
    FAT_ARROW
    FEATURE
    FEATURED
    FEATURING
    FILTER
    FIRST
    FLOW
    FOR
    FORK
    FRAME
    FROM
    FUNCTION
    GE
    GT
    GTEQ
    HASH
    HASTYPE
    IDENTIFIER
    IF
    IMPLIES
    IMPORT
    IN
    INCLUDE
    INDIVIDUAL
    INOUT
    INTEGER
    INTERACTION
    INTERFACE
    INTERSECTS
    INV
    INVERSE
    INVERTING
    ISTYPE
    ITEM
    JOIN
    LANGUAGE
    LBRACE
    LBRACK
    LBRACKET
    LE
    LIBRARY
    LOCALE
    LOOP
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MEMBER
    MERGE
    MESSAGE
    META
    METACLASS
    METADATA
    MINUS
    MINUSEQ
    MINUSMINUS
    MULTIPLICITY
    NAMESPACE
    NEW
    NONUNIQUE
    NOT
    NOTEQ
    NOTEQEQ
    NULL
    NUMBER
    OBJECTIVE
    OCCURRENCE
    OF
    OR
    ORDERED
    OROR
    OUT
    PACKAGE
    PARALLEL
    PART
    PERCENT
    PERCENTEQ
    PERFORM
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    PORT
    PORTION
    PREDICATE
    PRIVATE
    PROTECTED
    PUBLIC
    QUESTDOT
    QUESTION
    QUESTION_QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACK
    RBRACKET
    REAL
    RECEIVE
    REDEFINES
    REDEFINITION
    REF
    REFERENCES
    REGULAR_COMMENT
    RENDER
    RENDERING
    REP
    REQUIRE
    REQUIREMENT
    RETURN
    RPAREN
    RSHIFT
    RSHIFTEQ
    SATISFY
    SEMI
    SEND
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SNAPSHOT
    SPECIALIZATION
    SPECIALIZES
    SQUOTE
    STAKEHOLDER
    STANDARD
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STAR_STAR
    STATE
    STEP
    STRING
    STRUCT
    SUBCLASSIFIER
    SUBJECT
    SUBSET
    SUBSETS
    SUBTYPE
    SUCCESSION
    TERMINATE
    THEN
    TILDE
    TIMESLICE
    TO
    TRANSITION
    TRUE
    TYPE
    TYPED
    TYPING
    UNDERSCORE
    UNIONS
    UNTIL
    URSHIFT
    URSHIFTEQ
    USE
    VAR
    VARIANT
    VARIATION
    VERIFICATION
    VERIFY
    VIA
    VIEW
    VIEWPOINT
    WHEN
    WHILE
    XOR
    YIELDSTAR
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
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRING); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
            | white /. skipToken(); ./
            | 'y' 'i' 'e' 'l' 'd' '*' /. makeToken($_YIELDSTAR); ./
            | '>' '>' '>' '=' /. makeToken($_URSHIFTEQ); ./
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
