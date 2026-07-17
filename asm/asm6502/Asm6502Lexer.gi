-- asm6502 Lexer (LPG)
-- Ported from antlr/grammars-v4 asm/asm6502 for parse-level examples.

%Options list
%Options fp=Asm6502Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.asm.asm6502
%options template=LexerTemplateF.gi
%options filter=Asm6502KWLexer.gi

%Define
    $kw_lexer_class /.$Asm6502KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NAME
    NUMBER
    STRING
    EOL
    COMMA
    PLUS
    MINUS
    STAR
    HASH
    LPAREN
    RPAREN
    COLON
    ASSEMBLER_INSTRUCTION
    OPCODE
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
    Token ::= ','          /. makeToken($_COMMA); ./
            | '+'          /. makeToken($_PLUS); ./
            | '-'          /. makeToken($_MINUS); ./
            | '*'          /. makeToken($_STAR); ./
            | '#'          /. makeToken($_HASH); ./
            | ':'          /. makeToken($_COLON); ./
            | '('          /. makeToken($_LPAREN); ./
            | ')'          /. makeToken($_RPAREN); ./
            | '='          /. makeToken($_ASSEMBLER_INSTRUCTION); ./
            | STRING       /. makeToken($_STRING); ./
            | NUMBER       /. makeToken($_NUMBER); ./
            | identifier   /. checkForKeyWord($_NAME); ./
            | comment      /. skipToken(); ./
            | eol          /. makeToken($_EOL); ./
            | white        /. skipToken(); ./

    identifier ::= Letter name_tail
    name_tail -> $empty | name_tail NameChar
    NameChar -> Letter | Digit | '.' | '"'

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    NUMBER ::= '$' HexDigits
             | Digit HexDigitsOpt
    HexDigits ::= HexDigit | HexDigits HexDigit
    HexDigitsOpt -> $empty | HexDigits
    HexDigit -> Digit | HexLetter
    HexLetter -> a | b | c | d | e | f | A | B | C | D | E | F

    comment ::= ';' CommentBody
    CommentBody -> $empty | CommentBody NotNL
    NotNL -> Letter | Digit | SpecialNotNL | Space | HT | FF | AfterASCII |
             '"' | "'" | '[' | ']'
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | '?' |
                    ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '\'

    STRING ::= '"' DQBody '"'
    DQBody -> $empty | DQBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | AfterASCII | "'"
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | '[' | ']' |
                    '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '\'

    eol ::= LF | CR LF | CR
    white -> WSChar | white WSChar
    WSChar -> Space | HT | FF
%End
