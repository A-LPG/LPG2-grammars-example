-- Molecule Lexer (LPG)
%Options list
%Options fp=MoleculeLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.molecule
%options template=LexerTemplateF.gi
%options filter=MoleculeKWLexer.gi
%Define
    $kw_lexer_class /.$MoleculeKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NUMBER
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
    MIDDLE_DOT
    E_NH
    E_FL
    E_MC
    E_LV
    E_TS
    E_OG
    E_HE
    E_LI
    E_BE
    E_NE
    E_NA
    E_MG
    E_AL
    E_SI
    E_CL
    E_AR
    E_CA
    E_SC
    E_TI
    E_CR
    E_MN
    E_FE
    E_CO
    E_NI
    E_CU
    E_ZN
    E_GA
    E_GE
    E_AS
    E_SE
    E_BR
    E_KR
    E_RB
    E_SR
    E_ZR
    E_NB
    E_MO
    E_TC
    E_RU
    E_RH
    E_PD
    E_AG
    E_CD
    E_IN
    E_SN
    E_SB
    E_TE
    E_XE
    E_CS
    E_BA
    E_LA
    E_CE
    E_PR
    E_ND
    E_PM
    E_SM
    E_EU
    E_GD
    E_TB
    E_DY
    E_HO
    E_ER
    E_TM
    E_YB
    E_LU
    E_HF
    E_TA
    E_RE
    E_OS
    E_IR
    E_PT
    E_AU
    E_HG
    E_TL
    E_PB
    E_BI
    E_PO
    E_AT
    E_RN
    E_FR
    E_RA
    E_AC
    E_TH
    E_PA
    E_NP
    E_PU
    E_AM
    E_CM
    E_BK
    E_CF
    E_ES
    E_FM
    E_MD
    E_NO
    E_LR
    E_RF
    E_DB
    E_SG
    E_BH
    E_HS
    E_MT
    E_DS
    E_RG
    E_CN
    E_H
    E_B
    E_C
    E_N
    E_O
    E_F
    E_P
    E_S
    E_K
    E_V
    E_Y
    E_I
    E_W
    E_U
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
    Token ::= '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '#' /. makeToken($_MIDDLE_DOT); ./
            | AfterASCII /.
                $BeginJava
                    int c = lexStream.getCharValue(getLeftSpan());
                    if (c == 0x00B7) makeToken($_MIDDLE_DOT);
                    else skipToken();
                $EndJava
              ./
            | NUMBER /. makeToken($_NUMBER); ./
            | 'A' 'c' /. makeToken($_E_AC); ./
            | 'A' 'g' /. makeToken($_E_AG); ./
            | 'A' 'l' /. makeToken($_E_AL); ./
            | 'A' 'm' /. makeToken($_E_AM); ./
            | 'A' 'r' /. makeToken($_E_AR); ./
            | 'A' 's' /. makeToken($_E_AS); ./
            | 'A' 't' /. makeToken($_E_AT); ./
            | 'A' 'u' /. makeToken($_E_AU); ./
            | 'B' 'a' /. makeToken($_E_BA); ./
            | 'B' 'e' /. makeToken($_E_BE); ./
            | 'B' 'h' /. makeToken($_E_BH); ./
            | 'B' 'i' /. makeToken($_E_BI); ./
            | 'B' 'k' /. makeToken($_E_BK); ./
            | 'B' 'r' /. makeToken($_E_BR); ./
            | 'C' 'a' /. makeToken($_E_CA); ./
            | 'C' 'd' /. makeToken($_E_CD); ./
            | 'C' 'e' /. makeToken($_E_CE); ./
            | 'C' 'f' /. makeToken($_E_CF); ./
            | 'C' 'l' /. makeToken($_E_CL); ./
            | 'C' 'm' /. makeToken($_E_CM); ./
            | 'C' 'n' /. makeToken($_E_CN); ./
            | 'C' 'o' /. makeToken($_E_CO); ./
            | 'C' 'r' /. makeToken($_E_CR); ./
            | 'C' 's' /. makeToken($_E_CS); ./
            | 'C' 'u' /. makeToken($_E_CU); ./
            | 'D' 'b' /. makeToken($_E_DB); ./
            | 'D' 's' /. makeToken($_E_DS); ./
            | 'D' 'y' /. makeToken($_E_DY); ./
            | 'E' 'r' /. makeToken($_E_ER); ./
            | 'E' 's' /. makeToken($_E_ES); ./
            | 'E' 'u' /. makeToken($_E_EU); ./
            | 'F' 'e' /. makeToken($_E_FE); ./
            | 'F' 'l' /. makeToken($_E_FL); ./
            | 'F' 'm' /. makeToken($_E_FM); ./
            | 'F' 'r' /. makeToken($_E_FR); ./
            | 'G' 'a' /. makeToken($_E_GA); ./
            | 'G' 'd' /. makeToken($_E_GD); ./
            | 'G' 'e' /. makeToken($_E_GE); ./
            | 'H' 'e' /. makeToken($_E_HE); ./
            | 'H' 'f' /. makeToken($_E_HF); ./
            | 'H' 'g' /. makeToken($_E_HG); ./
            | 'H' 'o' /. makeToken($_E_HO); ./
            | 'H' 's' /. makeToken($_E_HS); ./
            | 'I' 'n' /. makeToken($_E_IN); ./
            | 'I' 'r' /. makeToken($_E_IR); ./
            | 'K' 'r' /. makeToken($_E_KR); ./
            | 'L' 'a' /. makeToken($_E_LA); ./
            | 'L' 'i' /. makeToken($_E_LI); ./
            | 'L' 'r' /. makeToken($_E_LR); ./
            | 'L' 'u' /. makeToken($_E_LU); ./
            | 'L' 'v' /. makeToken($_E_LV); ./
            | 'M' 'c' /. makeToken($_E_MC); ./
            | 'M' 'd' /. makeToken($_E_MD); ./
            | 'M' 'g' /. makeToken($_E_MG); ./
            | 'M' 'n' /. makeToken($_E_MN); ./
            | 'M' 'o' /. makeToken($_E_MO); ./
            | 'M' 't' /. makeToken($_E_MT); ./
            | 'N' 'a' /. makeToken($_E_NA); ./
            | 'N' 'b' /. makeToken($_E_NB); ./
            | 'N' 'd' /. makeToken($_E_ND); ./
            | 'N' 'e' /. makeToken($_E_NE); ./
            | 'N' 'h' /. makeToken($_E_NH); ./
            | 'N' 'i' /. makeToken($_E_NI); ./
            | 'N' 'o' /. makeToken($_E_NO); ./
            | 'N' 'p' /. makeToken($_E_NP); ./
            | 'O' 'g' /. makeToken($_E_OG); ./
            | 'O' 's' /. makeToken($_E_OS); ./
            | 'P' 'a' /. makeToken($_E_PA); ./
            | 'P' 'b' /. makeToken($_E_PB); ./
            | 'P' 'd' /. makeToken($_E_PD); ./
            | 'P' 'm' /. makeToken($_E_PM); ./
            | 'P' 'o' /. makeToken($_E_PO); ./
            | 'P' 'r' /. makeToken($_E_PR); ./
            | 'P' 't' /. makeToken($_E_PT); ./
            | 'P' 'u' /. makeToken($_E_PU); ./
            | 'R' 'a' /. makeToken($_E_RA); ./
            | 'R' 'b' /. makeToken($_E_RB); ./
            | 'R' 'e' /. makeToken($_E_RE); ./
            | 'R' 'f' /. makeToken($_E_RF); ./
            | 'R' 'g' /. makeToken($_E_RG); ./
            | 'R' 'h' /. makeToken($_E_RH); ./
            | 'R' 'n' /. makeToken($_E_RN); ./
            | 'R' 'u' /. makeToken($_E_RU); ./
            | 'S' 'b' /. makeToken($_E_SB); ./
            | 'S' 'c' /. makeToken($_E_SC); ./
            | 'S' 'e' /. makeToken($_E_SE); ./
            | 'S' 'g' /. makeToken($_E_SG); ./
            | 'S' 'i' /. makeToken($_E_SI); ./
            | 'S' 'm' /. makeToken($_E_SM); ./
            | 'S' 'n' /. makeToken($_E_SN); ./
            | 'S' 'r' /. makeToken($_E_SR); ./
            | 'T' 'a' /. makeToken($_E_TA); ./
            | 'T' 'b' /. makeToken($_E_TB); ./
            | 'T' 'c' /. makeToken($_E_TC); ./
            | 'T' 'e' /. makeToken($_E_TE); ./
            | 'T' 'h' /. makeToken($_E_TH); ./
            | 'T' 'i' /. makeToken($_E_TI); ./
            | 'T' 'l' /. makeToken($_E_TL); ./
            | 'T' 'm' /. makeToken($_E_TM); ./
            | 'T' 's' /. makeToken($_E_TS); ./
            | 'X' 'e' /. makeToken($_E_XE); ./
            | 'Y' 'b' /. makeToken($_E_YB); ./
            | 'Z' 'n' /. makeToken($_E_ZN); ./
            | 'Z' 'r' /. makeToken($_E_ZR); ./
            | 'B' /. makeToken($_E_B); ./
            | 'C' /. makeToken($_E_C); ./
            | 'F' /. makeToken($_E_F); ./
            | 'H' /. makeToken($_E_H); ./
            | 'I' /. makeToken($_E_I); ./
            | 'K' /. makeToken($_E_K); ./
            | 'N' /. makeToken($_E_N); ./
            | 'O' /. makeToken($_E_O); ./
            | 'P' /. makeToken($_E_P); ./
            | 'S' /. makeToken($_E_S); ./
            | 'U' /. makeToken($_E_U); ./
            | 'V' /. makeToken($_E_V); ./
            | 'W' /. makeToken($_E_W); ./
            | 'Y' /. makeToken($_E_Y); ./
            | white /. skipToken(); ./

    NUMBER ::= Digit
             | NUMBER Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR
%End
