-- Keyword filter for EvmBytecodeKWLexer (FoldedCase; from g4)
%options package=lpg.grammars.evm_bytecode
%options template=KeywordTemplateF.gi
%options fp=EvmBytecodeKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ADD
    ADDMOD
    ADDRESS
    AND
    BALANCE
    BASEFEE
    BEGINDATA
    BEGINSUB
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
    CHAINID
    CODECOPY
    CODESIZE
    COINBASE
    CREATE
    DELEGATECALL
    DIFFICULTY
    DIV
    EQ
    EXP
    EXTCODECOPY
    EXTCODEHASH
    EXTCODESIZE
    GAS
    GASLIMIT
    GASPRICE
    GETLOCA
    GT
    INVALID
    ISZERO
    JUMP
    JUMPDEST
    JUMPI
    JUMPIF
    JUMPSUB
    JUMPSUBV
    JUMPTO
    LT
    MLOAD
    MOD
    MSIZE
    MSTORE
    MUL
    MULMOD
    NOT
    NUMBER
    OR
    ORIGIN
    PC
    POP
    PUTLOCAL
    RETURN
    RETURNDATACOPY
    RETURNDATASIZE
    RETURNSUB
    REVERT
    SAR
    SDIV
    SELFBALANCE
    SELFDESTRUCT
    SGT
    SHL
    SHR
    SIGNEXTEND
    SLOAD
    SLOADBYTES
    SLT
    SMOD
    SSIZE
    SSTORE
    SSTOREBYTES
    STATICCALL
    STOP
    SUB
    TIMESTAMP
    TXEXECGAS
    XOR
    CREATE2
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
    LOG0
    LOG1
    LOG2
    LOG3
    LOG4
    MSTORE8
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
    SHA3
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
    UNKNOW
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= r e t u r n d a t a c o p y /.$setResult($_RETURNDATACOPY);./
    Keyword ::= r e t u r n d a t a s i z e /.$setResult($_RETURNDATASIZE);./
    Keyword ::= c a l l b l a c k b o x /.$setResult($_CALLBLACKBOX);./
    Keyword ::= c a l l d a t a c o p y /.$setResult($_CALLDATACOPY);./
    Keyword ::= c a l l d a t a l o a d /.$setResult($_CALLDATALOAD);./
    Keyword ::= c a l l d a t a s i z e /.$setResult($_CALLDATASIZE);./
    Keyword ::= d e l e g a t e c a l l /.$setResult($_DELEGATECALL);./
    Keyword ::= s e l f d e s t r u c t /.$setResult($_SELFDESTRUCT);./
    Keyword ::= e x t c o d e c o p y /.$setResult($_EXTCODECOPY);./
    Keyword ::= e x t c o d e h a s h /.$setResult($_EXTCODEHASH);./
    Keyword ::= e x t c o d e s i z e /.$setResult($_EXTCODESIZE);./
    Keyword ::= s e l f b a l a n c e /.$setResult($_SELFBALANCE);./
    Keyword ::= s s t o r e b y t e s /.$setResult($_SSTOREBYTES);./
    Keyword ::= d i f f i c u l t y /.$setResult($_DIFFICULTY);./
    Keyword ::= s i g n e x t e n d /.$setResult($_SIGNEXTEND);./
    Keyword ::= s l o a d b y t e s /.$setResult($_SLOADBYTES);./
    Keyword ::= s t a t i c c a l l /.$setResult($_STATICCALL);./
    Keyword ::= b e g i n d a t a /.$setResult($_BEGINDATA);./
    Keyword ::= b l o c k h a s h /.$setResult($_BLOCKHASH);./
    Keyword ::= c a l l v a l u e /.$setResult($_CALLVALUE);./
    Keyword ::= r e t u r n s u b /.$setResult($_RETURNSUB);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= t x e x e c g a s /.$setResult($_TXEXECGAS);./
    Keyword ::= b e g i n s u b /.$setResult($_BEGINSUB);./
    Keyword ::= c a l l c o d e /.$setResult($_CALLCODE);./
    Keyword ::= c o d e c o p y /.$setResult($_CODECOPY);./
    Keyword ::= c o d e s i z e /.$setResult($_CODESIZE);./
    Keyword ::= c o i n b a s e /.$setResult($_COINBASE);./
    Keyword ::= g a s l i m i t /.$setResult($_GASLIMIT);./
    Keyword ::= g a s p r i c e /.$setResult($_GASPRICE);./
    Keyword ::= j u m p d e s t /.$setResult($_JUMPDEST);./
    Keyword ::= j u m p s u b v /.$setResult($_JUMPSUBV);./
    Keyword ::= p u t l o c a l /.$setResult($_PUTLOCAL);./
    Keyword ::= a d d r e s s /.$setResult($_ADDRESS);./
    Keyword ::= b a l a n c e /.$setResult($_BALANCE);./
    Keyword ::= b a s e f e e /.$setResult($_BASEFEE);./
    Keyword ::= c h a i n i d /.$setResult($_CHAINID);./
    Keyword ::= g e t l o c a /.$setResult($_GETLOCA);./
    Keyword ::= i n v a l i d /.$setResult($_INVALID);./
    Keyword ::= j u m p s u b /.$setResult($_JUMPSUB);./
    Keyword ::= a d d m o d /.$setResult($_ADDMOD);./
    Keyword ::= c a l l e r /.$setResult($_CALLER);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= i s z e r o /.$setResult($_ISZERO);./
    Keyword ::= j u m p i f /.$setResult($_JUMPIF);./
    Keyword ::= j u m p t o /.$setResult($_JUMPTO);./
    Keyword ::= m s t o r e /.$setResult($_MSTORE);./
    Keyword ::= m u l m o d /.$setResult($_MULMOD);./
    Keyword ::= n u m b e r /.$setResult($_NUMBER);./
    Keyword ::= o r i g i n /.$setResult($_ORIGIN);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r e v e r t /.$setResult($_REVERT);./
    Keyword ::= s s t o r e /.$setResult($_SSTORE);./
    Keyword ::= j u m p i /.$setResult($_JUMPI);./
    Keyword ::= m l o a d /.$setResult($_MLOAD);./
    Keyword ::= m s i z e /.$setResult($_MSIZE);./
    Keyword ::= s l o a d /.$setResult($_SLOAD);./
    Keyword ::= s s i z e /.$setResult($_SSIZE);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= j u m p /.$setResult($_JUMP);./
    Keyword ::= s d i v /.$setResult($_SDIV);./
    Keyword ::= s m o d /.$setResult($_SMOD);./
    Keyword ::= s t o p /.$setResult($_STOP);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= d i v /.$setResult($_DIV);./
    Keyword ::= e x p /.$setResult($_EXP);./
    Keyword ::= g a s /.$setResult($_GAS);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= m u l /.$setResult($_MUL);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= p o p /.$setResult($_POP);./
    Keyword ::= s a r /.$setResult($_SAR);./
    Keyword ::= s g t /.$setResult($_SGT);./
    Keyword ::= s h l /.$setResult($_SHL);./
    Keyword ::= s h r /.$setResult($_SHR);./
    Keyword ::= s l t /.$setResult($_SLT);./
    Keyword ::= s u b /.$setResult($_SUB);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= e q /.$setResult($_EQ);./
    Keyword ::= g t /.$setResult($_GT);./
    Keyword ::= l t /.$setResult($_LT);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= p c /.$setResult($_PC);./
    Keyword ::= c r e a t e 2 /.$setResult($_CREATE2);./
    Keyword ::= m s t o r e 8 /.$setResult($_MSTORE8);./
    Keyword ::= p u s h 1 0 /.$setResult($_PUSH10);./
    Keyword ::= p u s h 1 1 /.$setResult($_PUSH11);./
    Keyword ::= p u s h 1 2 /.$setResult($_PUSH12);./
    Keyword ::= p u s h 1 3 /.$setResult($_PUSH13);./
    Keyword ::= p u s h 1 4 /.$setResult($_PUSH14);./
    Keyword ::= p u s h 1 5 /.$setResult($_PUSH15);./
    Keyword ::= p u s h 1 6 /.$setResult($_PUSH16);./
    Keyword ::= p u s h 1 7 /.$setResult($_PUSH17);./
    Keyword ::= p u s h 1 8 /.$setResult($_PUSH18);./
    Keyword ::= p u s h 1 9 /.$setResult($_PUSH19);./
    Keyword ::= p u s h 2 0 /.$setResult($_PUSH20);./
    Keyword ::= p u s h 2 1 /.$setResult($_PUSH21);./
    Keyword ::= p u s h 2 2 /.$setResult($_PUSH22);./
    Keyword ::= p u s h 2 3 /.$setResult($_PUSH23);./
    Keyword ::= p u s h 2 4 /.$setResult($_PUSH24);./
    Keyword ::= p u s h 2 5 /.$setResult($_PUSH25);./
    Keyword ::= p u s h 2 6 /.$setResult($_PUSH26);./
    Keyword ::= p u s h 2 7 /.$setResult($_PUSH27);./
    Keyword ::= p u s h 2 8 /.$setResult($_PUSH28);./
    Keyword ::= p u s h 2 9 /.$setResult($_PUSH29);./
    Keyword ::= p u s h 3 0 /.$setResult($_PUSH30);./
    Keyword ::= p u s h 3 1 /.$setResult($_PUSH31);./
    Keyword ::= p u s h 3 2 /.$setResult($_PUSH32);./
    Keyword ::= s w a p 1 0 /.$setResult($_SWAP10);./
    Keyword ::= s w a p 1 1 /.$setResult($_SWAP11);./
    Keyword ::= s w a p 1 2 /.$setResult($_SWAP12);./
    Keyword ::= s w a p 1 3 /.$setResult($_SWAP13);./
    Keyword ::= s w a p 1 4 /.$setResult($_SWAP14);./
    Keyword ::= s w a p 1 5 /.$setResult($_SWAP15);./
    Keyword ::= s w a p 1 6 /.$setResult($_SWAP16);./
    Keyword ::= u n k n o w /.$setResult($_UNKNOW);./
    Keyword ::= d u p 1 0 /.$setResult($_DUP10);./
    Keyword ::= d u p 1 1 /.$setResult($_DUP11);./
    Keyword ::= d u p 1 2 /.$setResult($_DUP12);./
    Keyword ::= d u p 1 3 /.$setResult($_DUP13);./
    Keyword ::= d u p 1 4 /.$setResult($_DUP14);./
    Keyword ::= d u p 1 5 /.$setResult($_DUP15);./
    Keyword ::= d u p 1 6 /.$setResult($_DUP16);./
    Keyword ::= p u s h 1 /.$setResult($_PUSH1);./
    Keyword ::= p u s h 2 /.$setResult($_PUSH2);./
    Keyword ::= p u s h 3 /.$setResult($_PUSH3);./
    Keyword ::= p u s h 4 /.$setResult($_PUSH4);./
    Keyword ::= p u s h 5 /.$setResult($_PUSH5);./
    Keyword ::= p u s h 6 /.$setResult($_PUSH6);./
    Keyword ::= p u s h 7 /.$setResult($_PUSH7);./
    Keyword ::= p u s h 8 /.$setResult($_PUSH8);./
    Keyword ::= p u s h 9 /.$setResult($_PUSH9);./
    Keyword ::= s w a p 1 /.$setResult($_SWAP1);./
    Keyword ::= s w a p 2 /.$setResult($_SWAP2);./
    Keyword ::= s w a p 3 /.$setResult($_SWAP3);./
    Keyword ::= s w a p 4 /.$setResult($_SWAP4);./
    Keyword ::= s w a p 5 /.$setResult($_SWAP5);./
    Keyword ::= s w a p 6 /.$setResult($_SWAP6);./
    Keyword ::= s w a p 7 /.$setResult($_SWAP7);./
    Keyword ::= s w a p 8 /.$setResult($_SWAP8);./
    Keyword ::= s w a p 9 /.$setResult($_SWAP9);./
    Keyword ::= d u p 1 /.$setResult($_DUP1);./
    Keyword ::= d u p 2 /.$setResult($_DUP2);./
    Keyword ::= d u p 3 /.$setResult($_DUP3);./
    Keyword ::= d u p 4 /.$setResult($_DUP4);./
    Keyword ::= d u p 5 /.$setResult($_DUP5);./
    Keyword ::= d u p 6 /.$setResult($_DUP6);./
    Keyword ::= d u p 7 /.$setResult($_DUP7);./
    Keyword ::= d u p 8 /.$setResult($_DUP8);./
    Keyword ::= d u p 9 /.$setResult($_DUP9);./
    Keyword ::= l o g 0 /.$setResult($_LOG0);./
    Keyword ::= l o g 1 /.$setResult($_LOG1);./
    Keyword ::= l o g 2 /.$setResult($_LOG2);./
    Keyword ::= l o g 3 /.$setResult($_LOG3);./
    Keyword ::= l o g 4 /.$setResult($_LOG4);./
    Keyword ::= s h a 3 /.$setResult($_SHA3);./
%End
