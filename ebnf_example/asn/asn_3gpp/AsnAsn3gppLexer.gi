-- Real lexer for AsnAsn3gppParser (not token-stream soup). Keywords via AsnAsn3gppKWLexer.
%Options list
%Options fp=AsnAsn3gppLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.asn.asn_3gpp
%options template=LexerTemplateF.gi
%options filter=AsnAsn3gppKWLexer.gi

%Define
    $kw_lexer_class /.$AsnAsn3gppKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABSENT_LITERAL
    ABSTRACT_SYNTAX_LITERAL
    ALL_LITERAL
    AMP
    AMPEQ
    AMPERSAND
    ANDAND
    APPLICATION_LITERAL
    ARROW
    ARROWSTAR
    ASSIGN_OP
    AT
    ATEQ
    AUTOMATIC_LITERAL
    A_ROND
    A_ROND_DOT
    BACKSLASH
    BACKTICK
    BANG
    BEGIN_LITERAL
    BITCLEAR
    BIT_LITERAL
    BOOLEAN_LITERAL
    BSTRING
    BY_LITERAL
    CARET
    CARETEQ
    CHARACTER_LITERAL
    CHAR_LITERAL
    CHOICE_LITERAL
    CLASS_LITERAL
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    COMPONENTS_LITERAL
    COMPONENT_LITERAL
    COND_LITERAL
    CONSTRAINED_LITERAL
    CONTAINING_LITERAL
    CSTRING
    DEFAULT_LITERAL
    DEFINITIONS_LITERAL
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE_DOT
    DOUBLE_L_BRACKET
    DOUBLE_R_BRACKET
    DQUOTE
    ELLIPSIS
    EMBEDDED_LITERAL
    ENCODED_LITERAL
    END_LITERAL
    ENUMERATED_LITERAL
    EQ
    EQEQ
    EQEQEQ
    EXCEPT_LITERAL
    EXCLAM
    EXPLICIT_LITERAL
    EXPORTS_LITERAL
    EXTENSIBILITY_LITERAL
    EXTENSTIONENDMARKER
    EXTERNAL_LITERAL
    FALSE_LITERAL
    FALSE_SMALL_LITERAL
    FATARROW
    FROM_LITERAL
    GT
    GTEQ
    HASH
    IDENTIFIER
    IDENTIFIER_LITERAL
    IMPLICIT_LITERAL
    IMPLIED_LITERAL
    IMPORTS_LITERAL
    INCLUDES_LITERAL
    INSTANCE_LITERAL
    INTEGER_LITERAL
    INTERSECTION_LITERAL
    INVALID_TAG
    LBRACE
    LBRACKET
    LESS_THAN
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    L_BRACE
    L_BRACKET
    L_PARAN
    MAX_LITERAL
    MINUS
    MINUSEQ
    MINUSMINUS
    MINUS_INFINITY_LITERAL
    MIN_LITERAL
    NEED_LITERAL
    NOTEQ
    NOTEQEQ
    NULL_LITERAL
    NUMBER
    OBJECT_LITERAL
    OCTET_LITERAL
    OF_LITERAL
    OPTIONAL_LITERAL
    OROR
    PATTERN_LITERAL
    PDV_LITERAL
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    PLUS_INFINITY_LITERAL
    POWER
    PRESENT_LITERAL
    PRIVATE_LITERAL
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACKET
    REAL_LITERAL
    RECEIVE
    RELATIVE_OID_LITERAL
    RPAREN
    RSHIFT
    RSHIFTEQ
    R_BRACE
    R_BRACKET
    R_PARAN
    SEMI
    SEMI_COLON
    SEQUENCE_LITERAL
    SET_LITERAL
    SIZE_LITERAL
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
    STRING_LITERAL
    SYNTAX_LITERAL
    TAGS_LITERAL
    TILDE
    TRUE_LITERAL
    TRUE_SMALL_LITERAL
    TYPE_IDENTIFIER_LITERAL
    UNDERSCORE
    UNION_LITERAL
    UNIQUE_LITERAL
    UNIVERSAL_LITERAL
    URSHIFT
    URSHIFTEQ
    WITH_LITERAL
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
            | charlit    /. makeToken($_CHAR_LITERAL); ./
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
            | '.' '.' /. makeToken($_DOUBLE_DOT); ./
            | '/' '/' /. makeToken($_SLASHSLASH); ./
            | '/' '=' /. makeToken($_SLASHEQ); ./
            | ':' ':' '=' /. makeToken($_ASSIGN_OP); ./
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
            | '[' '[' /. makeToken($_DOUBLE_L_BRACKET); ./
            | '[' /. makeToken($_LBRACKET); ./
            | '\' /. makeToken($_BACKSLASH); ./
            | ']' ']' /. makeToken($_DOUBLE_R_BRACKET); ./
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
             '^' | '~' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | '/' | n | r | t | b | f

    charlit ::= SingleQuote NotSQ SingleQuote

    LineComment ::= '/' '/' LineCommentBody
    HashComment ::= Sharp HashCommentBody
    HashCommentBody -> $empty
                     | HashCommentBody NotNL
    LineCommentBody -> $empty
                     | LineCommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
