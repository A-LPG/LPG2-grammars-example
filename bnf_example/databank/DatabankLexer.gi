-- Databank Lexer (LPG)
-- Ported from antlr/grammars-v4 databank/databank.g4

%Options list
%Options fp=DatabankLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.databank
%options template=LexerTemplateF.gi
%options filter=DatabankKWLexer.gi

%Define
    $kw_lexer_class /.$DatabankKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    FLOATINGPOINT
    DATATYPE
    NA
    EOL
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
    Token ::= comment      /. skipToken(); ./
            | datatype     /. makeToken($_DATATYPE); ./
            | floating     /. makeToken($_FLOATINGPOINT); ./
            | identifier   /. checkForKeyWord(); ./
            | eols         /. makeToken($_EOL); ./
            | space        /. skipToken(); ./

    -- Comments: "c ... " then optional spaces then EOL (EOL consumed by skip)
    comment ::= '"' 'c' CommentBody '"' SpacesOpt EolChars

    CommentBody -> $empty
                 | CommentBody CommentChar

    CommentChar -> Letter | Digit | Special | Space | HT | FF | AfterASCII

    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
               '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
               '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' |
               DoubleQuote

    -- datatype markers (-1/-4/-12) only when alone on a line (includes EOL)
    -- so -1.70000 remains a FLOATINGPOINT via longest match
    datatype ::= '-' '1' EolChars
               | '-' '4' EolChars
               | '-' '1' '2' EolChars

    floating ::= OptSign numberBody OptExp

    OptSign -> $empty | '+' | '-'

    numberBody ::= Digits
                 | Digits '.' DigitsOpt

    DigitsOpt -> $empty | Digits
    Digits -> Digit | Digits Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    OptExp -> $empty
            | LetterEe OptSign Digits

    LetterEe -> e | E

    identifier ::= Letter
                 | identifier Letter

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    eols ::= EolChars
           | eols EolChars

    EolChars ::= LF | CR | CR LF

    SpacesOpt -> $empty | Spaces
    Spaces -> Space | Spaces Space
    space -> Space | HT
%End
