-- Real lexer for JavaccParser (not token-stream soup). Keywords via JavaccKWLexer.
%Options list
%Options fp=JavaccLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.javacc
%options template=LexerTemplateF.gi
%options filter=JavaccKWLexer.gi

%Define
    $kw_lexer_class /.$JavaccKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABSTRACT
    AMP
    AMPEQ
    ANDAND
    ARROW
    ARROWSTAR
    ASSERT
    AT
    ATEQ
    BACKSLASH
    BACKTICK
    BANG
    BITCLEAR
    BOOLEAN
    BREAK
    BYTE
    CARET
    CARETEQ
    CASE
    CATCH
    CHAR
    CHARACTER_LITERAL
    CHAR_LITERAL
    CLASS
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    CONST
    CONTINUE
    CPPCODE
    DCL_PARSER_BEGIN
    DCL_PARSER_END
    DEFAULT
    DEF_PARSER_BEGIN
    DEF_PARSER_END
    DO
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE
    DQUOTE
    ELLIPSIS
    ELSE
    ENUM
    EOF_
    EQ
    EQEQ
    EQEQEQ
    EXTENDS
    FALSE
    FATARROW
    FINAL
    FINALLY
    FLOAT
    FLOATING_POINT_LITERAL
    FOR
    GOTO
    GT
    GTEQ
    HASH
    IDENTIFIER
    IF
    IGNORE_CASE
    IMPLEMENTS
    IMPORT
    INC_PARSER_BEGIN
    INC_PARSER_END
    INSTANCEOF
    INT
    INTEGER_LITERAL
    INTERFACE
    JAVACODE
    LBRACE
    LBRACKET
    LIT_27396
    LONG
    LOOKAHEAD
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MINUS
    MINUSEQ
    MINUSMINUS
    MORE_
    NATIVE
    NEW
    NOTEQ
    NOTEQEQ
    NULL
    NUMBER
    OP_10427
    OP_12973
    OP_1348
    OP_15198
    OP_16409
    OP_21707
    OP_21732
    OP_2288
    OP_23421
    OP_23530
    OP_28643
    OP_29362
    OP_29684
    OP_30222
    OP_34823
    OP_3600
    OP_37844
    OP_3929
    OP_47796
    OP_50342
    OP_51824
    OP_53658
    OP_5378
    OP_54356
    OP_57336
    OP_57687
    OP_61487
    OP_62806
    OP_6921
    OP_70354
    OP_72158
    OP_74215
    OP_75201
    OP_75416
    OP_76684
    OP_77715
    OP_78358
    OP_78990
    OP_88162
    OP_89192
    OP_92204
    OP_94175
    OP_94229
    OP_95431
    OP_95853
    OP_97277
    OROR
    PACKAGE
    PARSER_BEGIN
    PARSER_END
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    PRIVATE
    PROTECTED
    PUBLIC
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACKET
    RECEIVE
    RETURN
    RPAREN
    RSHIFT
    RSHIFTEQ
    SEMI
    SHORT
    SKIP_
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SPECIAL_TOKEN
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STATIC
    STRICTFP
    STRING
    STRING_LITERAL
    SUPER
    SWITCH
    SYNCHRONIZED
    TEMPLATE
    THIS
    THROW
    THROWS
    TILDE
    TOKEN
    TOKEN_MGR_DECLS
    TRANSIENT
    TRUE
    TRY
    TYPENAME
    UNDERSCORE
    URSHIFT
    URSHIFTEQ
    VOID
    VOLATILE
    WHILE
    YIELDSTAR
    _ABSTRACT_
    _ASSERT_
    _BOOLEAN_
    _BREAK_
    _BYTE_
    _CASE_
    _CATCH_
    _CHAR_
    _CLASS_
    _CONST_
    _CONTINUE_
    _CPPCODE_
    _DCL_PARSER_BEGIN_
    _DCL_PARSER_END_
    _DEFAULT
    _DEFAULT_
    _DEF_PARSER_BEGIN_
    _DEF_PARSER_END_
    _DOUBLE_
    _DO_
    _ELSE_
    _ENUM_
    _EOF_
    _EXTENDS_
    _FALSE_
    _FINALLY_
    _FINAL_
    _FLOAT_
    _FOR_
    _IF_
    _IGNORE_CASE_
    _IMPLEMENTS_
    _INC_PARSER_BEGIN_
    _INC_PARSER_END_
    _INSTANCEOF_
    _INTERFACE_
    _INT_
    _JAVACODE_
    _LONG_
    _LOOKAHEAD_
    _MORE_
    _NATIVE_
    _NEW_
    _NULL_
    _PACKAGE_
    _PARSER_BEGIN_
    _PARSER_END_
    _PRIVATE_
    _PROTECTED_
    _PUBLIC_
    _RETURN_
    _SHORT_
    _SKIP_
    _SPECIAL_TOKEN_
    _STATIC_
    _STRICTFP_
    _SUPER_
    _SWITCH_
    _SYNCHRONIZED_
    _TEMPLATE_
    _THIS_
    _THROWS_
    _THROW_
    _TOKEN_
    _TOKEN_MGR_DECLS_
    _TRANSIENT_
    _TRUE_
    _TRY_
    _TYPENAME_
    _VOID_
    _VOLATILE_
    _WHILE_
    booleanLiteral
    nullLiteral
    templatePack
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
    Token ::= identifier /. checkForKeyWord($_IDENTIFIER); ./
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRING); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
            | white /. skipToken(); ./
            | 'P' 'A' 'R' 'S' 'E' 'R' '_' 'B' 'E' 'G' 'I' 'N' /. makeToken($_PARSER_BEGIN); ./
            | 'P' 'A' 'R' 'S' 'E' 'R' '_' 'E' 'N' 'D' /. makeToken($_PARSER_END); ./
            | 'L' 'O' 'O' 'K' 'A' 'H' 'E' 'A' 'D' /. makeToken($_LOOKAHEAD); ./
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
            | ' ' /. makeToken($_LIT_27396); ./
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
