-- ABNF Lexer (LPG)
-- Ported from antlr/grammars-v4 abnf/Abnf.g4 for parse-level examples.
-- Source grammar: RFC 5234 / RFC 7405 (BSD, Rainer Schuster).

%Options list
%Options fp=AbnfLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.abnf
%options template=LexerTemplateF.gi
%options filter=AbnfKWLexer.gi

%Define
    $kw_lexer_class /.$AbnfKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    INT
    STRING
    NumberValue
    ProseValue
    EQUAL
    SLASH
    STAR
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
    X
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
    Token ::= '='           /. makeToken($_EQUAL); ./
            | '/'           /. makeToken($_SLASH); ./
            | '*'           /. makeToken($_STAR); ./
            | '('           /. makeToken($_LPAREN); ./
            | ')'           /. makeToken($_RPAREN); ./
            | '['           /. makeToken($_LBRACKET); ./
            | ']'           /. makeToken($_RBRACKET); ./
            | IDENTIFIER    /. makeToken($_IDENTIFIER); ./
            | INT           /. makeToken($_INT); ./
            | STRING        /. makeToken($_STRING); ./
            | NumberValue   /. makeToken($_NumberValue); ./
            | ProseValue    /. makeToken($_ProseValue); ./
            | white         /. skipToken(); ./
            | COMMENT       /. skipToken(); ./

    -- ID : LETTER (LETTER | DIGIT | '-' | '_')*
    IDENTIFIER ::= Letter IdTailOpt

    IdTailOpt -> $empty
               | IdTail

    IdTail -> IdChar
            | IdTail IdChar

    IdChar -> Letter
            | Digit
            | '-'
            | '_'

    Letter -> LowerCaseLetter
            | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- INT : '0'..'9'+
    INT ::= Digit
          | INT Digit

    -- STRING : ('%s' | '%i')? '"' ~'"'* '"'
    STRING ::= '"' SLBody '"'
             | '%' CaseFlag '"' SLBody '"'

    CaseFlag -> s | i

    SLBody -> $empty
            | SLBody NotDQ

    NotDQ -> Letter
           | Digit
           | SpecialNotDQ
           | Space
           | HT
           | FF
           | LF
           | CR
           | CtlCharNotWS
           | AfterASCII

    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' |
                    '_' | '\'

    -- NumberValue : '%' (BinaryValue | DecimalValue | HexValue)
    NumberValue ::= '%' 'b' Bits BitSuffixOpt
                  | '%' 'd' Digits DigSuffixOpt
                  | '%' 'x' HexDigits HexSuffixOpt

    Bits ::= Bit
           | Bits Bit

    Bit -> 0 | 1

    BitSuffixOpt -> $empty
                  | DotBitsList
                  | '-' Bits

    DotBitsList ::= '.' Bits
                  | DotBitsList '.' Bits

    Digits ::= Digit
             | Digits Digit

    DigSuffixOpt -> $empty
                  | DotDigitsList
                  | '-' Digits

    DotDigitsList ::= '.' Digits
                    | DotDigitsList '.' Digits

    HexDigits ::= HexDigit
                | HexDigits HexDigit

    HexDigit -> Digit
              | a | b | c | d | e | f
              | A | B | C | D | E | F

    HexSuffixOpt -> $empty
                  | DotHexList
                  | '-' HexDigits

    DotHexList ::= '.' HexDigits
                 | DotHexList '.' HexDigits

    -- ProseValue : '<' ~'>'* '>'
    ProseValue ::= '<' ProseBody '>'

    ProseBody -> $empty
               | ProseBody NotGT

    NotGT -> Letter
           | Digit
           | SpecialNotGT
           | Space
           | HT
           | FF
           | LF
           | CR
           | CtlCharNotWS
           | AfterASCII

    SpecialNotGT -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '=' | '#' | '$' |
                    '_' | '\' | '"'

    -- COMMENT : ';' ~('\n'|'\r')* '\r'? '\n' -> channel(HIDDEN)
    COMMENT ::= ';' CommentBody OptCR LF

    CommentBody -> $empty
                 | CommentBody NotEOL

    NotEOL -> Letter
            | Digit
            | SpecialNotEOL
            | Space
            | HT
            | FF
            | CtlCharNotWS
            | AfterASCII

    SpecialNotEOL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                     '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                     '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' |
                     '_' | '\' | '"'

    OptCR -> $empty
           | CR

    -- WS : (' '|'\t'|'\r'|'\n') -> channel(HIDDEN)
    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT | FF
%End
