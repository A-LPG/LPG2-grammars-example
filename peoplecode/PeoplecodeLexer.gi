-- PeopleCode Lexer (LPG)
%Options list
%Options fp=PeoplecodeLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.peoplecode
%options template=LexerTemplateF.gi
%options filter=PeoplecodeKWLexer.gi
%Define
    $kw_lexer_class /.$PeoplecodeKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    GENERIC_ID
    VAR_ID
    SYS_VAR_ID
    IntegerLiteral
    DecimalLiteral
    StringLiteral
    LPAREN RPAREN LBRACKET RBRACKET
    DOT COMMA SEMI COLON
    PLUS MINUS STAR SLASH
    EQ NE LT LE GT GE
    PIPE AT
    KW_END_EVALUATE
    KW_END_FUNCTION
    KW_FIELDFORMULA
    KW_FIELDCHANGE
    KW_END_METHOD
    KW_PEOPLECODE
    KW_WHEN_OTHER
    KW_END_CLASS
    KW_END_WHILE
    KW_EXCEPTION
    KW_CONSTANT
    KW_EVALUATE
    KW_FUNCTION
    KW_INSTANCE
    KW_PROPERTY
    KW_READONLY
    KW_DECLARE
    KW_END_FOR
    KW_END_GET
    KW_END_SET
    KW_END_TRY
    KW_PRIVATE
    KW_RETURNS
    KW_WARNING
    KW_CREATE
    KW_END_IF
    KW_IMPORT
    KW_METHOD
    KW_RETURN
    KW_BREAK
    KW_CATCH
    KW_CLASS
    KW_ERROR
    KW_FALSE
    KW_THROW
    KW_WHILE
    KW_ELSE
    KW_EXIT
    KW_STEP
    KW_THEN
    KW_TRUE
    KW_WHEN
    KW_AND
    KW_FOR
    KW_GET
    KW_NOT
    KW_SET
    KW_TRY
    KW_REM
    KW_AS
    KW_IF
    KW_OF
    KW_OR
    KW_TO
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
    Token ::= block_comment /. skipToken(); ./
            | angle_comment /. skipToken(); ./
            | plus_comment /. skipToken(); ./
            | '&' GENERIC_ID /. makeToken($_VAR_ID); ./
            | '%' GENERIC_ID /. makeToken($_SYS_VAR_ID); ./
            | DecimalLiteral /. makeToken($_DecimalLiteral); ./
            | IntegerLiteral /. makeToken($_IntegerLiteral); ./
            | StringLiteral /. makeToken($_StringLiteral); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '.' /. makeToken($_DOT); ./
            | ',' /. makeToken($_COMMA); ./
            | ';' /. makeToken($_SEMI); ./
            | ':' /. makeToken($_COLON); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '<' '>' /. makeToken($_NE); ./
            | '<' '=' /. makeToken($_LE); ./
            | '>' '=' /. makeToken($_GE); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '=' /. makeToken($_EQ); ./
            | '|' /. makeToken($_PIPE); ./
            | '@' /. makeToken($_AT); ./
            | GENERIC_ID /. checkForKeyWord($_GENERIC_ID); ./
            | white /. skipToken(); ./

    block_comment ::= '/' '*' CommentBody StarSlash
    StarSlash ::= '*' '/'
    angle_comment ::= '<' '*' CommentBody StarGt
    StarGt ::= '*' '>'
    plus_comment ::= '/' '+' CommentBody PlusSlash opt_semi
    PlusSlash ::= '+' '/'
    opt_semi ::= %Empty | ';'
    CommentBody ::= %Empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | SpecialC | Space | HT | FF | LF | CR | AfterASCII | '"' | "'" | '/' | '*' | '+' | '<' | '>'
    SpecialC -> '-' | '(' | ')' | '!' | '@' | '`' | '~' | '%' | '&' | '^' | ':' | ';' |
                '|' | LeftBrace | RightBrace | '[' | ']' | '?' | ',' | '.' | '=' | '#' | '$' | '_' | BackSlash

    DecimalLiteral ::= IntegerLiteral '.' Digits
    IntegerLiteral ::= '0' | NonZero DigitsOpt
    NonZero -> 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    DigitsOpt ::= %Empty | Digits
    Digits ::= Digit | Digits Digit
    StringLiteral ::= '"' SBody '"'
    SBody ::= %Empty | SBody NotDQ
    NotDQ -> Letter | Digit | SpecialC | Space | HT | FF | LF | CR | AfterASCII | "'" | '/' | '*' | '+' | '<' | '>'

    -- allow hyphen inside identifiers for end-class style keywords
    GENERIC_ID ::= Letter IdRest
    IdRest ::= %Empty | IdRest IdChar
    IdChar -> Letter | Digit | '_' | '#' | '-'
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    white ::= Space | HT | FF | LF | CR | white Space | white HT | white FF | white LF | white CR
%End
