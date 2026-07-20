-- Generated parse-level lexer (generic token stream)
%Options list
%Options fp=Smtlibv2Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.smtlibv2
%options template=LexerTemplateF.gi
%options filter=Smtlibv2KWLexer.gi

%Define
    $kw_lexer_class /.$Smtlibv2KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NUMBER
    STRING
    LPAREN
    RPAREN
    LBRACE
    RBRACE
    LBRACKET
    RBRACKET
    LANGLE
    RANGLE
    COMMA
    DOT
    COLON
    SEMI
    EQ
    PLUS
    MINUS
    STAR
    SLASH
    AMP
    BAR
    CARET
    BANG
    QUEST
    AT
    HASH
    DOLLAR
    PERCENT
    TILDE
    BACKTICK
    QUOTE
    BACKSLASH
    Binary
    CMD_Assert
    CMD_CheckSat
    CMD_CheckSatAssuming
    CMD_DeclareConst
    CMD_DeclareDatatype
    CMD_DeclareDatatypes
    CMD_DeclareFun
    CMD_DeclareSort
    CMD_DefineFun
    CMD_DefineFunRec
    CMD_DefineFunsRec
    CMD_DefineSort
    CMD_Echo
    CMD_Exit
    CMD_GetAssertions
    CMD_GetAssignment
    CMD_GetInfo
    CMD_GetModel
    CMD_GetOption
    CMD_GetProof
    CMD_GetUnsatAssumptions
    CMD_GetUnsatCore
    CMD_GetValue
    CMD_Pop
    CMD_Push
    CMD_Reset
    CMD_ResetAssertions
    CMD_SetInfo
    CMD_SetLogic
    CMD_SetOption
    Colon
    Decimal
    GRW_As
    GRW_Binary
    GRW_Decimal
    GRW_Exclamation
    GRW_Exists
    GRW_Forall
    GRW_Hexadecimal
    GRW_Let
    GRW_Match
    GRW_Numeral
    GRW_Par
    GRW_String
    GRW_Underscore
    HexDecimal
    Numeral
    PK_AllStatistics
    PK_AssertionStackLevels
    PK_Authors
    PK_Category
    PK_Chainable
    PK_Definition
    PK_ErrorBehaviour
    PK_Extension
    PK_Funs
    PK_FunsDescription
    PK_GlobalDeclarations
    PK_InteractiveMode
    PK_Language
    PK_LeftAssoc
    PK_License
    PK_Name
    PK_Named
    PK_Notes
    PK_Pattern
    PK_PrintSuccess
    PK_ProduceAssertions
    PK_ProduceAssignments
    PK_ProduceModels
    PK_ProduceProofs
    PK_ProduceUnsatCores
    PK_RandomSeed
    PK_ReasonUnknown
    PK_RegularOutputChannel
    PK_RightAssoc
    PK_SmtLibVersion
    PK_Sorts
    PK_SortsDescription
    PK_Source
    PK_Status
    PK_Theories
    PK_Values
    PK_Verbosity
    PK_Version
    PS_Bool
    PS_ContinuedExecution
    PS_Error
    PS_False
    PS_ImmediateExit
    PS_Incomplete
    PS_Logic
    PS_Memout
    PS_Not
    PS_Sat
    PS_Success
    PS_Theory
    PS_True
    PS_Unknown
    PS_Unsat
    PS_Unsupported
    ParClose
    ParOpen
    QuotedSymbol
    RS_Model
    String
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
    Token ::= STRING /. makeToken($_STRING); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | IDENTIFIER /. checkForKeyWord(); ./
            | '(' /. makeToken($_ParOpen); ./
            | ')' /. makeToken($_ParClose); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '<' /. makeToken($_LANGLE); ./
            | '>' /. makeToken($_RANGLE); ./
            | ',' /. makeToken($_COMMA); ./
            | '.' /. makeToken($_DOT); ./
            | ':' /. makeToken($_COLON); ./
            | '=' /. makeToken($_EQ); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '&' /. makeToken($_AMP); ./
            | '|' /. makeToken($_BAR); ./
            | '^' /. makeToken($_CARET); ./
            | '!' /. makeToken($_BANG); ./
            | '?' /. makeToken($_QUEST); ./
            | '@' /. makeToken($_AT); ./
            | '$' /. makeToken($_DOLLAR); ./
            | '%' /. makeToken($_PERCENT); ./
            | '~' /. makeToken($_TILDE); ./
            | '`' /. makeToken($_BACKTICK); ./
            | ';' /. makeToken($_SEMI); ./
            | '#' /. makeToken($_HASH); ./
            | "'" /. makeToken($_QUOTE); ./
            | BackSlash /. makeToken($_BACKSLASH); ./
            | SLComment     /. skipToken(); ./
            | MLComment     /. skipToken(); ./

            | white /. skipToken(); ./

    IDENTIFIER ::= IdStart
                 | IDENTIFIER IdStart
                 | IDENTIFIER Digit
                 | IDENTIFIER '-' IdStart

    IdStart -> Letter | '_' | AfterASCII
    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    NUMBER ::= Digits
             | Digits '.' Digits
             | 0 x HexDigits
             | 0 X HexDigits

    HexDigits ::= HexDigit | HexDigits HexDigit
    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F
    Digits ::= Digit | Digits Digit

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ | SLBody Escape
    Escape ::= BackSlash EscapeAny
    EscapeAny -> Letter | Digit | DoubleQuote | SingleQuote | BackSlash | Space | '/' | SpecialEsc
    SpecialEsc -> '+' | '-' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                  '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' |
                  '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | LF | CR | AfterASCII | '_'
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'

    SLComment ::= '/' '/' SLCBody
    SLCBody -> $empty | SLCBody NotNL

    MLComment ::= '/' '*' MLCBody '*' '/'
    MLCBody -> $empty | MLCBody NotStar | MLCBody '*' NotSlash

    NotNL -> Letter | Digit | SpecialNotNL | Space | HT | FF | AfterASCII | '_'
    NotStar -> Letter | Digit | SpecialNotStar | Space | HT | FF | LF | CR | AfterASCII | '_' | "'" | '"'
    NotSlash -> Letter | Digit | SpecialNotSlash | Space | HT | FF | LF | CR | AfterASCII | '_' | '*' | "'" | '"'

    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | BackSlash
    SpecialNotStar -> '+' | '-' | '/' | '(' | ')' | '!' | '@' | '`' | '~' |
                      '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                      '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | BackSlash
    SpecialNotSlash -> '+' | '-' | '(' | ')' | '!' | '@' | '`' | '~' |
                       '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                       '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | BackSlash

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
