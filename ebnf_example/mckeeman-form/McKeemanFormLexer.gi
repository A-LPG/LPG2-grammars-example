-- McKeeman Form Lexer (LPG)
-- Ported from antlr/grammars-v4 mckeeman-form/McKeemanForm.g4 for parse-level examples.

%Options list
%Options fp=McKeemanFormLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.mckeeman_form
%options template=LexerTemplateF.gi
%options filter=McKeemanFormKWLexer.gi

%Define
    $kw_lexer_class /.$McKeemanFormKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NAME
    SPACE
    NEWLINE
    INDENTATION
    SINGLETON
    STRING
    DOT
    MINUS
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
    Token ::= INDENTATION /. makeToken($_INDENTATION); ./
            | SPACE       /. makeToken($_SPACE); ./
            | NEWLINE     /. makeToken($_NEWLINE); ./
            | SINGLETON   /. makeToken($_SINGLETON); ./
            | STRING      /. makeToken($_STRING); ./
            | NAME        /. makeToken($_NAME); ./
            | '.'         /. makeToken($_DOT); ./
            | '-'         /. makeToken($_MINUS); ./

    -- Indentation : '    ' (four spaces); Space : ' '
    INDENTATION ::= ' ' ' ' ' ' ' '
    SPACE ::= ' '

    -- Newline : '\r' | '\n' | '\r\n'
    NEWLINE ::= LF
              | CR
              | CR LF

    -- Name : [a-zA-Z_]+
    NAME ::= NameChar
           | NAME NameChar

    NameChar -> Letter
              | '_'

    Letter -> LowerCaseLetter
            | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    Hex -> Digit
         | a | b | c | d | e | f
         | A | B | C | D | E | F

    -- Singleton : '\'' . '\'' | '\'' HexCode '\''
    -- Prefer hex-code form when contents look like hex; else any single char.
    SINGLETON ::= "'" HexCode "'"
                | "'" AnySingletonChar "'"

    -- HexCode : '1' '0' Hex Hex Hex Hex | Hex? Hex Hex Hex Hex
    HexCode ::= 1 0 Hex Hex Hex Hex
              | Hex Hex Hex Hex Hex
              | Hex Hex Hex Hex

    AnySingletonChar -> Letter
                      | Digit
                      | '_'
                      | SpecialSingleton
                      | Space
                      | HT
                      | FF
                      | AfterASCII
                      | CtlCharNotWS
                      | "'"

    SpecialSingleton -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                        '%' | '&' | '^' | ':' | ';' | '"' | '|' | '{' | '}' |
                        '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'


    -- String : '"' .*? '"'
    STRING ::= '"' SBody '"'

    SBody -> $empty
           | SBody NotDQ

    NotDQ -> Letter
           | Digit
           | SpecialInString
           | Space
           | HT
           | FF
           | LF
           | CR
           | AfterASCII
           | CtlCharNotWS
           | '_'

    SpecialInString -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                       '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                       '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'
%End
