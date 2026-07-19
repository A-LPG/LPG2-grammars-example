-- SwiftFin message format lexer (from grammars-v4 SwiftFinLexer.g4)
%Options list
%Options fp=SwiftFinLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.swift_fin
%options template=LexerTemplateF.gi
%options filter=SwiftFinKWLexer.gi

%Define
    $kw_lexer_class /.$SwiftFinKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    B4_COLON
    B4_CRLF
    B4_END
    B4_VALUE
    BLOCK1
    BLOCK2
    BLOCK3
    BLOCK4_A
    BLOCK4_B
    BLOCK5
    IDENTIFIER
    LBRACE
    M_COLON
    M_VALUE
    RBRACE
    V_END
    V_VALUE
%End

%Terminals
    CtlCharNotWS
    LF   CR   HT   FF
    a b c d e f g h i j k l m n o p q r s t u v w x y z _
    A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
    0 1 2 3 4 5 6 7 8 9
    Space        ::= ' '
    LF           ::= NewLine
    CR           ::= Return
    HT           ::= HorizontalTab
    FF           ::= FormFeed
    LeftBrace    ::= '{'
    RightBrace   ::= '}'
    Colon        ::= ':'
    Minus        ::= '-'
    Exclamation  ::= '!'
    AtSign       ::= '@'
    Sharp        ::= '#'
    DollarSign   ::= '$'
    Percent      ::= '%'
    Ampersand    ::= '&'
    VerticalBar  ::= '|'
    Dot          ::= '.'
    Comma        ::= ','
    Equal        ::= '='
    Plus         ::= '+'
    Star         ::= '*'
    Slash        ::= '/'
    LessThan     ::= '<'
    GreaterThan  ::= '>'
    SingleQuote  ::= "'"
    DoubleQuote  ::= '"'
    LeftParen    ::= '('
    RightParen   ::= ')'
    LeftBracket  ::= '['
    RightBracket ::= ']'
    SemiColon    ::= ';'
    BackSlash    ::= '\'
    Caret        ::= '^'
    BackQuote    ::= '`'
    Tilde        ::= '~'
    QuestionMark ::= '?'
    AfterASCII   ::= '\u0080..\ufffe'
%End

%Start
    Token
%End

%Rules
    Token ::= Block1Start /. makeToken($_BLOCK1); ./
            | Block2Start /. makeToken($_BLOCK2); ./
            | Block3Start /. makeToken($_BLOCK3); ./
            | Block4AStart /. makeToken($_BLOCK4_A); ./
            | Block4BStart /. makeToken($_BLOCK4_B); ./
            | Block5Start /. makeToken($_BLOCK5); ./
            | white /. skipToken(); ./
            | VValueTok /. makeToken($_V_VALUE); ./
            | VEndTok /. makeToken($_V_END); ./
            | B4EndTok /. makeToken($_B4_END); ./
            | B4ColonTok /. makeToken($_B4_COLON); ./
            | B4CrlfTok /. makeToken($_B4_CRLF); ./
            | B4ValueTok /. makeToken($_B4_VALUE); ./
            | MapLBrace /. makeToken($_LBRACE); ./
            | MapColon /. makeToken($_M_COLON); ./
            | MapValue /. makeToken($_M_VALUE); ./
            | MapRBrace /. makeToken($_RBRACE); ./

    Block1Start ::= LeftBrace '1' Colon
    Block2Start ::= LeftBrace '2' Colon
    Block3Start ::= LeftBrace '3' Colon
    Block4AStart ::= LeftBrace '4' Colon LF
    Block4BStart ::= LeftBrace '4' Colon
    Block5Start ::= LeftBrace '5' Colon

    B4EndTok ::= Minus RightBrace
    B4ColonTok ::= Colon
    B4CrlfTok ::= CR LF | CR
    B4ValueTok ::= NotColon

    MapLBrace ::= LeftBrace
    MapRBrace ::= RightBrace
    MapColon ::= Colon
    MapValue ::= NotColonNotBrace

    VEndTok ::= RightBrace
    VValueTok ::= NotRBrace

    NotColon -> Letter | Digit | Space | HT | Minus | LeftBrace | RightBrace
              | Exclamation | AtSign | Sharp | DollarSign | Percent | Ampersand | VerticalBar
              | LeftParen | RightParen | LeftBracket | RightBracket | Dot | Comma | Equal | Plus
              | Star | Slash | LessThan | GreaterThan | SingleQuote | DoubleQuote | _

    NotColonNotBrace -> Letter | Digit | Space | HT | Minus | Exclamation | AtSign | Sharp
                      | DollarSign | Percent | Ampersand | VerticalBar | LeftParen | RightParen
                      | LeftBracket | RightBracket | Dot | Comma | Equal | Plus | Star | Slash
                      | LessThan | GreaterThan | SingleQuote | DoubleQuote | _

    NotRBrace -> Letter | Digit | Space | HT | Minus | Colon | Exclamation | AtSign | Sharp
               | DollarSign | Percent | Ampersand | VerticalBar | LeftParen | RightParen
               | LeftBracket | RightBracket | Dot | Comma | Equal | Plus | Star | Slash
               | LessThan | GreaterThan | SingleQuote | DoubleQuote | _ | LeftBrace

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR
%End
