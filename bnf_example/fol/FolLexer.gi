-- FolLexer (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options list
%Options fp=FolLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.fol
%options template=LexerTemplateF.gi
%options filter=FolKWLexer.gi

%Define
    $kw_lexer_class /.$FolKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    VARIABLE
    PRED_CONSTANT
    IND_CONSTANT
    FUNC_CONSTANT
    LPAREN
    RPAREN
    COMMA
    EQUAL
    NOT
    CONJ
    DISJ
    IMPL
    BICOND
    ENDLINE
    CHARACTER
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
    Token ::= '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | ',' /. makeToken($_COMMA); ./
            | '=' /. makeToken($_EQUAL); ./
            | '!' /. makeToken($_NOT); ./
            | '\' '/' /. makeToken($_CONJ); ./
            | '^' /. makeToken($_DISJ); ./
            | '<' '-' '>' /. makeToken($_BICOND); ./
            | '-' '>' /. makeToken($_IMPL); ./
            | VARIABLE /. makeToken($_VARIABLE); ./
            | PRED_CONSTANT /. makeToken($_PRED_CONSTANT); ./
            | IND_CONSTANT /. makeToken($_IND_CONSTANT); ./
            | FUNC_CONSTANT /. makeToken($_FUNC_CONSTANT); ./
            | ENDLINE /. makeToken($_ENDLINE); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./

    VARIABLE ::= '?' CharStar
    PRED_CONSTANT ::= '_' CharStar
    IND_CONSTANT ::= '#' CharStar
    FUNC_CONSTANT ::= '.' CharStar

    CharStar -> $empty
              | CharStar CHARACTER

    CHARACTER -> Digit | LowerCaseLetter | UpperCaseLetter

    identifier ::= Letter
                 | identifier Letter

    ENDLINE ::= NL
              | ENDLINE NL
    NL -> LF | CR


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9


    white -> Space | HT | FF
           | white Space
           | white HT
           | white FF
%End
