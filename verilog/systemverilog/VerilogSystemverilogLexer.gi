-- Real lexer for VerilogSystemverilogParser (not token-stream soup). Keywords via VerilogSystemverilogKWLexer.
%Options list
%Options fp=VerilogSystemverilogLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.verilog.systemverilog
%options template=LexerTemplateF.gi
%options filter=VerilogSystemverilogKWLexer.gi

%Define
    $kw_lexer_class /.$VerilogSystemverilogKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ACCEPT_ON
    ALIAS
    ALWAYS
    ALWAYS_COMB
    ALWAYS_FF
    ALWAYS_LATCH
    AMP
    AMPEQ
    AND
    ANDAND
    ARROW
    ARROWSTAR
    ASSERT
    ASSIGN
    ASSUME
    AT
    ATEQ
    AUTOMATIC
    BACKSLASH
    BACKTICK
    BANG
    BEFORE
    BEGIN
    BEGIN_KEYWORDS_DIRECTIVE
    BINARY_BASE
    BINARY_VALUE
    BIND
    BINS
    BINSOF
    BIT
    BITCLEAR
    BREAK
    BUF
    BUFIF0
    BUFIF1
    BUFIFONE
    BUFIFZERO
    BYTE
    CARET
    CARETEQ
    CASE
    CASEX
    CASEZ
    CELL
    CELLDEFINE_DIRECTIVE
    CHANDLE
    CHAR_LITERAL
    CHECKER
    CLASS
    CLOCKING
    CMOS
    CO
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    CONFIG
    CONST
    CONSTRAINT
    CONTEXT
    CONTINUE
    COVER
    COVERGROUP
    COVERPOINT
    CROSS
    DEASSIGN
    DECIMAL_BASE
    DEFAULT
    DEFAULT_NETTYPE_DIRECTIVE
    DEFAULT_NETTYPE_VALUE
    DEFINE_DIRECTIVE
    DEFPARAM
    DESIGN
    DISABLE
    DIST
    DO
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DQ
    DQUOTE
    EDGE
    EDGE_SYMBOL
    ELLIPSIS
    ELSE
    ELSE_DIRECTIVE
    ELSIF_DIRECTIVE
    END
    ENDCASE
    ENDCELLDEFINE_DIRECTIVE
    ENDCHECKER
    ENDCLASS
    ENDCLOCKING
    ENDCONFIG
    ENDFUNCTION
    ENDGENERATE
    ENDGROUP
    ENDIF_DIRECTIVE
    ENDINTERFACE
    ENDMODULE
    ENDPACKAGE
    ENDPRIMITIVE
    ENDPROGRAM
    ENDPROPERTY
    ENDSEQUENCE
    ENDSPECIFY
    ENDTABLE
    ENDTASK
    END_KEYWORDS_DIRECTIVE
    ENUM
    EQ
    EQEQ
    EQEQEQ
    ESCAPED_IDENTIFIER
    EVENT
    EVENTUALLY
    EXPECT
    EXPONENTIAL_NUMBER
    EXPORT
    EXTENDS
    EXTERN
    FATARROW
    FILENAME
    FILE_DIRECTIVE
    FILE_PATH_SPEC
    FINAL
    FIRST_MATCH
    FIXED_POINT_NUMBER
    FOR
    FORCE
    FOREACH
    FOREVER
    FORK
    FORKJOIN
    FUNCTION
    GA
    GENERATE
    GENVAR
    GLOBAL
    GT
    GTEQ
    HASH
    HEX_BASE
    HEX_VALUE
    HIGHZ0
    HIGHZ1
    HIGHZONE
    HIGHZZERO
    IDENTIFIER
    IF
    IFDEF_DIRECTIVE
    IFF
    IFNDEF_DIRECTIVE
    IFNONE
    IGNORE_BINS
    ILLEGAL_BINS
    IMPLEMENTS
    IMPLIES
    IMPORT
    INCLUDE
    INCLUDE_DIRECTIVE
    INITIAL
    INOUT
    INPUT
    INSIDE
    INSTANCE
    INT
    INTEGER
    INTERCONNECT
    INTERFACE
    INTERSECT
    JOIN
    JOIN_ANY
    JOIN_NONE
    LARGE
    LBRACE
    LBRACKET
    LET
    LEVEL_ONLY_SYMBOL
    LIBLIST
    LIBRARY
    LINE_DIRECTIVE
    LINE_DIRECTIVE_
    LOCAL
    LOCALPARAM
    LOGIC
    LONGINT
    LP
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MACROMODULE
    MACRO_DELIMITER
    MACRO_ESC_NEWLINE
    MACRO_ESC_QUOTE
    MACRO_IDENTIFIER
    MACRO_NAME
    MACRO_QUOTE
    MACRO_TEXT
    MACRO_USAGE
    MATCHES
    MEDIUM
    MINUS
    MINUSEQ
    MINUSMINUS
    MODPORT
    MODULE
    NAND
    NEGEDGE
    NETTYPE
    NEW
    NEXTTIME
    NMOS
    NOR
    NOSHOWCANCELLED
    NOT
    NOTEQ
    NOTEQEQ
    NOTIF0
    NOTIF1
    NOTIFONE
    NOTIFZERO
    NOUNCONNECTED_DRIVE_DIRECTIVE
    NULL
    NULL_LITERAL
    NUMBER
    OCTAL_BASE
    OCTAL_VALUE
    OPTION
    OP_10129
    OP_1491
    OP_19907
    OP_20287
    OP_21
    OP_22030
    OP_23988
    OP_36633
    OP_42139
    OP_47770
    OP_49417
    OP_52449
    OP_59789
    OP_67671
    OP_71142
    OP_75265
    OP_79944
    OP_80149
    OP_84942
    OP_86952
    OP_89451
    OR
    OROR
    OUTPUT
    OUTPUT_OR_LEVEL_SYMBOL
    PACKAGE
    PACKED
    PARAMETER
    PATHPULSE_
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    PMOS
    POSEDGE
    PRAGMA_DIRECTIVE
    PRIMITIVE
    PRIORITY
    PROGRAM
    PROPERTY
    PROTECTED
    PULL0
    PULL1
    PULLDOWN
    PULLONE
    PULLUP
    PULLZERO
    PULSESTYLE_ONDETECT
    PULSESTYLE_ONEVENT
    PURE
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RAND
    RANDC
    RANDCASE
    RANDOMIZE
    RANDSEQUENCE
    RBRACE
    RBRACKET
    RCMOS
    REAL
    REALTIME
    RECEIVE
    REF
    REG
    REJECT_ON
    RELEASE
    REPEAT
    RESETALL_DIRECTIVE
    RESTRICT
    RETURN
    RNMOS
    RP
    RPAREN
    RPMOS
    RSHIFT
    RSHIFTEQ
    RTRAN
    RTRANIF0
    RTRANIF1
    RTRANIFONE
    RTRANIFZERO
    SAMPLE
    SCALARED
    SEMI
    SEQUENCE
    SHORTINT
    SHORTREAL
    SHOWCANCELLED
    SIGNED
    SIMPLE_IDENTIFIER
    SL
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SMALL
    SOFT
    SOLVE
    SOURCE_TEXT
    SPECIFY
    SPECPARAM
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STATIC
    STD
    STRING
    STRING_LITERAL
    STRONG
    STRONG0
    STRONG1
    STRONGONE
    STRONGZERO
    STRUCT
    SUPER
    SUPPLY0
    SUPPLY1
    SUPPLYONE
    SUPPLYZERO
    SYNC_ACCEPT_ON
    SYNC_REJECT_ON
    SYSTEM_TF_IDENTIFIER
    S_ALWAYS
    S_EVENTUALLY
    S_NEXTTIME
    S_UNTIL
    S_UNTIL_WITH
    TABLE
    TAGGED
    TASK
    THIS
    THROUGHOUT
    TILDE
    TIME
    TIMEPRECISION
    TIMESCALE_DIRECTIVE
    TIMEUNIT
    TIME_LITERAL
    TIME_UNIT
    TIME_VALUE
    TRAN
    TRANIF0
    TRANIF1
    TRANIFONE
    TRANIFZERO
    TRI
    TRI0
    TRI1
    TRIAND
    TRIONE
    TRIOR
    TRIREG
    TRIZERO
    TYPE
    TYPEDEF
    TYPE_OPTION
    T_1STEP
    UNBASED_UNSIZED_LITERAL
    UNCONNECTED_DRIVE_DIRECTIVE
    UNCONNECTED_DRIVE_VALUE
    UNDEFINEALL_DIRECTIVE
    UNDEF_DIRECTIVE
    UNDERSCORE
    UNION
    UNIQUE
    UNIQUE0
    UNIQUEZERO
    UNSIGNED
    UNSIGNED_NUMBER
    UNTIL
    UNTIL_WITH
    UNTYPED
    URSHIFT
    URSHIFTEQ
    USE
    UWIRE
    VAR
    VECTORED
    VERSION_SPECIFIER
    VIRTUAL
    VOID
    WAIT
    WAIT_ORDER
    WAND
    WEAK
    WEAK0
    WEAK1
    WEAKONE
    WEAKZERO
    WHILE
    WILDCARD
    WIRE
    WITH
    WITHIN
    WOR
    XNOR
    XOR
    X_OR_Z_UNDERSCORE
    YIELDSTAR
    ZERO_OR_ONE_X_OR_Z
    _DPI_
    _DPI_C_
    _ERROR
    _FATAL
    _FULLSKEW
    _HOLD
    _INCDIR
    _INFO
    _NOCHANGE
    _PERIOD
    _RECOVERY
    _RECREM
    _REMOVAL
    _ROOT
    _SETUP
    _SETUPHOLD
    _SKEW
    _TIMESKEW
    _UNIT
    _WARNING
    _WIDTH
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
    Token ::= identifier /. checkForKeyWord($_SIMPLE_IDENTIFIER); ./
            | number     /. makeToken($_UNSIGNED_NUMBER); ./
            | string     /. makeToken($_STRING_LITERAL); ./
            | charlit    /. makeToken($_CHAR_LITERAL); ./
            | LineComment /. skipToken(); ./
            | white /. skipToken(); ./
            | 'p' 'u' 'l' 's' 'e' 's' 't' 'y' 'l' 'e' '_' 'o' 'n' 'd' 'e' 't' 'e' 'c' 't' /. makeToken($_PULSESTYLE_ONDETECT); ./
            | 'p' 'u' 'l' 's' 'e' 's' 't' 'y' 'l' 'e' '_' 'o' 'n' 'e' 'v' 'e' 'n' 't' /. makeToken($_PULSESTYLE_ONEVENT); ./
            | 's' 'y' 'n' 'c' '_' 'a' 'c' 'c' 'e' 'p' 't' '_' 'o' 'n' /. makeToken($_SYNC_ACCEPT_ON); ./
            | 's' 'y' 'n' 'c' '_' 'r' 'e' 'j' 'e' 'c' 't' '_' 'o' 'n' /. makeToken($_SYNC_REJECT_ON); ./
            | 'a' 'l' 'w' 'a' 'y' 's' '_' 'l' 'a' 't' 'c' 'h' /. makeToken($_ALWAYS_LATCH); ./
            | 'i' 'l' 'l' 'e' 'g' 'a' 'l' '_' 'b' 'i' 'n' 's' /. makeToken($_ILLEGAL_BINS); ./
            | 's' '_' 'e' 'v' 'e' 'n' 't' 'u' 'a' 'l' 'l' 'y' /. makeToken($_S_EVENTUALLY); ./
            | 's' '_' 'u' 'n' 't' 'i' 'l' '_' 'w' 'i' 't' 'h' /. makeToken($_S_UNTIL_WITH); ./
            | 'a' 'l' 'w' 'a' 'y' 's' '_' 'c' 'o' 'm' 'b' /. makeToken($_ALWAYS_COMB); ./
            | 'f' 'i' 'r' 's' 't' '_' 'm' 'a' 't' 'c' 'h' /. makeToken($_FIRST_MATCH); ./
            | 'i' 'g' 'n' 'o' 'r' 'e' '_' 'b' 'i' 'n' 's' /. makeToken($_IGNORE_BINS); ./
            | 't' 'y' 'p' 'e' '_' 'o' 'p' 't' 'i' 'o' 'n' /. makeToken($_TYPE_OPTION); ./
            | '$' 's' 'e' 't' 'u' 'p' 'h' 'o' 'l' 'd' /. makeToken($__SETUPHOLD); ./
            | 'P' 'A' 'T' 'H' 'P' 'U' 'L' 'S' 'E' '$' /. makeToken($_PATHPULSE_); ./
            | 's' '_' 'n' 'e' 'x' 't' 't' 'i' 'm' 'e' /. makeToken($_S_NEXTTIME); ./
            | 'u' 'n' 't' 'i' 'l' '_' 'w' 'i' 't' 'h' /. makeToken($_UNTIL_WITH); ./
            | 'w' 'a' 'i' 't' '_' 'o' 'r' 'd' 'e' 'r' /. makeToken($_WAIT_ORDER); ./
            | '$' 'f' 'u' 'l' 'l' 's' 'k' 'e' 'w' /. makeToken($__FULLSKEW); ./
            | '$' 'n' 'o' 'c' 'h' 'a' 'n' 'g' 'e' /. makeToken($__NOCHANGE); ./
            | '$' 'r' 'e' 'c' 'o' 'v' 'e' 'r' 'y' /. makeToken($__RECOVERY); ./
            | '$' 't' 'i' 'm' 'e' 's' 'k' 'e' 'w' /. makeToken($__TIMESKEW); ./
            | 'a' 'c' 'c' 'e' 'p' 't' '_' 'o' 'n' /. makeToken($_ACCEPT_ON); ./
            | 'a' 'l' 'w' 'a' 'y' 's' '_' 'f' 'f' /. makeToken($_ALWAYS_FF); ./
            | 'j' 'o' 'i' 'n' '_' 'n' 'o' 'n' 'e' /. makeToken($_JOIN_NONE); ./
            | 'r' 'e' 'j' 'e' 'c' 't' '_' 'o' 'n' /. makeToken($_REJECT_ON); ./
            | '$' 'r' 'e' 'm' 'o' 'v' 'a' 'l' /. makeToken($__REMOVAL); ./
            | '$' 'w' 'a' 'r' 'n' 'i' 'n' 'g' /. makeToken($__WARNING); ./
            | 'j' 'o' 'i' 'n' '_' 'a' 'n' 'y' /. makeToken($_JOIN_ANY); ./
            | 'r' 't' 'r' 'a' 'n' 'i' 'f' '0' /. makeToken($_RTRANIF0); ./
            | 'r' 't' 'r' 'a' 'n' 'i' 'f' '1' /. makeToken($_RTRANIF1); ./
            | 's' '_' 'a' 'l' 'w' 'a' 'y' 's' /. makeToken($_S_ALWAYS); ./
            | '"' 'D' 'P' 'I' '-' 'C' '"' /. makeToken($__DPI_C_); ./
            | '$' 'p' 'e' 'r' 'i' 'o' 'd' /. makeToken($__PERIOD); ./
            | '$' 'r' 'e' 'c' 'r' 'e' 'm' /. makeToken($__RECREM); ./
            | '-' 'i' 'n' 'c' 'd' 'i' 'r' /. makeToken($__INCDIR); ./
            | 's' '_' 'u' 'n' 't' 'i' 'l' /. makeToken($_S_UNTIL); ./
            | 's' 't' 'r' 'o' 'n' 'g' '0' /. makeToken($_STRONG0); ./
            | 's' 't' 'r' 'o' 'n' 'g' '1' /. makeToken($_STRONG1); ./
            | 's' 'u' 'p' 'p' 'l' 'y' '0' /. makeToken($_SUPPLY0); ./
            | 's' 'u' 'p' 'p' 'l' 'y' '1' /. makeToken($_SUPPLY1); ./
            | 't' 'r' 'a' 'n' 'i' 'f' '0' /. makeToken($_TRANIF0); ./
            | 't' 'r' 'a' 'n' 'i' 'f' '1' /. makeToken($_TRANIF1); ./
            | 'u' 'n' 'i' 'q' 'u' 'e' '0' /. makeToken($_UNIQUE0); ./
            | '$' 'e' 'r' 'r' 'o' 'r' /. makeToken($__ERROR); ./
            | '$' 'f' 'a' 't' 'a' 'l' /. makeToken($__FATAL); ./
            | '$' 's' 'e' 't' 'u' 'p' /. makeToken($__SETUP); ./
            | '$' 'w' 'i' 'd' 't' 'h' /. makeToken($__WIDTH); ./
            | 'b' 'u' 'f' 'i' 'f' '0' /. makeToken($_BUFIF0); ./
            | 'b' 'u' 'f' 'i' 'f' '1' /. makeToken($_BUFIF1); ./
            | 'h' 'i' 'g' 'h' 'z' '0' /. makeToken($_HIGHZ0); ./
            | 'h' 'i' 'g' 'h' 'z' '1' /. makeToken($_HIGHZ1); ./
            | 'n' 'o' 't' 'i' 'f' '0' /. makeToken($_NOTIF0); ./
            | 'n' 'o' 't' 'i' 'f' '1' /. makeToken($_NOTIF1); ./
            | 'y' 'i' 'e' 'l' 'd' '*' /. makeToken($_YIELDSTAR); ./
            | '"' 'D' 'P' 'I' '"' /. makeToken($__DPI_); ./
            | '$' 'h' 'o' 'l' 'd' /. makeToken($__HOLD); ./
            | '$' 'i' 'n' 'f' 'o' /. makeToken($__INFO); ./
            | '$' 'r' 'o' 'o' 't' /. makeToken($__ROOT); ./
            | '$' 's' 'k' 'e' 'w' /. makeToken($__SKEW); ./
            | '$' 'u' 'n' 'i' 't' /. makeToken($__UNIT); ./
            | '1' 's' 't' 'e' 'p' /. makeToken($_T_1STEP); ./
            | 'p' 'u' 'l' 'l' '0' /. makeToken($_PULL0); ./
            | 'p' 'u' 'l' 'l' '1' /. makeToken($_PULL1); ./
            | 'w' 'e' 'a' 'k' '0' /. makeToken($_WEAK0); ./
            | 'w' 'e' 'a' 'k' '1' /. makeToken($_WEAK1); ./
            | '<' '<' '<' '=' /. makeToken($_OP_86952); ./
            | '>' '>' '>' '=' /. makeToken($_URSHIFTEQ); ./
            | 't' 'r' 'i' '0' /. makeToken($_TRI0); ./
            | 't' 'r' 'i' '1' /. makeToken($_TRI1); ./
            | '!' '=' '=' /. makeToken($_NOTEQEQ); ./
            | '!' '=' '?' /. makeToken($_OP_47770); ./
            | '#' '-' '#' /. makeToken($_OP_23988); ./
            | '#' '=' '#' /. makeToken($_OP_21); ./
            | '&' '&' '&' /. makeToken($_OP_84942); ./
            | '*' '*' '=' /. makeToken($_STARSTAREQ); ./
            | '-' '>' '*' /. makeToken($_ARROWSTAR); ./
            | '-' '>' '>' /. makeToken($_OP_75265); ./
            | '.' '.' '.' /. makeToken($_ELLIPSIS); ./
            | '/' '/' '=' /. makeToken($_SLASHSLASHEQ); ./
            | '<' '-' '>' /. makeToken($_OP_22030); ./
            | '<' '<' '<' /. makeToken($_OP_1491); ./
            | '<' '<' '=' /. makeToken($_LSHIFTEQ); ./
            | '=' '=' '=' /. makeToken($_EQEQEQ); ./
            | '=' '=' '?' /. makeToken($_OP_42139); ./
            | '>' '>' '=' /. makeToken($_RSHIFTEQ); ./
            | '>' '>' '>' /. makeToken($_URSHIFT); ./
            | '?' '?' '=' /. makeToken($_QUESTQUESTEQ); ./
            | '|' '-' '>' /. makeToken($_OP_36633); ./
            | '|' '=' '>' /. makeToken($_OP_71142); ./
            | '!' '=' /. makeToken($_NOTEQ); ./
            | '#' '#' /. makeToken($_OP_79944); ./
            | '%' '=' /. makeToken($_PERCENTEQ); ./
            | '&' '&' /. makeToken($_ANDAND); ./
            | '&' '=' /. makeToken($_AMPEQ); ./
            | '&' '^' /. makeToken($_BITCLEAR); ./
            | '*' '*' /. makeToken($_STARSTAR); ./
            | '*' '=' /. makeToken($_STAREQ); ./
            | '*' '>' /. makeToken($_OP_80149); ./
            | '+' '+' /. makeToken($_PLUSPLUS); ./
            | '+' ':' /. makeToken($_OP_49417); ./
            | '+' '=' /. makeToken($_PLUSEQ); ./
            | '-' '-' /. makeToken($_MINUSMINUS); ./
            | '-' ':' /. makeToken($_OP_89451); ./
            | '-' '=' /. makeToken($_MINUSEQ); ./
            | '-' '>' /. makeToken($_ARROW); ./
            | '.' '*' /. makeToken($_DOTSTAR); ./
            | '.' '.' /. makeToken($_DOTDOT); ./
            | '/' '/' /. makeToken($_SLASHSLASH); ./
            | '/' '=' /. makeToken($_SLASHEQ); ./
            | ':' '/' /. makeToken($_OP_59789); ./
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
            | '@' '@' /. makeToken($_OP_52449); ./
            | BackSlash SingleQuote /. makeToken($_SQUOTE); ./
            | '^' '=' /. makeToken($_CARETEQ); ./
            | '^' '~' /. makeToken($_OP_20287); ./
            | '|' '=' /. makeToken($_PIPEEQ); ./
            | '|' '|' /. makeToken($_OROR); ./
            | '~' '&' /. makeToken($_OP_10129); ./
            | '~' '^' /. makeToken($_OP_67671); ./
            | '~' '|' /. makeToken($_OP_19907); ./
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
            | '`' /. makeToken($_GA); ./
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
