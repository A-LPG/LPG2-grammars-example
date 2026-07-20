-- asmZ80 Lexer (LPG)
-- Ported from antlr/grammars-v4 asm/asmZ80 for parse-level examples.

%Options list
%Options fp=AsmZ80Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.asm.asmZ80
%options template=LexerTemplateF.gi
%options filter=AsmZ80KWLexer.gi

%Define
    $kw_lexer_class /.$AsmZ80KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NAME
    NUMBER
    COMMENT
    STRING
    EOL
    COMMA
    PLUS
    MINUS
    STAR
    SLASH
    DOLLAR
    COLON
    LPAREN
    RPAREN
    ASSEMBLER_DIRECTIVE
    REGISTER
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
            | '/'          /. makeToken($_SLASH); ./
            | '$'          /. makeToken($_DOLLAR); ./
            | ':'          /. makeToken($_COLON); ./
            | '('          /. makeToken($_LPAREN); ./
            | ')'          /. makeToken($_RPAREN); ./
            | COMMENT      /. makeToken($_COMMENT); ./
            | STRING       /. makeToken($_STRING); ./
            | NUMBER       /. makeToken($_NUMBER); ./
            | identifier   /. checkForKeyWord($_NAME); ./
            | eol          /. makeToken($_EOL); ./
            | white        /. skipToken(); ./

    -- NAME: [A-Z][A-Z0-9."]* (case folded via KW filter for keywords)
    identifier ::= Letter name_tail

    name_tail -> $empty
               | name_tail NameChar

    NameChar -> Letter | Digit | '.' | '"'

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- Prefer digit/$ start or trailing H so bare A..F stay identifiers/registers
    NUMBER ::= '$' HexDigits OptH
             | Digit HexDigitsOpt OptH
             | HexLetterDigits H
    OptH -> $empty | h | H
    HexDigits ::= HexDigit | HexDigits HexDigit
    HexDigitsOpt -> $empty | HexDigits
    HexLetterDigits ::= HexLetter | HexLetterDigits HexDigit
    HexLetter -> a | b | c | d | e | f | A | B | C | D | E | F
    HexDigit -> Digit | HexLetter


    COMMENT ::= ';' CommentBody
    CommentBody -> $empty | CommentBody NotNL
    NotNL -> Letter | Digit | SpecialNotNL | Space | HT | FF | AfterASCII |
             '"' | "'" | '[' | ']'
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | '?' |
                    ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '\'

    STRING ::= "'" SQBody "'"
    SQBody -> $empty | SQBody NotSQ
    NotSQ -> Letter | Digit | SpecialNotSQ | Space | HT | FF | AfterASCII | '"'
    SpecialNotSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '\'

    eol ::= LF | CR LF | CR

    white -> WSChar | white WSChar
    WSChar -> Space | HT | FF
%End
