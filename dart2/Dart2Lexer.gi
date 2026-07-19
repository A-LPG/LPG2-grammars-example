-- Real lexer for Dart2Parser (not token-stream soup). Keywords via Dart2KWLexer.
%Options list
%Options fp=Dart2Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.dart2
%options template=LexerTemplateF.gi
%options filter=Dart2KWLexer.gi

%Define
    $kw_lexer_class /.$Dart2KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    A
    AA
    ABSTRACT_
    AE
    AMP
    AMPEQ
    ANDAND
    ARROW
    ARROWSTAR
    ASSERT_
    ASYNC_
    AS_
    AT
    ATEQ
    AWAIT_
    BACKSLASH
    BACKTICK
    BANG
    BITCLEAR
    BREAK_
    C
    CARET
    CARETEQ
    CASE_
    CATCH_
    CB
    CBC
    CHAR_LITERAL
    CIR
    CIRE
    CLASS_
    CO
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    CONST_
    CONTINUE_
    COVARIANT_
    CP
    D
    DD
    DDD
    DDDQ
    DEFAULT_
    DEFERRED_
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DO_
    DQUOTE
    DYNAMIC_
    EE
    EG
    ELLIPSIS
    ELSE_
    ENUM_
    EQ
    EQEQ
    EQEQEQ
    EXPORT_
    EXTENDS_
    EXTENSION_
    EXTERNAL_
    FACTORY_
    FALSE_
    FATARROW
    FINALLY_
    FINAL_
    FOR_
    FUNCTION_
    GET_
    GT
    GTEQ
    GTILDE_
    HASH
    HEX_NUMBER
    HIDE_
    IDENTIFIER
    IF_
    IMPLEMENTS_
    IMPORT_
    INTERFACE_
    IN_
    IS_
    LATE_
    LBRACE
    LBRACKET
    LET_
    LIBRARY_
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTE
    LTEQ
    LTGT
    LTLT
    LTLTE
    ME
    MINUS
    MINUSEQ
    MINUSMINUS
    MIXIN_
    MM
    MultiLineString
    NATIVE_
    NE
    NEW_
    NOT
    NOTEQ
    NOTEQEQ
    NULL_
    NUMBER
    OB
    OBC
    OF_
    ON_
    OP
    OPERATOR_
    OROR
    P
    PART_
    PC
    PE
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PL
    PLE
    PLPL
    PLUS
    PLUSEQ
    PLUSPLUS
    PO
    POE
    PP
    QU
    QUD
    QUDD
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QUQU
    QUQUEQ
    RBRACE
    RBRACKET
    RECEIVE
    REQUIRED_
    RETHROW_
    RETURN_
    RPAREN
    RSHIFT
    RSHIFTEQ
    SC
    SE
    SEMI
    SET_
    SHOW_
    SL
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SQS
    SQSE
    SQUIG
    SQUOTE
    ST
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STATIC_
    STE
    STRING
    SUPER_
    SWITCH_
    SYNC_
    SingleLineString
    THIS_
    THROW_
    TILDE
    TRUE_
    TRY_
    TYPEDEF_
    UNDERSCORE
    URSHIFT
    URSHIFTEQ
    VAR_
    VOID_
    WHILE_
    WITH_
    YIELDSTAR
    YIELD_
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
            | string     /. makeToken($_SingleLineString); ./
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
            | '=' '>' /. makeToken($_EG); ./
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
            | '(' /. makeToken($_OP); ./
            | ')' /. makeToken($_CP); ./
            | '*' /. makeToken($_ST); ./
            | '+' /. makeToken($_PL); ./
            | ',' /. makeToken($_C); ./
            | '-' /. makeToken($_MINUS); ./
            | '.' /. makeToken($_D); ./
            | '/' /. makeToken($_SLASH); ./
            | ':' /. makeToken($_CO); ./
            | ';' /. makeToken($_SC); ./
            | '<' /. makeToken($_LT); ./
            | '=' /. makeToken($_EQ); ./
            | '>' /. makeToken($_GT); ./
            | '?' /. makeToken($_QUESTION); ./
            | '@' /. makeToken($_AT); ./
            | '[' /. makeToken($_OB); ./
            | '\' /. makeToken($_BACKSLASH); ./
            | ']' /. makeToken($_CB); ./
            | '^' /. makeToken($_CARET); ./
            | '`' /. makeToken($_BACKTICK); ./
            | '{' /. makeToken($_OBC); ./
            | '|' /. makeToken($_PIPE); ./
            | '}' /. makeToken($_CBC); ./
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
