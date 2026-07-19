-- Real lexer for PhpParser (not token-stream soup). Keywords via PhpKWLexer.
%Options list
%Options fp=PhpLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.php
%options template=LexerTemplateF.gi
%options filter=PhpKWLexer.gi

%Define
    $kw_lexer_class /.$PhpKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    AMP
    AMPEQ
    ANDAND
    ARROW
    ARROWSTAR
    AT
    ATEQ
    Abstract
    Array
    As
    AttributeStart
    Autoload
    BACKSLASH
    BACKTICK
    BANG
    BITCLEAR
    BackQuoteString
    Binary
    BinaryCast
    BoolType
    BooleanConstant
    Break
    CARET
    CARETEQ
    CHAR_LITERAL
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    Call
    CallStatic
    Callable
    Case
    Catch
    Class
    Class__
    Clone
    Clone__
    CloseCurlyBracket
    Colon
    Const
    Constructor
    Continue
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DQUOTE
    DebugInfo
    Decimal
    Declare
    Default
    Destruct
    Dir__
    Divide
    Do
    Dollar
    DoubleCast
    DoubleQuote
    DoubleType
    ELLIPSIS
    EQ
    EQEQ
    EQEQEQ
    Echo
    Else
    ElseIf
    Empty
    Encoding
    EndDeclare
    EndFor
    EndForeach
    EndIf
    EndSwitch
    EndWhile
    Enum_
    Eq
    Eval
    Exit
    Extends
    FATARROW
    File__
    Final
    Finally
    FloatCast
    For
    Foreach
    From
    Function_
    Function__
    GT
    GTEQ
    Get
    Global
    Goto
    Greater
    HASH
    HereDocText
    Hex
    HtmlClose
    HtmlDecimal
    HtmlDoubleQuoteString
    HtmlDtd
    HtmlEndDoubleQuoteString
    HtmlEndQuoteString
    HtmlEquals
    HtmlHex
    HtmlName
    HtmlOpen
    HtmlQuoteString
    HtmlScriptClose
    HtmlScriptOpen
    HtmlSlash
    HtmlSlashClose
    HtmlStartDoubleQuoteString
    HtmlStartQuoteString
    HtmlStyleOpen
    HtmlText
    IDENTIFIER
    If
    Implements
    Import
    Include
    IncludeOnce
    InstanceOf
    InsteadOf
    Int16Cast
    Int64Type
    Int8Cast
    IntType
    Interface
    Invoke
    IsNotEq
    IsSet
    IsSet__
    LBRACE
    LBRACKET
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    Label
    LambdaFn
    Less
    Line__
    List
    LogicalAnd
    LogicalOr
    LogicalXor
    MINUS
    MINUSEQ
    MINUSMINUS
    Match_
    Method__
    NOTEQ
    NOTEQEQ
    NUMBER
    Namespace
    Namespace__
    New
    Null
    OP_10954
    OP_21850
    OP_28772
    OP_40818
    OROR
    ObjectType
    Octal
    OpenCurlyBracket
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    Parent_
    Partial
    Print
    Private
    Protected
    Public
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QuestionMark
    RBRACE
    RBRACKET
    RECEIVE
    RPAREN
    RSHIFT
    RSHIFTEQ
    Readonly
    Real
    Require
    RequireOnce
    Resource
    Return
    SEMI
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
    ScriptText
    SemiColon
    Set
    SetState
    Shebang
    SingleQuoteString
    Sleep
    StartHereDoc
    StartNowDoc
    Static
    StrictTypes
    StringPart
    StringType
    StyleBody
    Switch
    TILDE
    Throw
    Ticks
    ToString__
    Traic__
    Trait
    Try
    Typeof
    UNDERSCORE
    URSHIFT
    URSHIFTEQ
    UintCast
    UnicodeCast
    UnicodeEscape
    Unset
    Unset__
    Use
    Var
    VarName
    Wakeup
    While
    XmlClose
    XmlStart
    XmlText
    YIELDSTAR
    Yield
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
    Token ::= phpOpen /. skipToken(); ./
            | phpOpenEcho /. skipToken(); ./
            | phpClose /. skipToken(); ./
            | varName /. makeToken($_VarName); ./
            | singleQuoteString /. makeToken($_SingleQuoteString); ./
            | identifier /. checkForKeyWord($_Label); ./
            | number /. makeToken($_Decimal); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
            | MultiLineComment /. skipToken(); ./
            | white /. skipToken(); ./
            | 'y' 'i' 'e' 'l' 'd' '*' /. makeToken($_YIELDSTAR); ./
            | '>' '>' '>' '=' /. makeToken($_URSHIFTEQ); ./
            | '!' '=' '=' /. makeToken($_NOTEQEQ); ./
            | '*' '*' '=' /. makeToken($_STARSTAREQ); ./
            | '-' '>' '*' /. makeToken($_ARROWSTAR); ./
            | '.' '.' '.' /. makeToken($_ELLIPSIS); ./
            | '/' '/' '=' /. makeToken($_SLASHSLASHEQ); ./
            | '<' '<' '=' /. makeToken($_LSHIFTEQ); ./
            | '<' '=' '>' /. makeToken($_OP_28772); ./
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
            | '.' '=' /. makeToken($_OP_10954); ./
            | '/' '/' /. makeToken($_SLASHSLASH); ./
            | '/' '=' /. makeToken($_SLASHEQ); ./
            | ':' ':' /. makeToken($_COLONCOLON); ./
            | ':' '=' /. makeToken($_COLONEQ); ./
            | ':' '>' /. makeToken($_OP_21850); ./
            | '<' '-' /. makeToken($_RECEIVE); ./
            | '<' ':' /. makeToken($_OP_40818); ./
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
            | BackSlash BackSlash /. makeToken($_BACKSLASH); ./
            | '^' '=' /. makeToken($_CARETEQ); ./
            | '|' '=' /. makeToken($_PIPEEQ); ./
            | '|' '|' /. makeToken($_OROR); ./
            | '!' /. makeToken($_BANG); ./
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
            | ';' /. makeToken($_SemiColon); ./
            | '<' /. makeToken($_LT); ./
            | '=' /. makeToken($_Eq); ./
            | '>' /. makeToken($_GT); ./
            | '?' /. makeToken($_QUESTION); ./
            | '@' /. makeToken($_AT); ./
            | '[' /. makeToken($_LBRACKET); ./
            | '\' /. makeToken($_BACKSLASH); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '^' /. makeToken($_CARET); ./
            | '`' /. makeToken($_BACKTICK); ./
            | '{' /. makeToken($_OpenCurlyBracket); ./
            | '|' /. makeToken($_PIPE); ./
            | '}' /. makeToken($_CloseCurlyBracket); ./
            | '~' /. makeToken($_TILDE); ./

    phpOpen ::= LessThan QuestionMark 'p' 'h' 'p'
              | LessThan QuestionMark 'P' 'H' 'P'

    phpOpenEcho ::= LessThan QuestionMark Equal

    phpClose ::= QuestionMark GreaterThan

    varName ::= DollarSign varBody

    varBody -> Letter varTail
             | '_' varTail

    varTail -> $empty
             | varTail Letter
             | varTail Digit
             | varTail '_'

    singleQuoteString ::= SingleQuote sqBody SingleQuote

    sqBody -> $empty
            | sqBody sqChar

    sqChar -> NotSQ

    identifier -> Letter idRest
                | '_' idRest

    idRest -> $empty
            | idRest Letter
            | idRest Digit
            | idRest '_'

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

    NotDQ -> Letter | Digit | Space | HT | SingleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | LessThan | GreaterThan | Escape

    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | LessThan | GreaterThan | Escape

    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | '/' | n | r | t | b | f

    MultiLineComment ::= '/' '*' MLBody Star Slash

    MLBody -> $empty
            | MLBody MLChar

    MLChar -> Letter | Digit | Space | HT | LF | CR | SpecialNotNL | Star

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
