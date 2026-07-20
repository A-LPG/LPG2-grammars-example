-- Real lexer for EvmBytecodeParser (not token-stream soup). Keywords via EvmBytecodeKWLexer.
%Options list
%Options fp=EvmBytecodeLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.evm_bytecode
%options template=LexerTemplateF.gi
%options filter=EvmBytecodeKWLexer.gi

%Define
    $kw_lexer_class /.$EvmBytecodeKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ADD
    ADDMOD
    ADDRESS
    AMP
    AMPEQ
    AND
    ANDAND
    ARROW
    ARROWSTAR
    AT
    ATEQ
    BACKSLASH
    BACKTICK
    BALANCE
    BANG
    BASEFEE
    BEGINDATA
    BEGINSUB
    BITCLEAR
    BLOCKHASH
    BYTE
    CALL
    CALLBLACKBOX
    CALLCODE
    CALLDATACOPY
    CALLDATALOAD
    CALLDATASIZE
    CALLER
    CALLVALUE
    CARET
    CARETEQ
    CHAINID
    CHAR_LITERAL
    CODECOPY
    CODESIZE
    COINBASE
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    CREATE
    CREATE2
    DELEGATECALL
    DIFFICULTY
    DIV
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DQUOTE
    DUP1
    DUP10
    DUP11
    DUP12
    DUP13
    DUP14
    DUP15
    DUP16
    DUP2
    DUP3
    DUP4
    DUP5
    DUP6
    DUP7
    DUP8
    DUP9
    ELLIPSIS
    EQ
    EQEQ
    EQEQEQ
    EXP
    EXTCODECOPY
    EXTCODEHASH
    EXTCODESIZE
    FATARROW
    GAS
    GASLIMIT
    GASPRICE
    GETLOCA
    GT
    GTEQ
    HASH
    IDENTIFIER
    INVALID
    ISZERO
    JUMP
    JUMPDEST
    JUMPI
    JUMPIF
    JUMPSUB
    JUMPSUBV
    JUMPTO
    LBRACE
    LBRACKET
    LOG0
    LOG1
    LOG2
    LOG3
    LOG4
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MINUS
    MINUSEQ
    MINUSMINUS
    MLOAD
    MOD
    MSIZE
    MSTORE
    MSTORE8
    MUL
    MULMOD
    NOT
    NOTEQ
    NOTEQEQ
    NUMBER
    OR
    ORIGIN
    OROR
    PC
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    POP
    PUSH1
    PUSH10
    PUSH11
    PUSH12
    PUSH13
    PUSH14
    PUSH15
    PUSH16
    PUSH17
    PUSH18
    PUSH19
    PUSH2
    PUSH20
    PUSH21
    PUSH22
    PUSH23
    PUSH24
    PUSH25
    PUSH26
    PUSH27
    PUSH28
    PUSH29
    PUSH3
    PUSH30
    PUSH31
    PUSH32
    PUSH4
    PUSH5
    PUSH6
    PUSH7
    PUSH8
    PUSH9
    PUTLOCAL
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACKET
    RECEIVE
    RETURN
    RETURNDATACOPY
    RETURNDATASIZE
    RETURNSUB
    REVERT
    RPAREN
    RSHIFT
    RSHIFTEQ
    SAR
    SDIV
    SELFBALANCE
    SELFDESTRUCT
    SEMI
    SGT
    SHA3
    SHL
    SHR
    SIGNEXTEND
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SLOAD
    SLOADBYTES
    SLT
    SMOD
    SQUOTE
    SSIZE
    SSTORE
    SSTOREBYTES
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STATICCALL
    STOP
    STRING
    SUB
    SWAP1
    SWAP10
    SWAP11
    SWAP12
    SWAP13
    SWAP14
    SWAP15
    SWAP16
    SWAP2
    SWAP3
    SWAP4
    SWAP5
    SWAP6
    SWAP7
    SWAP8
    SWAP9
    TILDE
    TIMESTAMP
    TXEXECGAS
    UNDERSCORE
    UNKNOW
    URSHIFT
    URSHIFTEQ
    XOR
    YIELDSTAR
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
    Token ::= identifier /. checkForKeyWord(); ./
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRING); ./
            | charlit    /. makeToken($_CHAR_LITERAL); ./
            | LineComment /. skipToken(); ./
            | white /. skipToken(); ./
            | 'y' 'i' 'e' 'l' 'd' '*' /. makeToken($_YIELDSTAR); ./
            | '>' '>' '>' '=' /. makeToken($_URSHIFTEQ); ./
            | '!' '=' '=' /. makeToken($_NOTEQEQ); ./
            | '*' '*' '=' /. makeToken($_STARSTAREQ); ./
            | '-' '>' '*' /. makeToken($_ARROWSTAR); ./
            | '.' '.' '.' /. makeToken($_ELLIPSIS); ./
            | '/' '/' '=' /. makeToken($_SLASHSLASHEQ); ./
            | '<' '<' '=' /. makeToken($_LSHIFTEQ); ./
            | '=' '=' '=' /. makeToken($_EQEQEQ); ./
            | '>' '>' '=' /. makeToken($_RSHIFTEQ); ./
            | '>' '>' '>' /. makeToken($_URSHIFT); ./
            | '?' '?' '=' /. makeToken($_QUESTQUESTEQ); ./
            | '!' '=' /. makeToken($_NOTEQ); ./
            | '%' '=' /. makeToken($_PERCENTEQ); ./
            | '&' '&' /. makeToken($_ANDAND); ./
            | '&' '=' /. makeToken($_AMPEQ); ./
            | '&' '^' /. makeToken($_BITCLEAR); ./
            | '*' '*' /. makeToken($_STARSTAR); ./
            | '*' '=' /. makeToken($_STAREQ); ./
            | '+' '+' /. makeToken($_PLUSPLUS); ./
            | '+' '=' /. makeToken($_PLUSEQ); ./
            | '-' '-' /. makeToken($_MINUSMINUS); ./
            | '-' '=' /. makeToken($_MINUSEQ); ./
            | '-' '>' /. makeToken($_ARROW); ./
            | '.' '*' /. makeToken($_DOTSTAR); ./
            | '.' '.' /. makeToken($_DOTDOT); ./
            | '/' '/' /. makeToken($_SLASHSLASH); ./
            | '/' '=' /. makeToken($_SLASHEQ); ./
            | ':' ':' /. makeToken($_COLONCOLON); ./
            | ':' '=' /. makeToken($_COLONEQ); ./
            | '<' '-' /. makeToken($_RECEIVE); ./
            | '<' '<' /. makeToken($_LSHIFT); ./
            | '<' '=' /. makeToken($_LTEQ); ./
            | '<' '>' /. makeToken($_LTGT); ./
            | '=' '=' /. makeToken($_EQEQ); ./
            | '=' '>' /. makeToken($_FATARROW); ./
            | '>' '=' /. makeToken($_GTEQ); ./
            | '>' '>' /. makeToken($_RSHIFT); ./
            | '?' '.' /. makeToken($_QUESTDOT); ./
            | '?' '?' /. makeToken($_QUESTQUEST); ./
            | '@' '=' /. makeToken($_ATEQ); ./
            | '^' '=' /. makeToken($_CARETEQ); ./
            | '|' '=' /. makeToken($_PIPEEQ); ./
            | '|' '|' /. makeToken($_OROR); ./
            | '!' /. makeToken($_BANG); ./
            | '"' /. makeToken($_DQUOTE); ./
            | '#' /. makeToken($_HASH); ./
            | '%' /. makeToken($_PERCENT); ./
            | '&' /. makeToken($_AMP); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '*' /. makeToken($_STAR); ./
            | '+' /. makeToken($_PLUS); ./
            | ',' /. makeToken($_COMMA); ./
            | '-' /. makeToken($_MINUS); ./
            | '.' /. makeToken($_DOT); ./
            | '/' /. makeToken($_SLASH); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMI); ./
            | '<' /. makeToken($_LT); ./
            | '=' /. makeToken($_EQ); ./
            | '>' /. makeToken($_GT); ./
            | '?' /. makeToken($_QUESTION); ./
            | '@' /. makeToken($_AT); ./
            | '[' /. makeToken($_LBRACKET); ./
            | '\' /. makeToken($_BACKSLASH); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '^' /. makeToken($_CARET); ./
            | '`' /. makeToken($_BACKTICK); ./
            | '{' /. makeToken($_LBRACE); ./
            | '|' /. makeToken($_PIPE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '~' /. makeToken($_TILDE); ./

    identifier -> Letter
                | identifier Letter
                | identifier Digit

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _
            | AfterASCII
            | DollarSign

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digit
             | number Digit
             | number '_' Digit
             | number '.' Digit
             | number '.' Digits
             | '.' Digits

    Digits ::= Digit
             | Digits Digit

    string ::= '"' SLBody '"'
             | SingleQuote SLBodySQ SingleQuote

    SLBody -> $empty
            | SLBody NotDQ

    SLBodySQ -> $empty
              | SLBodySQ NotSQ

    NotDQ -> Letter | Digit | Space | HT | SingleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | '/' | n | r | t | b | f

    charlit ::= SingleQuote NotSQ SingleQuote

    LineComment ::= '/' '/' LineCommentBody
    LineCommentBody -> $empty
                     | LineCommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
