-- FlowmaticLexer (LPG)
%Options list
%Options fp=FlowmaticLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.flowmatic
%options template=LexerTemplateF.gi
%options filter=FlowmaticKWLexer.gi
%Define
    $kw_lexer_class /.$FlowmaticKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    END_MARK
    GOTO
    EOD
    HSP
    OUTPUT
    INPUT
    JUMP
    TO
    READ_ITEM
    WRITE_ITEM
    TRANSFER
    IF
    OTHERWISE
    REWIND
    STOP
    COMPARE
    WITH
    MOVE
    SET
    TEST
    AGAINST
    CLOSE_OUT
    FILES
    OPERATION
    EQUAL
    GREATER
    ZERO
    NUM
    ID
    LPAREN
    RPAREN
    SEMI
    DOT
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

    Token ::= '(' 'E' 'N' 'D' ')' /. makeToken($_END_MARK); ./
            | 'G' 'O' Space 'T' 'O' /. makeToken($_GOTO); ./
            | 'E' 'N' 'D' Space 'O' 'F' Space 'D' 'A' 'T' 'A' /. makeToken($_EOD); ./
            | 'C' 'L' 'O' 'S' 'E' '-' 'O' 'U' 'T' /. makeToken($_CLOSE_OUT); ./
            | 'R' 'E' 'A' 'D' '-' 'I' 'T' 'E' 'M' /. makeToken($_READ_ITEM); ./
            | 'W' 'R' 'I' 'T' 'E' '-' 'I' 'T' 'E' 'M' /. makeToken($_WRITE_ITEM); ./
            | 'J' 'U' 'M' 'P' /. makeToken($_JUMP); ./
            | 'T' 'O' /. makeToken($_TO); ./
            | 'H' 'S' 'P' /. makeToken($_HSP); ./
            | 'O' 'U' 'T' 'P' 'U' 'T' /. makeToken($_OUTPUT); ./
            | 'I' 'N' 'P' 'U' 'T' /. makeToken($_INPUT); ./
            | 'T' 'R' 'A' 'N' 'S' 'F' 'E' 'R' /. makeToken($_TRANSFER); ./
            | 'O' 'T' 'H' 'E' 'R' 'W' 'I' 'S' 'E' /. makeToken($_OTHERWISE); ./
            | 'R' 'E' 'W' 'I' 'N' 'D' /. makeToken($_REWIND); ./
            | 'C' 'O' 'M' 'P' 'A' 'R' 'E' /. makeToken($_COMPARE); ./
            | 'W' 'I' 'T' 'H' /. makeToken($_WITH); ./
            | 'M' 'O' 'V' 'E' /. makeToken($_MOVE); ./
            | 'T' 'E' 'S' 'T' /. makeToken($_TEST); ./
            | 'A' 'G' 'A' 'I' 'N' 'S' 'T' /. makeToken($_AGAINST); ./
            | 'F' 'I' 'L' 'E' 'S' /. makeToken($_FILES); ./
            | 'O' 'P' 'E' 'R' 'A' 'T' 'I' 'O' 'N' /. makeToken($_OPERATION); ./
            | 'E' 'Q' 'U' 'A' 'L' /. makeToken($_EQUAL); ./
            | 'G' 'R' 'E' 'A' 'T' 'E' 'R' /. makeToken($_GREATER); ./
            | 'S' 'T' 'O' 'P' /. makeToken($_STOP); ./
            | 'S' 'E' 'T' /. makeToken($_SET); ./
            | 'I' 'F' /. makeToken($_IF); ./
            | ZERO /. makeToken($_ZERO); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | ';' /. makeToken($_SEMI); ./
            | '.' /. makeToken($_DOT); ./
            | NUM /. makeToken($_NUM); ./
            | identifier /. makeToken($_ID); ./
            | white /. skipToken(); ./

    ZERO ::= 'Z' | ZERO 'Z'

    NUM ::= Digit | NUM Digit

    identifier ::= IdChar | identifier IdChar
    IdChar -> Letter | '-'

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
