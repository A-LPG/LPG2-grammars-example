-- Metamath Lexer (LPG)
%Options list
%Options fp=MetamathLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.metamath
%options template=LexerTemplateF.gi
%options filter=MetamathKWLexer.gi
%Define
    $kw_lexer_class /.$MetamathKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    LPAREN
    RPAREN
    LABEL
    PRINTABLECHARACTER
    COMPRESSEDPROOFBLOCK
    INCLUDE_START
    INCLUDE_END
    CONSTANT_START
    VARIABLE_START
    DISJOINT_START
    FLOATING_START
    ESSENTIAL_START
    AXIOM_START
    PROVABLE_START
    PROOF_START
    END_STMT
    BLOCK_START
    BLOCK_END
    QUESTION
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
    Token ::= '$' '(' comment_body '$' ')' /. skipToken(); ./
            | '$' '[' /. makeToken($_INCLUDE_START); ./
            | '$' ']' /. makeToken($_INCLUDE_END); ./
            | '$' 'c' /. makeToken($_CONSTANT_START); ./
            | '$' 'v' /. makeToken($_VARIABLE_START); ./
            | '$' 'd' /. makeToken($_DISJOINT_START); ./
            | '$' 'f' /. makeToken($_FLOATING_START); ./
            | '$' 'e' /. makeToken($_ESSENTIAL_START); ./
            | '$' 'a' /. makeToken($_AXIOM_START); ./
            | '$' 'p' /. makeToken($_PROVABLE_START); ./
            | '$' '=' /. makeToken($_PROOF_START); ./
            | '$' '.' /. makeToken($_END_STMT); ./
            | '$' '{' /. makeToken($_BLOCK_START); ./
            | '$' '}' /. makeToken($_BLOCK_END); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '?' /. makeToken($_QUESTION); ./
            | COMPRESSEDPROOFBLOCK /. makeToken($_COMPRESSEDPROOFBLOCK); ./
            | LABEL /. makeToken($_LABEL); ./
            | PRINTABLECHARACTER /. makeToken($_PRINTABLECHARACTER); ./
            | white /. skipToken(); ./

    comment_body ::= %Empty | comment_body NotDollarClose
    -- skip until $)  -- simplified: any chars except we stop at $) via Token rule
    NotDollarClose -> Letter | Digit | Special | Space | HT | FF | LF | CR | AfterASCII | '"' | "'" | ')' | '(' 

    COMPRESSEDPROOFBLOCK ::= CompChar | COMPRESSEDPROOFBLOCK CompChar
    CompChar -> A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | '?'

    LABEL ::= LabelChar | LABEL LabelChar
    LabelChar -> Letter | Digit | '.' | '_'

    -- printable ASCII except space: fallback for math symbols
    PRINTABLECHARACTER ::= PrintChar | PRINTABLECHARACTER PrintChar
    PrintChar -> Letter | Digit | SpecialPrint
    SpecialPrint -> '!' | '#' | '-' | '$' | '%' | '&' | '*' | '+' | ',' | '/' | ':' | ';' | '<' | '=' | '>' |
                    '@' | '[' | '\' | ']' | '^' | '`' | '{' | '|' | '}' | '~' | "'" | '"'

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    Special -> '+' | '-' | '/' | '*' | '!' | '@' | '`' | '~' | '%' | '&' | '^' | ':' | ';' |
               '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '\' | '_'
    white ::= Space | HT | FF | LF | CR | white Space | white HT | white FF | white LF | white CR
%End
