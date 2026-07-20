-- reStructuredText lexer (section/paragraph/list subset)
%Options list
%Options fp=RestructuredtextLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.restructuredtext
%options template=LexerTemplateF.gi
%options filter=RestructuredtextKWLexer.gi

%Define
    $kw_lexer_class /.$RestructuredtextKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    Alphabet
    AngleLeft
    AngleRight
    Any
    BackTick
    Block
    Colon
    Comment
    Dot
    Equal
    Hat
    IDENTIFIER
    LineBreak
    Minus
    Not
    Numbers
    Plus
    QuotationDouble
    QuotationSingle
    Quote
    RoundLeft
    RoundRight
    SectionSeparator
    SemiColon
    Space
    SquareLeft
    SquareRight
    Star
    TimeStar
    UnderScore
%End

%Terminals
    CtlCharNotWS
    LF   CR   HT   FF
    a b c d e f g h i j k l m n o p q r s t u v w x y z _
    A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
    0 1 2 3 4 5 6 7 8 9
    AfterASCII   ::= '\u0080..\ufffe'
    Space        ::= ' '
    LF           ::= NewLine
    CR           ::= Return
    HT           ::= HorizontalTab
    FF           ::= FormFeed
    Exclamation  ::= '!'
    DoubleQuote  ::= '"'
    Sharp        ::= '#'
    DollarSign   ::= '$'
    Percent      ::= '%'
    Ampersand    ::= '&'
    Minus        ::= '-'
    Plus         ::= '+'
    Equal        ::= '='
    Caret        ::= '^'
    Star         ::= '*'
    Colon        ::= ':'
    VerticalBar  ::= '|'
    Dot          ::= '.'
    SemiColon    ::= ';'
    LessThan     ::= '<'
    GreaterThan  ::= '>'
    QuestionMark ::= '?'
    BackQuote    ::= '`'
    LeftParen    ::= '('
    RightParen   ::= ')'
    LeftBracket  ::= '['
    RightBracket ::= ']'
    LeftBrace    ::= '{'
    RightBrace   ::= '}'
    BackSlash    ::= '\'
    Tilde        ::= '~'
    AtSign       ::= '@'
    Comma        ::= ','
    Slash        ::= '/'
    SingleQuote  ::= "'"
%End

%Start
    Token
%End

%Rules
    Token ::= LineBreakTok /. makeToken($_LineBreak); ./
            | SectionSepTok /. makeToken($_SectionSeparator); ./
            | CommentTok /. makeToken($_Comment); ./
            | SpaceTok /. makeToken($_Space); ./
            | HT /. makeToken($_Space); ./
            | Star /. makeToken($_Star); ./
            | Minus /. makeToken($_Minus); ./
            | Plus /. makeToken($_Plus); ./
            | VerticalBar /. makeToken($_Block); ./
            | Colon /. makeToken($_Colon); ./
            | Equal /. makeToken($_Equal); ./
            | Dot /. makeToken($_Dot); ./
            | SemiColon /. makeToken($_SemiColon); ./
            | BackQuote /. makeToken($_BackTick); ./
            | _ /. makeToken($_UnderScore); ./
            | LessThan /. makeToken($_AngleLeft); ./
            | GreaterThan /. makeToken($_AngleRight); ./
            | LeftParen /. makeToken($_RoundLeft); ./
            | RightParen /. makeToken($_RoundRight); ./
            | LeftBracket /. makeToken($_SquareLeft); ./
            | RightBracket /. makeToken($_SquareRight); ./
            | DoubleQuote /. makeToken($_Quote); ./
            | SingleQuote /. makeToken($_QuotationSingle); ./
            | Caret /. makeToken($_Hat); ./
            | NumbersTok /. makeToken($_Numbers); ./
            | AlphabetTok /. makeToken($_Alphabet); ./
            | AnyTok /. makeToken($_Any); ./

    LineBreakTok ::= LF | CR LF | CR

    SectionSepTok ::= SepChar SepChar SepChar MoreSep
    SepChar -> Minus | Equal | Plus | Caret
    MoreSep -> $empty | SepChar MoreSep

    CommentTok ::= Dot Dot Space | Dot Dot LineBreakTok

    SpaceTok ::= Space

    NumbersTok ::= Digit | NumbersTok Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    AlphabetTok ::= Letter | AlphabetTok Letter
    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    AnyTok ::= AnyChar | AnyTok AnyChar
    AnyChar -> Letter | Digit | Space | HT | Minus | Plus | Equal | Caret | Star
             | VerticalBar | Colon | Dot | SemiColon | BackQuote | _
             | LessThan | GreaterThan | LeftParen | RightParen | LeftBracket | RightBracket
             | LeftBrace | RightBrace | DoubleQuote | SingleQuote
%End
