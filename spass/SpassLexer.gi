-- Real lexer for SpassParser (not token-stream soup). Keywords via SpassKWLexer.
%Options list
%Options fp=SpassLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.spass
%options template=LexerTemplateF.gi
%options filter=SpassKWLexer.gi

%Define
    $kw_lexer_class /.$SpassKWLexer./
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
    AT
    ATEQ
    AUTHOR
    AXIOMS
    And
    Author
    Axioms
    BACKSLASH
    BACKTICK
    BANG
    BEGIN_PROBLEM
    BITCLEAR
    Begin_problem
    CARET
    CARETEQ
    CHAR_LITERAL
    CLAUSE
    CLR
    CNF
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    CON
    CONJECTURES
    ClR
    Clause
    Close
    Cnf
    Con
    Conjectures
    DATE
    DESCRIPTION
    DNF
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DQUOTE
    Date
    Description
    Digit
    Dnf
    ELLIPSIS
    EMS
    END_OF_LIST
    END_PROBLEM
    EQ
    EQEQ
    EQEQEQ
    EQF
    EQR
    EQUAL
    EQUIV
    EXISTS
    EmS
    End_of_list
    End_problem
    EqF
    EqR
    Equal
    Equiv
    Exists
    FAC
    FALSE
    FATARROW
    FORALL
    FORMULA
    FREELY
    FUNCTIONS
    Fac
    False_
    Forall
    Formula
    Freely
    Functions
    GENERATED_BY
    GER
    GT
    GTEQ
    GeR
    Generated_by
    HASH
    HYPOTHESIS
    Hypothesis
    IDENTIFIER
    IMPLIED
    IMPLIES
    INP
    Identifier
    Implied
    Implies
    Inp
    JustText
    KIV
    LBRACE
    LBRACKET
    LEM
    LIST_OF_CLAUSES
    LIST_OF_DECLARATIONS
    LIST_OF_DESCRIPTIONS
    LIST_OF_FORMULAE
    LIST_OF_GENERAL_SETTINGS
    LIST_OF_PROOF
    LIST_OF_SETTINGS
    LIST_OF_SYMBOLS
    LOGIC
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    List_of_clauses
    List_of_declarations
    List_of_descriptions
    List_of_formulae
    List_of_general_settings
    List_of_proof
    List_of_settings
    List_of_symbols
    Logic
    MINUS
    MINUSEQ
    MINUSMINUS
    MPM
    MPm
    NAME
    NOT
    NOTEQ
    NOTEQEQ
    NUMBER
    Name
    Not
    OBV
    OHY
    OHy
    OPM
    OPm
    OR
    OROR
    OTTER
    Obv
    Open
    Or
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    PREDICATE
    PREDICATES
    PROTEIN
    Predicate
    Predicates
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACKET
    RECEIVE
    REW
    RPAREN
    RRE
    RSHIFT
    RSHIFTEQ
    Rew
    SATISFIABLE
    SATURATE
    SEMI
    SETHEO
    SHY
    SHy
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SOR
    SORT
    SORTS
    SPASS
    SPL
    SPLITLEVEL
    SPM
    SPR
    SPT
    SPm
    SQUOTE
    SSI
    SSi
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STATUS
    STEP
    STRING
    SUBSORT
    Satisfiable
    SoR
    Sort
    Sorts
    SpL
    SpR
    Splitlevel
    Spt
    Status
    Step
    Subsort
    TER
    TILDE
    TRUE
    T_3TAP
    Ter
    True_
    UNC
    UNDERSCORE
    UNKNOWN
    UNSATISFIABLE
    URR
    URSHIFT
    URSHIFTEQ
    UnC
    Unknown
    Unsatisfiable
    VERSION
    Version
    YIELDSTAR
    _1
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
    Token ::= 'l' 'i' 's' 't' '_' 'o' 'f' '_' 'g' 'e' 'n' 'e' 'r' 'a' 'l' '_' 's' 'e' 't' 't' 'i' 'n' 'g' 's' /. makeToken($_LIST_OF_GENERAL_SETTINGS); ./
            | 'l' 'i' 's' 't' '_' 'o' 'f' '_' 'd' 'e' 'c' 'l' 'a' 'r' 'a' 't' 'i' 'o' 'n' 's' /. makeToken($_LIST_OF_DECLARATIONS); ./
            | 'l' 'i' 's' 't' '_' 'o' 'f' '_' 'd' 'e' 's' 'c' 'r' 'i' 'p' 't' 'i' 'o' 'n' 's' /. makeToken($_LIST_OF_DESCRIPTIONS); ./
            | 'l' 'i' 's' 't' '_' 'o' 'f' '_' 'f' 'o' 'r' 'm' 'u' 'l' 'a' 'e' /. makeToken($_LIST_OF_FORMULAE); ./
            | 'l' 'i' 's' 't' '_' 'o' 'f' '_' 's' 'e' 't' 't' 'i' 'n' 'g' 's' /. makeToken($_LIST_OF_SETTINGS); ./
            | 'l' 'i' 's' 't' '_' 'o' 'f' '_' 'c' 'l' 'a' 'u' 's' 'e' 's' /. makeToken($_LIST_OF_CLAUSES); ./
            | 'l' 'i' 's' 't' '_' 'o' 'f' '_' 's' 'y' 'm' 'b' 'o' 'l' 's' /. makeToken($_LIST_OF_SYMBOLS); ./
            | 'b' 'e' 'g' 'i' 'n' '_' 'p' 'r' 'o' 'b' 'l' 'e' 'm' /. makeToken($_BEGIN_PROBLEM); ./
            | 'l' 'i' 's' 't' '_' 'o' 'f' '_' 'p' 'r' 'o' 'o' 'f' /. makeToken($_LIST_OF_PROOF); ./
            | 'g' 'e' 'n' 'e' 'r' 'a' 't' 'e' 'd' '_' 'b' 'y' /. makeToken($_GENERATED_BY); ./
            | 'e' 'n' 'd' '_' 'o' 'f' '_' 'l' 'i' 's' 't' /. makeToken($_END_OF_LIST); ./
            | 'e' 'n' 'd' '_' 'p' 'r' 'o' 'b' 'l' 'e' 'm' /. makeToken($_END_PROBLEM); ./
            | 'y' 'i' 'e' 'l' 'd' '*' /. makeToken($_YIELDSTAR); ./
            | '3' 'T' 'A' 'P' /. makeToken($_T_3TAP); ./
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
            | '-' '1' /. makeToken($__1); ./
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
            | identifier /. checkForKeyWord(); ./
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRING); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
            | white /. skipToken(); ./

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
