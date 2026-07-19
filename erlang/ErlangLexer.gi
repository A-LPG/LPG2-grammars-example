-- Erlang lexer aligned to Erlang.g4 / committed ErlangParser OP_* terminals
%Options list
%Options fp=ErlangLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.erlang
%options template=LexerTemplateF.gi

%Include
    LexerVeryBasicMapF.gi
%End

%Export
    AttrName TokAtom tokVar tokInteger tokFloat tokChar tokString DOT
    OP_25307 OP_2848 OP_71962 OP_88026 OP_81532 OP_48394 OP_65056
    OP_21954 OP_2262 OP_63260 OP_29819 OP_76267 OP_22480 OP_21159 OP_32002
    OP_6035 OP_43392 OP_23639 OP_96523 OP_881 OP_23772 OP_90847 OP_68038 OP_89122
    _IF_ _CASE_ _BEGIN_ _END_ _FUN_ _RECEIVE_ _TRY_ _CATCH_ _AFTER_ _OF_ _WHEN_
    _NOT_ _BNOT_ _AND_ _BAND_ _OR_ _BOR_ _XOR_ _BXOR_ _DIV_ _REM_ _BSL_ _BSR_
    _ANDALSO_ _ORELSE_
%End

%Terminals
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
    Percent ::= '%'
    DollarSign ::= '$'
    Dot ::= '.'
    Minus ::= '-'
    Plus ::= '+'
    Slash ::= '/'
    Star ::= '*'
    Colon ::= ':'
    Comma ::= ','
    Equal ::= '='
    LeftParen ::= '('
    RightParen ::= ')'
    LeftBracket ::= '['
    RightBracket ::= ']'
    Sharp ::= '#'
    LessThan ::= '<'
    GreaterThan ::= '>'
    VerticalBar ::= '|'
    SemiColon ::= ';'
    AtSign ::= '@'
    Exclamation ::= '!'
    Ampersand ::= '&'
    QuestionMark ::= '?'
    BackSlash ::= '\'
    Caret ::= '^'
    Tilde ::= '~'
    BackQuote ::= '`'
    LeftBrace ::= '{'
    RightBrace ::= '}'
    CtlCharNotWS
%End

%Start
    Token
%End

%Rules
    Token ::= Comment /. skipToken(); ./
            | white /. skipToken(); ./
            | AttrSpec /. makeToken($_AttrName); ./
            | tokString /. makeToken($_tokString); ./
            | tokChar /. makeToken($_tokChar); ./
            | tokFloat /. makeToken($_tokFloat); ./
            | tokInteger /. makeToken($_tokInteger); ./
            | tokVarRule /. makeToken($_tokVar); ./
            | 'a' 'n' 'd' 'a' 'l' 's' 'o' /. makeToken($__ANDALSO_); ./
            | 'o' 'r' 'e' 'l' 's' 'e' /. makeToken($__ORELSE_); ./
            | 'r' 'e' 'c' 'e' 'i' 'v' 'e' /. makeToken($__RECEIVE_); ./
            | 'b' 'e' 'g' 'i' 'n' /. makeToken($__BEGIN_); ./
            | 'c' 'a' 't' 'c' 'h' /. makeToken($__CATCH_); ./
            | 'a' 'f' 't' 'e' 'r' /. makeToken($__AFTER_); ./
            | 'w' 'h' 'e' 'n' /. makeToken($__WHEN_); ./
            | 'c' 'a' 's' 'e' /. makeToken($__CASE_); ./
            | 't' 'r' 'y' /. makeToken($__TRY_); ./
            | 'b' 'a' 'n' 'd' /. makeToken($__BAND_); ./
            | 'b' 'n' 'o' 't' /. makeToken($__BNOT_); ./
            | 'b' 'x' 'o' 'r' /. makeToken($__BXOR_); ./
            | 'd' 'i' 'v' /. makeToken($__DIV_); ./
            | 'e' 'n' 'd' /. makeToken($__END_); ./
            | 'f' 'u' 'n' /. makeToken($__FUN_); ./
            | 'n' 'o' 't' /. makeToken($__NOT_); ./
            | 'r' 'e' 'm' /. makeToken($__REM_); ./
            | 'x' 'o' 'r' /. makeToken($__XOR_); ./
            | 'a' 'n' 'd' /. makeToken($__AND_); ./
            | 'b' 'o' 'r' /. makeToken($__BOR_); ./
            | 'b' 's' 'l' /. makeToken($__BSL_); ./
            | 'b' 's' 'r' /. makeToken($__BSR_); ./
            | 'o' 'r' /. makeToken($__OR_); ./
            | 'i' 'f' /. makeToken($__IF_); ./
            | 'o' 'f' /. makeToken($__OF_); ./
            | tokAtomRule /. makeToken($_TokAtom); ./
            | '-' ':' /. makeToken($_OP_48394); ./
            | '-' '>' /. makeToken($_OP_65056); ./
            | '|' '|' /. makeToken($_OP_96523); ./
            | '<' '<' /. makeToken($_OP_29819); ./
            | '>' '>' /. makeToken($_OP_76267); ./
            | '=' '=' /. makeToken($_OP_6035); ./
            | '/' '=' /. makeToken($_OP_43392); ./
            | '=' '<' /. makeToken($_OP_881); ./
            | '>' '=' /. makeToken($_OP_23772); ./
            | '=' ':' /. makeToken($_OP_90847); ./
            | '+' '+' /. makeToken($_OP_68038); ./
            | '-' '-' /. makeToken($_OP_89122); ./
            | '|' /. makeToken($_OP_23639); ./
            | '#' /. makeToken($_OP_63260); ./
            | '.' /. makeToken($_DOT); ./
            | ',' /. makeToken($_OP_81532); ./
            | ':' /. makeToken($_OP_88026); ./
            | '(' /. makeToken($_OP_2848); ./
            | ')' /. makeToken($_OP_71962); ./
            | '[' /. makeToken($_OP_21954); ./
            | ']' /. makeToken($_OP_2262); ./
            | '+' /. makeToken($_OP_22480); ./
            | '-' /. makeToken($_OP_25307); ./
            | '*' /. makeToken($_OP_32002); ./
            | '/' /. makeToken($_OP_21159); ./
            | '<' /. makeToken($_OP_881); ./
            | '>' /. makeToken($_OP_23772); ./
            | '=' /. makeToken($_OP_6035); ./

    Comment ::= Percent NotNlStar Eol
    NotNlStar -> $empty | NotNlStar NotNlChar
    NotNlChar -> Letter | Digit | Space | HT | AfterASCII | Punct
    Punct -> Plus | Minus | Dot | Comma | Colon | Slash | Star | LeftParen | RightParen |
             LeftBracket | RightBracket | Sharp | Equal | LessThan | GreaterThan | VerticalBar
    Eol -> LF | CR

    AttrSpec ::= Minus s p e c
               | Minus c a l l b a c k

    tokAtomRule -> LowerStart atomTail
                | SingleQuote QuotedAtomBody SingleQuote
    QuotedAtomBody -> $empty | QuotedAtomBody QuotedAtomChar
    QuotedAtomChar -> LowerCaseLetter | UpperCaseLetter | Digit | Underscore | AfterASCII | AtSign | Space | HT
    LowerStart -> LowerCaseLetter
    atomTail -> $empty | atomTail atomChar
    atomChar -> LowerCaseLetter | UpperCaseLetter | Digit | Underscore | AfterASCII | AtSign

    tokVarRule -> UpperStart varTail
                | Underscore varTail
    UpperStart -> UpperCaseLetter
    varTail -> $empty | varTail varChar
    varChar -> LowerCaseLetter | UpperCaseLetter | Digit | Underscore | AfterASCII | AtSign

    tokInteger -> OptMinus IntDigits OptBase
    OptMinus -> $empty | Minus
    IntDigits -> Digit | IntDigits Digit
    OptBase -> $empty | Sharp BaseDigits
    BaseDigits -> BaseChar | BaseDigits BaseChar
    BaseChar -> Digit | LowerCaseLetter | UpperCaseLetter

    tokFloat -> OptMinus IntDigits Dot DigitPlus OptExp
    DigitPlus -> Digit | DigitPlus Digit
    OptExp -> $empty | ExpMark ESign DigitPlus
    ExpMark -> e | E
    ESign -> $empty | Plus | Minus

    tokChar -> DollarSign CharBody
    CharBody -> NotEolChar
    NotEolChar -> Letter | Digit | Space | HT | AfterASCII | Plus | Minus | Slash | Star | Colon | Comma | Equal | LeftParen | RightParen | LeftBracket | RightBracket | Sharp

    tokString -> DoubleQuote DqBody DoubleQuote
    DqBody -> $empty | DqBody DqChar
    DqChar -> NotDq
    NotDq -> Letter | Digit | Space | HT | AfterASCII

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Letter -> LowerCaseLetter | UpperCaseLetter
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    Underscore -> _

    white -> WSChar | white WSChar
    WSChar -> Space | HT | FF
%End
