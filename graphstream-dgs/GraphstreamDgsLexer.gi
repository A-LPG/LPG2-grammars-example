-- DGS lexer aligned to DGSLexer.g4 / GraphstreamDgsParser
%Options list
%Options fp=GraphstreamDgsLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.graphstream_dgs
%options template=LexerTemplateF.gi
%options filter=GraphstreamDgsKWLexer.gi

%Define
    $kw_lexer_class /.$GraphstreamDgsKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    AE AN CE CG CL CN DE DN ST
    IDENTIFIER
    COLOR
    MAGIC EOL INT REAL WORD STRING COMMENT
    PLUS MINUS COMMA LBRACE RBRACE LBRACK RBRACK
    DOT LANGLE RANGLE EQUALS COLON
%End

%Terminals
    CtlCharNotWS
    LF CR HT FF
    a b c d e f g h i j k l m n o p q r s t u v w x y z _
    A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
    0 1 2 3 4 5 6 7 8 9
    AfterASCII ::= '\u0080..\ufffe'
    Space ::= ' '
    LF ::= NewLine
    CR ::= Return
    HT ::= HorizontalTab
    DoubleQuote ::= '"'
    SingleQuote ::= "'"
    Sharp ::= '#'
    Percent ::= '%'
    Star ::= '*'
    SemiColon ::= ';'
    Plus ::= '+'
    Minus ::= '-'
    Comma ::= ','
    LeftBrace ::= '{'
    RightBrace ::= '}'
    LeftBracket ::= '['
    RightBracket ::= ']'
    Dot ::= '.'
    LessThan ::= '<'
    GreaterThan ::= '>'
    Equal ::= '='
    Colon ::= ':'
    Exclamation ::= '!'
    DollarSign ::= '$'
    Ampersand ::= '&'
    LeftParen ::= '('
    RightParen ::= ')'
    Slash ::= '/'
    QuestionMark ::= '?'
    BackSlash ::= '\'
    Caret ::= '^'
    Tilde ::= '~'
    BackQuote ::= '`'
    VerticalBar ::= '|'
    AtSign ::= '@'
%End

%Start
    Token
%End

%Rules
    Token ::= MagicTok /. makeToken($_MAGIC); ./
            | EolTok /. makeToken($_EOL); ./
            | CommentTok /. makeToken($_COMMENT); ./
            | RealTok /. makeToken($_REAL); ./
            | IntTok /. makeToken($_INT); ./
            | DqString /. makeToken($_STRING); ./
            | SqString /. makeToken($_STRING); ./
            | ColorTok /. makeToken($_COLOR); ./
            | identifier /. checkForKeyWord($_WORD); ./
            | SpaceTab /. skipToken(); ./
            | Plus /. makeToken($_PLUS); ./
            | Minus /. makeToken($_MINUS); ./
            | Comma /. makeToken($_COMMA); ./
            | LeftBrace /. makeToken($_LBRACE); ./
            | RightBrace /. makeToken($_RBRACE); ./
            | LeftBracket /. makeToken($_LBRACK); ./
            | RightBracket /. makeToken($_RBRACK); ./
            | Dot /. makeToken($_DOT); ./
            | LessThan /. makeToken($_LANGLE); ./
            | GreaterThan /. makeToken($_RANGLE); ./
            | Equal /. makeToken($_EQUALS); ./
            | Colon /. makeToken($_COLON); ./

    MagicTok ::= 'D' 'G' 'S' '0' '0' '4'
               | 'D' 'G' 'S' '0' '0' '3'

    EolTok ::= CR LF | LF | CR

    CommentTok ::= Sharp NotEolStar EolTok
    NotEolStar -> $empty | NotEolStar NotEolChar
    NotEolChar -> Letter | Digit | Space | HT | Plus | Minus | Comma | Dot |
                  Equal | Colon | LeftBrace | RightBrace | LeftBracket | RightBracket |
                  LessThan | GreaterThan | DoubleQuote | SingleQuote | AfterASCII

    RealTok ::= OptSign IntPart Dot DigitStar OptExp
               | OptSign Dot DigitStar OptExp
    OptSign -> $empty | Plus | Minus
    IntPart -> Digit | NonZero DigitStar
    NonZero -> 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    DigitStar -> $empty | DigitStar Digit
    OptExp -> $empty | e Sign DigitStar | E Sign DigitStar
    Sign -> $empty | Plus | Minus

    IntTok ::= OptSign IntPart

    DqString ::= DoubleQuote DqBody DoubleQuote
    DqBody -> $empty | DqBody DqChar
    DqChar -> NotDQ
    NotDQ -> Letter | Digit | Space | HT | Plus | Minus | Comma | Dot | Equal | Colon |
             LeftBrace | RightBrace | LeftBracket | RightBracket | LessThan | GreaterThan | AfterASCII

    SqString ::= SingleQuote SqBody SingleQuote
    SqBody -> $empty | SqBody SqChar
    SqChar -> NotSQ
    NotSQ -> Letter | Digit | Space | HT | Plus | Minus | Comma | Dot | Equal | Colon |
             LeftBrace | RightBrace | LeftBracket | RightBracket | LessThan | GreaterThan | AfterASCII
    EscapeSQ ::= BslChar SingleQuote | BslChar BslChar

    ColorTok ::= Sharp HexByte HexByte HexByte OptHexByte
    HexByte -> HexDigit HexDigit
    OptHexByte -> $empty | HexDigit HexDigit
    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F

    identifier -> WordStart WordRest
    WordStart -> LowerCaseLetter | UpperCaseLetter
    WordRest -> $empty | WordRest WordChar
    WordChar -> LowerCaseLetter | UpperCaseLetter | Digit | Minus | Underscore
    Underscore -> _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    Letter -> LowerCaseLetter | UpperCaseLetter
    SpaceTab -> Space | HT
%End
