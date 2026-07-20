-- Chip-8 Lexer (LPG)
-- Ported from antlr/grammars-v4 chip8/chip8.g4

%Options list
%Options fp=Chip8Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.chip8
%options template=LexerTemplateF.gi
%options filter=Chip8KWLexer.gi

%Define
    $kw_lexer_class /.$Chip8KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    REGISTER
    ADDR
    BYTE
    DIGIT
    COMMA
    LBRACE
    RBRACE
    LBRACKET
    RBRACKET
    CLS
    RET
    SYS
    JP
    CALL
    SE
    SNE
    LD
    ADD
    OR
    AND
    XOR
    SUB
    SHR
    SUBN
    SHL
    RND
    DRW
    SKP
    SKNP
    I
    DT
    ST
    F
    B
    K
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
    Token ::= ',' /. makeToken($_COMMA); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | REGISTER /. makeToken($_REGISTER); ./
            -- opcodes before ADDR/BYTE so ADD/AND are not eaten as hex
            | identifier /. checkForKeyWord(); ./
            | ADDR /. makeToken($_ADDR); ./
            | BYTE /. makeToken($_BYTE); ./
            | DIGIT /. makeToken($_DIGIT); ./
            | white /. skipToken(); ./

    -- V0..VF (hex digit)
    REGISTER ::= LetterVv HexDigit

    -- Leading digit so AA/ADD are not forced through hex tokens
    ADDR ::= Digit HexDigit HexDigit
    BYTE ::= Digit HexDigit
    DIGIT ::= HexDigit


    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit

    LetterVv -> v | V
    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
