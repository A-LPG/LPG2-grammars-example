-- Velocity template lexer (subset aligned to VelocityParser terminals)
%Options list
%Options fp=VelocityLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.velocity
%options template=LexerTemplateF.gi
%options filter=VelocityKWLexer.gi

%Define
    $kw_lexer_class /.$VelocityKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ADD
    AND
    ASSIGN
    BREAK
    CBRACE
    CBRACK
    COLON
    COMMA
    CPAR
    DEFINE
    DIV
    DOLLAR
    DOLLAR_EXCL
    DOLLAR_EXCL_OBRACE
    DOLLAR_OBRACE
    DOT
    ELSE
    ELSEIF
    END
    EQ
    EVALUATE
    EXCL
    FLOAT
    FOREACH
    GE
    GT
    HASH
    ID
    IDENTIFIER
    IF
    INCLUDE
    INTEGER
    K_AND
    K_EQ
    K_FALSE
    K_GE
    K_GT
    K_IN
    K_LE
    K_LT
    K_NE
    K_NOT
    K_NULL
    K_OR
    K_TRUE
    LE
    LT
    MACRO
    MACRO_ID
    MOD
    MUL
    NE
    OBRACE
    OBRACK
    OPAR
    OR
    PARSE
    RANGE
    REFERENCE
    SET
    STOP
    STRING
    SUB
    TEXT
    YIELDSTAR
%End

%Terminals
    CtlCharNotWS
    LF   CR   HT   FF
    a b c d e f g h i j k l m n o p q r s t u v w x y z _
    A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
    0 1 2 3 4  5 6 7 8 9
    AfterASCII   ::= '\u0080..\ufffe'
    Space        ::= ' '
    LF           ::= NewLine
    CR           ::= Return
    HT           ::= HorizontalTab
    FF           ::= FormFeed
    DoubleQuote  ::= '"'
    SingleQuote  ::= "'"
    Sharp        ::= '#'
    DollarSign   ::= '$'
    Exclamation  ::= '!'
    LeftBrace    ::= '{'
    RightBrace   ::= '}'
    LeftBracket  ::= '['
    RightBracket ::= ']'
    LeftParen    ::= '('
    RightParen   ::= ')'
    Dot          ::= '.'
    Comma        ::= ','
    Colon        ::= ':'
    Equal        ::= '='
    Plus         ::= '+'
    Minus        ::= '-'
    Star         ::= '*'
    Slash        ::= '/'
    Percent      ::= '%'
    LessThan     ::= '<'
    GreaterThan  ::= '>'
    Ampersand    ::= '&'
    VerticalBar  ::= '|'
    AtSign       ::= '@'
    QuestionMark ::= '?'
    SemiColon    ::= ';'
    BackSlash    ::= '\'
    Caret        ::= '^'
    BackQuote    ::= '`'
    Tilde        ::= '~'
%End

%Start
    Token
%End

%Rules
    Token ::= HashSetOpen /. makeToken($_SET); ./
            | HashIfOpen /. makeToken($_IF); ./
            | HashElseIfOpen /. makeToken($_ELSEIF); ./
            | HashElse /. makeToken($_ELSE); ./
            | HashEnd /. makeToken($_END); ./
            | HashBreak /. makeToken($_BREAK); ./
            | HashStop /. makeToken($_STOP); ./
            | HashForeachOpen /. makeToken($_FOREACH); ./
            | HashParseOpen /. makeToken($_PARSE); ./
            | HashIncludeOpen /. makeToken($_INCLUDE); ./
            | HashEvaluateOpen /. makeToken($_EVALUATE); ./
            | HashDefineOpen /. makeToken($_DEFINE); ./
            | HashMacroOpen /. makeToken($_MACRO); ./
            | AtMacroOpen /. makeToken($_MACRO_ID); ./
            | DollarExclBrace /. makeToken($_DOLLAR_EXCL_OBRACE); ./
            | DollarBrace /. makeToken($_DOLLAR_OBRACE); ./
            | DollarExcl /. makeToken($_DOLLAR_EXCL); ./
            | ReferenceTok /. makeToken($_REFERENCE); ./
            | CodeString /. makeToken($_STRING); ./
            | CodeFloat /. makeToken($_FLOAT); ./
            | CodeInteger /. makeToken($_INTEGER); ./
            | LeftParen /. makeToken($_OPAR); ./
            | RightParen /. makeToken($_CPAR); ./
            | Equal /. makeToken($_ASSIGN); ./
            | Dot /. makeToken($_DOT); ./
            | Comma /. makeToken($_COMMA); ./
            | Colon /. makeToken($_COLON); ./
            | LeftBracket /. makeToken($_OBRACK); ./
            | RightBracket /. makeToken($_CBRACK); ./
            | LeftBrace /. makeToken($_OBRACE); ./
            | RightBrace /. makeToken($_CBRACE); ./
            | Plus /. makeToken($_ADD); ./
            | Minus /. makeToken($_SUB); ./
            | Star /. makeToken($_MUL); ./
            | Slash /. makeToken($_DIV); ./
            | Percent /. makeToken($_MOD); ./
            | LessThan /. makeToken($_LT); ./
            | GreaterThan /. makeToken($_GT); ./
            | Exclamation /. makeToken($_EXCL); ./
            | Ampersand /. makeToken($_AND); ./
            | VerticalBar /. makeToken($_OR); ./
            | DollarSign /. makeToken($_DOLLAR); ./
            | CodeId /. checkForKeyWord(); ./
            | TextChar /. makeToken($_TEXT); ./
            | white /. skipToken(); ./

    HashSetOpen ::= Sharp 's' 'e' 't'
    HashIfOpen ::= Sharp 'i' 'f'
    HashElseIfOpen ::= Sharp 'e' 'l' 's' 'e' 'i' 'f'
    HashElse ::= Sharp 'e' 'l' 's' 'e'
    HashEnd ::= Sharp 'e' 'n' 'd'
    HashBreak ::= Sharp 'b' 'r' 'e' 'a' 'k'
    HashStop ::= Sharp 's' 't' 'o' 'p'
    HashForeachOpen ::= Sharp 'f' 'o' 'r' 'e' 'a' 'c' 'h'
    HashParseOpen ::= Sharp 'p' 'a' 'r' 's' 'e'
    HashIncludeOpen ::= Sharp 'i' 'n' 'c' 'l' 'u' 'd' 'e'
    HashEvaluateOpen ::= Sharp 'e' 'v' 'a' 'l' 'u' 'a' 't' 'e'
    HashDefineOpen ::= Sharp 'd' 'e' 'f' 'i' 'n' 'e'
    HashMacroOpen ::= Sharp 'm' 'a' 'c' 'r' 'o'
    AtMacroOpen ::= AtSign CodeId LeftParen

    DollarExclBrace ::= DollarSign Exclamation LeftBrace
    DollarBrace ::= DollarSign LeftBrace
    DollarExcl ::= DollarSign Exclamation

    ReferenceTok ::= DollarSign CodeId

    CodeId -> Letter
              | CodeId Letter
              | CodeId Digit
              | CodeId Minus Letter
              | CodeId Minus Digit

    CodeString ::= DoubleQuote CodeStrBody DoubleQuote
                 | SingleQuote CodeStrBodySQ SingleQuote

    CodeStrBody -> $empty | CodeStrBody NotDQ
    CodeStrBodySQ -> $empty | CodeStrBodySQ NotSQ
    NotDQ -> Letter | Digit | Space | HT | SingleQuote | Comma | Dot | Colon | Plus | Minus |
             Star | Slash | Equal | '_' | Exclamation | AtSign | Sharp | DollarSign | Percent |
             Ampersand | VerticalBar | LeftParen | RightParen | LeftBracket | RightBracket |
             LeftBrace | RightBrace | LessThan | GreaterThan | AfterASCII
    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | Comma | Dot | Colon | Plus | Minus |
             Star | Slash | Equal | '_' | Exclamation | AtSign | Sharp | DollarSign | Percent |
             Ampersand | VerticalBar | LeftParen | RightParen | LeftBracket | RightBracket |
             LeftBrace | RightBrace | LessThan | GreaterThan | AfterASCII

    CodeFloat ::= Digits Dot Digits | Dot Digits
    CodeInteger ::= Digit | CodeInteger Digit
    Digits ::= Digit | Digits Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    TextChar -> NotHashNotDollar
    NotHashNotDollar -> Letter | Digit | Space | HT | LF | CR | FF | AfterASCII |
                        Exclamation | LeftBrace | RightBrace | LeftBracket | RightBracket |
                        LeftParen | RightParen | Dot | Comma | Colon | Equal | Plus | Minus |
                        Star | Slash | Percent | LessThan | GreaterThan | Ampersand | VerticalBar |
                        AtSign | SingleQuote | DoubleQuote

    white -> WSChar | white WSChar
    WSChar -> Space | HT | FF
%End
