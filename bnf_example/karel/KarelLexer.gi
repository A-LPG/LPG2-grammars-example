-- Karel Lexer (LPG)
%Options list
%Options fp=KarelLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.karel
%options template=LexerTemplateF.gi
%options filter=KarelKWLexer.gi
%Define
    $kw_lexer_class /.$KarelKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NUMBER
    ANY_BEEPERS_IN_BEEPER_BAG
    NO_BEEPERS_IN_BEEPER_BAG
    BEGINNING_OF_EXECUTION
    BEGINNING_OF_PROGRAM
    NOT_NEXT_TO_A_BEEPER
    END_OF_EXECUTION
    FRONT_IS_BLOCKED
    RIGHT_IS_BLOCKED
    NEXT_TO_A_BEEPER
    NOT_FACING_NORTH
    NOT_FACING_SOUTH
    LEFT_IS_BLOCKED
    BACK_IS_BLOCKED
    NOT_FACING_EAST
    NOT_FACING_WEST
    END_OF_PROGRAM
    FRONT_IS_CLEAR
    RIGHT_IS_CLEAR
    LEFT_IS_CLEAR
    BACK_IS_CLEAR
    FACING_NORTH
    FACING_SOUTH
    FACING_EAST
    FACING_WEST
    PICKBEEPER
    PUTBEEPER
    TURNLEFT
    ITERATE
    TURNOFF
    DEFINE
    BEGIN
    TIMES
    WHILE
    THEN
    ELSE
    MOVE
    END
    AS
    DO
    IF
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
    Token ::= 'A' 'N' 'Y' '-' 'B' 'E' 'E' 'P' 'E' 'R' 'S' '-' 'I' 'N' '-' 'B' 'E' 'E' 'P' 'E' 'R' '-' 'B' 'A' 'G' /. makeToken($_ANY_BEEPERS_IN_BEEPER_BAG); ./
            | 'N' 'O' '-' 'B' 'E' 'E' 'P' 'E' 'R' 'S' '-' 'I' 'N' '-' 'B' 'E' 'E' 'P' 'E' 'R' '-' 'B' 'A' 'G' /. makeToken($_NO_BEEPERS_IN_BEEPER_BAG); ./
            | 'B' 'E' 'G' 'I' 'N' 'N' 'I' 'N' 'G' '-' 'O' 'F' '-' 'E' 'X' 'E' 'C' 'U' 'T' 'I' 'O' 'N' /. makeToken($_BEGINNING_OF_EXECUTION); ./
            | 'B' 'E' 'G' 'I' 'N' 'N' 'I' 'N' 'G' '-' 'O' 'F' '-' 'P' 'R' 'O' 'G' 'R' 'A' 'M' /. makeToken($_BEGINNING_OF_PROGRAM); ./
            | 'N' 'O' 'T' '-' 'N' 'E' 'X' 'T' '-' 'T' 'O' '-' 'A' '-' 'B' 'E' 'E' 'P' 'E' 'R' /. makeToken($_NOT_NEXT_TO_A_BEEPER); ./
            | 'E' 'N' 'D' '-' 'O' 'F' '-' 'E' 'X' 'E' 'C' 'U' 'T' 'I' 'O' 'N' /. makeToken($_END_OF_EXECUTION); ./
            | 'F' 'R' 'O' 'N' 'T' '-' 'I' 'S' '-' 'B' 'L' 'O' 'C' 'K' 'E' 'D' /. makeToken($_FRONT_IS_BLOCKED); ./
            | 'R' 'I' 'G' 'H' 'T' '-' 'I' 'S' '-' 'B' 'L' 'O' 'C' 'K' 'E' 'D' /. makeToken($_RIGHT_IS_BLOCKED); ./
            | 'N' 'E' 'X' 'T' '-' 'T' 'O' '-' 'A' '-' 'B' 'E' 'E' 'P' 'E' 'R' /. makeToken($_NEXT_TO_A_BEEPER); ./
            | 'N' 'O' 'T' '-' 'F' 'A' 'C' 'I' 'N' 'G' '-' 'N' 'O' 'R' 'T' 'H' /. makeToken($_NOT_FACING_NORTH); ./
            | 'N' 'O' 'T' '-' 'F' 'A' 'C' 'I' 'N' 'G' '-' 'S' 'O' 'U' 'T' 'H' /. makeToken($_NOT_FACING_SOUTH); ./
            | 'L' 'E' 'F' 'T' '-' 'I' 'S' '-' 'B' 'L' 'O' 'C' 'K' 'E' 'D' /. makeToken($_LEFT_IS_BLOCKED); ./
            | 'B' 'A' 'C' 'K' '-' 'I' 'S' '-' 'B' 'L' 'O' 'C' 'K' 'E' 'D' /. makeToken($_BACK_IS_BLOCKED); ./
            | 'N' 'O' 'T' '-' 'F' 'A' 'C' 'I' 'N' 'G' '-' 'E' 'A' 'S' 'T' /. makeToken($_NOT_FACING_EAST); ./
            | 'N' 'O' 'T' '-' 'F' 'A' 'C' 'I' 'N' 'G' '-' 'W' 'E' 'S' 'T' /. makeToken($_NOT_FACING_WEST); ./
            | 'E' 'N' 'D' '-' 'O' 'F' '-' 'P' 'R' 'O' 'G' 'R' 'A' 'M' /. makeToken($_END_OF_PROGRAM); ./
            | 'F' 'R' 'O' 'N' 'T' '-' 'I' 'S' '-' 'C' 'L' 'E' 'A' 'R' /. makeToken($_FRONT_IS_CLEAR); ./
            | 'R' 'I' 'G' 'H' 'T' '-' 'I' 'S' '-' 'C' 'L' 'E' 'A' 'R' /. makeToken($_RIGHT_IS_CLEAR); ./
            | 'L' 'E' 'F' 'T' '-' 'I' 'S' '-' 'C' 'L' 'E' 'A' 'R' /. makeToken($_LEFT_IS_CLEAR); ./
            | 'B' 'A' 'C' 'K' '-' 'I' 'S' '-' 'C' 'L' 'E' 'A' 'R' /. makeToken($_BACK_IS_CLEAR); ./
            | 'F' 'A' 'C' 'I' 'N' 'G' '-' 'N' 'O' 'R' 'T' 'H' /. makeToken($_FACING_NORTH); ./
            | 'F' 'A' 'C' 'I' 'N' 'G' '-' 'S' 'O' 'U' 'T' 'H' /. makeToken($_FACING_SOUTH); ./
            | 'F' 'A' 'C' 'I' 'N' 'G' '-' 'E' 'A' 'S' 'T' /. makeToken($_FACING_EAST); ./
            | 'F' 'A' 'C' 'I' 'N' 'G' '-' 'W' 'E' 'S' 'T' /. makeToken($_FACING_WEST); ./
            | 'P' 'I' 'C' 'K' 'B' 'E' 'E' 'P' 'E' 'R' /. makeToken($_PICKBEEPER); ./
            | 'P' 'U' 'T' 'B' 'E' 'E' 'P' 'E' 'R' /. makeToken($_PUTBEEPER); ./
            | 'T' 'U' 'R' 'N' 'L' 'E' 'F' 'T' /. makeToken($_TURNLEFT); ./
            | 'I' 'T' 'E' 'R' 'A' 'T' 'E' /. makeToken($_ITERATE); ./
            | 'T' 'U' 'R' 'N' 'O' 'F' 'F' /. makeToken($_TURNOFF); ./
            | 'D' 'E' 'F' 'I' 'N' 'E' /. makeToken($_DEFINE); ./
            | 'B' 'E' 'G' 'I' 'N' /. makeToken($_BEGIN); ./
            | 'T' 'I' 'M' 'E' 'S' /. makeToken($_TIMES); ./
            | 'W' 'H' 'I' 'L' 'E' /. makeToken($_WHILE); ./
            | 'T' 'H' 'E' 'N' /. makeToken($_THEN); ./
            | 'E' 'L' 'S' 'E' /. makeToken($_ELSE); ./
            | 'M' 'O' 'V' 'E' /. makeToken($_MOVE); ./
            | 'E' 'N' 'D' /. makeToken($_END); ./
            | 'A' 'S' /. makeToken($_AS); ./
            | 'D' 'O' /. makeToken($_DO); ./
            | 'I' 'F' /. makeToken($_IF); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | identifier /. makeToken($_IDENTIFIER); ./
            | white /. skipToken(); ./

    NUMBER ::= Digit | NUMBER Digit
    identifier ::= IdStart
                 | identifier IdStart
                 | identifier Digit
    IdStart -> LowerCaseLetter | UpperCaseLetter | '-'

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
