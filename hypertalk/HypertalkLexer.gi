-- Real lexer for HypertalkParser (not token-stream soup). Keywords via HypertalkKWLexer.
%Options list
%Options fp=HypertalkLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.hypertalk
%options template=LexerTemplateF.gi
%options filter=HypertalkKWLexer.gi

%Define
    $kw_lexer_class /.$HypertalkKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABBR
    ABBREV
    ABBREVIATED
    ABS
    ADD
    AFTER
    AMP
    AMPEQ
    AND
    ANDAND
    ANNUITY
    ANSWER
    ANY
    ARROW
    ARROWSTAR
    ASCENDING
    ASK
    AT
    ATAN
    ATEQ
    AVERAGE
    BACK
    BACKGROUND
    BACKGROUNDS
    BACKSLASH
    BACKTICK
    BANG
    BARN
    BEEP
    BEFORE
    BG
    BGS
    BITCLEAR
    BKGND
    BKGNDS
    BLACK
    BLINDS
    BOOL
    BOOLEAN
    BOTTOM
    BOX
    BTN
    BTNS
    BUTTON
    BUTTONS
    BY
    CAN
    CARD
    CARDS
    CARET
    CARETEQ
    CD
    CDS
    CENTER
    CHAR
    CHARACTER
    CHARACTERS
    CHARS
    CHARTONUM
    CHAR_LITERAL
    CHECKERBOARD
    CHOOSE
    CLICK
    CLOSE
    CMDKEY
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    COMMANDKEY
    COMPOUND
    CONTAINS
    CONVERT
    COS
    CREATE
    DATE
    DATEITEMS
    DATETIME
    DELETE
    DESCENDING
    DIAL
    DIALOG
    DISABLE
    DISKSPACE
    DISSOLVE
    DIV
    DIVIDE
    DO
    DOLLAR
    DOMENU
    DOOR
    DOT
    DOTDOT
    DOTSTAR
    DOWN
    DQUOTE
    DRAG
    EDIT
    EFFECT
    EIGHT
    EIGHTH
    ELLIPSIS
    ELSE
    EMPTY
    ENABLE
    END
    ENGLISH
    EOF
    EQ
    EQEQ
    EQEQEQ
    EXIT
    EXP
    EXP1
    EXP2
    EXPORT
    FAST
    FATARROW
    FEMALE
    FIELD
    FIELDS
    FIFTH
    FILE
    FIND
    FIRST
    FIVE
    FLD
    FLDS
    FOR
    FOREVER
    FORMFEED
    FOUR
    FOURTH
    FROM
    FUNCTION
    GET
    GLOBAL
    GO
    GRAY
    GREY
    GT
    GTEQ
    HASH
    HIDE
    HYPERCARD
    ID
    IDENTIFIER
    IF
    IMPORT
    IN
    INTEGER
    INTERNATIONAL
    INTO
    INVERSE
    IN_A
    IRIS
    IS
    IS_A
    IS_AN
    IS_IN
    IS_NOT
    IS_NOT_A
    IS_NOT_AN
    IS_NOT_IN
    IS_NOT_WITHIN
    IS_WITHIN
    ITEM
    ITEMS
    LAST
    LBRACE
    LBRACKET
    LEFT
    LENGTH
    LINE
    LINEFEED
    LINES
    LITERAL
    Nequal
    Lequal
    Gequal
    LN
    LN1
    LOCK
    LOG2
    LOGICAL
    LONG
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MALE
    MARKED
    MAX
    ME
    MENU
    MENUBAR
    MENUITEM
    MENUITEMS
    MENUS
    MESSAGE
    MID
    MIDDLE
    MIN
    MINUS
    MINUSEQ
    MINUSMINUS
    MOD
    MOUSE
    MOUSECLICK
    MOUSELOC
    MSG
    MULTIPLY
    NEUTER
    NEW
    NEWLINE
    NEXT
    NINE
    NINTH
    NOT
    NOTEQ
    NOTEQEQ
    NUMBER
    NUMERIC
    NUMTOCHAR
    OF
    OFFSET
    ON
    ONE
    OPEN
    OPTIONKEY
    OR
    OROR
    OUT
    PAINT
    PARAM
    PARAMCOUNT
    PARAMS
    PART
    PARTS
    PASS
    PATTERN
    PERCENT
    PERCENTEQ
    PI
    PICT
    PICTURE
    PIPE
    PIPEEQ
    PLAIN
    PLAY
    PLUS
    PLUSEQ
    PLUSPLUS
    POINT
    POLY
    POLYGON
    POP
    PREV
    PREVIOUS
    PUSH
    PUT
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QUOTE
    RANDOM
    RBRACE
    RBRACKET
    READ
    RECEIVE
    RECT
    RECTANGLE
    REG
    REGULAR
    REPEAT
    RESET
    RESULT
    RETURN
    RIGHT
    ROBOTIC
    ROUND
    RPAREN
    RSHIFT
    RSHIFTEQ
    SCREEN
    SCRIPT
    SCROLL
    SEC
    SECOND
    SECONDS
    SECS
    SELECT
    SELECTEDCHUNK
    SELECTEDFIELD
    SELECTEDLINE
    SELECTEDTEXT
    SELECTION
    SEMI
    SEND
    SET
    SEVEN
    SEVENTH
    SHIFTKEY
    SHORT
    SHOW
    SHRINK
    SIN
    SIX
    SIXTH
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SLOW
    SLOWLY
    SORT
    SPACE
    SPEAK
    SPEECH
    SPRAY
    SQRT
    SQUOTE
    STACK
    STACKS
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STRETCH
    STRING
    SUBTRACT
    SUM
    TAB
    TAN
    TARGET
    TEMPO
    TEN
    TENTH
    THE
    THEN
    THERE_IS_A
    THERE_IS_AN
    THERE_IS_NO
    THERE_IS_NOT_A
    THERE_IS_NOT_AN
    THIRD
    THIS
    THREE
    TICK
    TICKS
    TILDE
    TIME
    TIMES
    TITLEBAR
    TO
    TOOL
    TOP
    TRUNC
    TWO
    TYPE
    UNDERSCORE
    UNLOCK
    UNTIL
    UP
    URSHIFT
    URSHIFTEQ
    VALUE
    VARIABLE
    VENETIAN
    VERY
    VISUAL
    VOICE
    VOICES
    WAIT
    WATCHER
    WHILE
    WHITE
    WHOLE
    WINDOW
    WINDOWS
    WIPE
    WITH
    WITHOUT
    WORD
    WORDS
    WRITE
    YIELDSTAR
    ZERO
    ZOOM
    card
    cards
    item
    line
    mouseState
    picture
    stack
    word
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
    Nequal       ::= '≠'
    Lequal       ::= '≤'
    Gequal       ::= '≥'
%End

%Start
    Token
%End

%Rules
    Token ::= identifier /. checkForKeyWord($_ID); ./
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRING); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
            | newline    /. makeToken($_NEWLINE); ./
            | white /. skipToken(); ./
            | 'y' 'i' 'e' 'l' 'd' '*' /. makeToken($_YIELDSTAR); ./
            | '>' '>' '>' '=' /. makeToken($_URSHIFTEQ); ./
            | 'e' 'x' 'p' '1' /. makeToken($_EXP1); ./
            | 'e' 'x' 'p' '2' /. makeToken($_EXP2); ./
            | 'l' 'o' 'g' '2' /. makeToken($_LOG2); ./
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
            | 'l' 'n' '1' /. makeToken($_LN1); ./
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
            | Nequal /. makeToken($_Nequal); ./
            | Lequal /. makeToken($_Lequal); ./
            | Gequal /. makeToken($_Gequal); ./

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
