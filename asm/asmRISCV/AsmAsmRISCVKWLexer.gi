-- Keyword filter for AsmAsmRISCV (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.asm.asmRISCV
%options template=KeywordTemplateF.gi
%options fp=AsmAsmRISCVKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ADD
    ADDI
    ADDIW
    ADDW
    AND
    ANDI
    AUIPC
    BEQ
    BEQZ
    BGE
    BGEU
    BLT
    BLTU
    BLTZ
    BNE
    BNEZ
    CSRR
    CSRRC
    CSRRCI
    CSRRS
    CSRRSI
    CSRRW
    CSRRWI
    DIV
    DIVU
    DIVUW
    DIVW
    EBREAK
    ECALL
    FENCE
    FLD
    FLQ
    FLW
    FSD
    FSQ
    FSW
    J
    JAL
    JALR
    LA
    LB
    LBU
    LD
    LH
    LHU
    LI
    LUI
    LW
    LWU
    MRET
    MUL
    MULH
    MULHSU
    MULHU
    MULW
    MV
    NOP
    OR
    ORI
    P
    P2
    REM
    REMU
    REMUW
    REMW
    RET
    SB
    SD
    SH
    SLL
    SLLI
    SLLIW
    SLLW
    SLT
    SLTI
    SLTIU
    SLTU
    SRA
    SRAI
    SRAIW
    SRAW
    SRET
    SRL
    SRLI
    SRLIW
    SRLW
    SUB
    SUBW
    SW
    URET
    WFI
    XOR
    XORI
    XREGS
    FREGS
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c s r r c i /.$setResult($_CSRRCI);./
    Keyword ::= c s r r s i /.$setResult($_CSRRSI);./
    Keyword ::= c s r r w i /.$setResult($_CSRRWI);./
    Keyword ::= e b r e a k /.$setResult($_EBREAK);./
    Keyword ::= m u l h s u /.$setResult($_MULHSU);./
    Keyword ::= a d d i w /.$setResult($_ADDIW);./
    Keyword ::= a u i p c /.$setResult($_AUIPC);./
    Keyword ::= c s r r c /.$setResult($_CSRRC);./
    Keyword ::= c s r r s /.$setResult($_CSRRS);./
    Keyword ::= c s r r w /.$setResult($_CSRRW);./
    Keyword ::= d i v u w /.$setResult($_DIVUW);./
    Keyword ::= e c a l l /.$setResult($_ECALL);./
    Keyword ::= f e n c e /.$setResult($_FENCE);./
    Keyword ::= m u l h u /.$setResult($_MULHU);./
    Keyword ::= r e m u w /.$setResult($_REMUW);./
    Keyword ::= s l l i w /.$setResult($_SLLIW);./
    Keyword ::= s l t i u /.$setResult($_SLTIU);./
    Keyword ::= s r a i w /.$setResult($_SRAIW);./
    Keyword ::= s r l i w /.$setResult($_SRLIW);./
    Keyword ::= a d d i /.$setResult($_ADDI);./
    Keyword ::= a d d w /.$setResult($_ADDW);./
    Keyword ::= a n d i /.$setResult($_ANDI);./
    Keyword ::= b e q z /.$setResult($_BEQZ);./
    Keyword ::= b g e u /.$setResult($_BGEU);./
    Keyword ::= b l t u /.$setResult($_BLTU);./
    Keyword ::= b l t z /.$setResult($_BLTZ);./
    Keyword ::= b n e z /.$setResult($_BNEZ);./
    Keyword ::= c s r r /.$setResult($_CSRR);./
    Keyword ::= d i v u /.$setResult($_DIVU);./
    Keyword ::= d i v w /.$setResult($_DIVW);./
    Keyword ::= j a l r /.$setResult($_JALR);./
    Keyword ::= m r e t /.$setResult($_MRET);./
    Keyword ::= m u l h /.$setResult($_MULH);./
    Keyword ::= m u l w /.$setResult($_MULW);./
    Keyword ::= r e m u /.$setResult($_REMU);./
    Keyword ::= r e m w /.$setResult($_REMW);./
    Keyword ::= s l l i /.$setResult($_SLLI);./
    Keyword ::= s l l w /.$setResult($_SLLW);./
    Keyword ::= s l t i /.$setResult($_SLTI);./
    Keyword ::= s l t u /.$setResult($_SLTU);./
    Keyword ::= s r a i /.$setResult($_SRAI);./
    Keyword ::= s r a w /.$setResult($_SRAW);./
    Keyword ::= s r e t /.$setResult($_SRET);./
    Keyword ::= s r l i /.$setResult($_SRLI);./
    Keyword ::= s r l w /.$setResult($_SRLW);./
    Keyword ::= s u b w /.$setResult($_SUBW);./
    Keyword ::= u r e t /.$setResult($_URET);./
    Keyword ::= x o r i /.$setResult($_XORI);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= b e q /.$setResult($_BEQ);./
    Keyword ::= b g e /.$setResult($_BGE);./
    Keyword ::= b l t /.$setResult($_BLT);./
    Keyword ::= b n e /.$setResult($_BNE);./
    Keyword ::= d i v /.$setResult($_DIV);./
    Keyword ::= f l d /.$setResult($_FLD);./
    Keyword ::= f l q /.$setResult($_FLQ);./
    Keyword ::= f l w /.$setResult($_FLW);./
    Keyword ::= f s d /.$setResult($_FSD);./
    Keyword ::= f s q /.$setResult($_FSQ);./
    Keyword ::= f s w /.$setResult($_FSW);./
    Keyword ::= j a l /.$setResult($_JAL);./
    Keyword ::= l b u /.$setResult($_LBU);./
    Keyword ::= l h u /.$setResult($_LHU);./
    Keyword ::= l u i /.$setResult($_LUI);./
    Keyword ::= l w u /.$setResult($_LWU);./
    Keyword ::= m u l /.$setResult($_MUL);./
    Keyword ::= n o p /.$setResult($_NOP);./
    Keyword ::= o r i /.$setResult($_ORI);./
    Keyword ::= r e m /.$setResult($_REM);./
    Keyword ::= r e t /.$setResult($_RET);./
    Keyword ::= s l l /.$setResult($_SLL);./
    Keyword ::= s l t /.$setResult($_SLT);./
    Keyword ::= s r a /.$setResult($_SRA);./
    Keyword ::= s r l /.$setResult($_SRL);./
    Keyword ::= s u b /.$setResult($_SUB);./
    Keyword ::= w f i /.$setResult($_WFI);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= l a /.$setResult($_LA);./
    Keyword ::= l b /.$setResult($_LB);./
    Keyword ::= l d /.$setResult($_LD);./
    Keyword ::= l h /.$setResult($_LH);./
    Keyword ::= l i /.$setResult($_LI);./
    Keyword ::= l w /.$setResult($_LW);./
    Keyword ::= m v /.$setResult($_MV);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= p 2 /.$setResult($_P2);./
    Keyword ::= s b /.$setResult($_SB);./
    Keyword ::= s d /.$setResult($_SD);./
    Keyword ::= s h /.$setResult($_SH);./
    Keyword ::= s w /.$setResult($_SW);./
    Keyword ::= j /.$setResult($_J);./
    Keyword ::= p /.$setResult($_P);./
    Keyword ::= z e r o /.$setResult($_XREGS);./
    Keyword ::= s 1 0 /.$setResult($_XREGS);./
    Keyword ::= s 1 1 /.$setResult($_XREGS);./
    Keyword ::= a 0 /.$setResult($_XREGS);./
    Keyword ::= a 1 /.$setResult($_XREGS);./
    Keyword ::= a 2 /.$setResult($_XREGS);./
    Keyword ::= a 3 /.$setResult($_XREGS);./
    Keyword ::= a 4 /.$setResult($_XREGS);./
    Keyword ::= a 5 /.$setResult($_XREGS);./
    Keyword ::= a 6 /.$setResult($_XREGS);./
    Keyword ::= a 7 /.$setResult($_XREGS);./
    Keyword ::= g p /.$setResult($_XREGS);./
    Keyword ::= r a /.$setResult($_XREGS);./
    Keyword ::= s 0 /.$setResult($_XREGS);./
    Keyword ::= s 1 /.$setResult($_XREGS);./
    Keyword ::= s 2 /.$setResult($_XREGS);./
    Keyword ::= s 3 /.$setResult($_XREGS);./
    Keyword ::= s 4 /.$setResult($_XREGS);./
    Keyword ::= s 5 /.$setResult($_XREGS);./
    Keyword ::= s 6 /.$setResult($_XREGS);./
    Keyword ::= s 7 /.$setResult($_XREGS);./
    Keyword ::= s 8 /.$setResult($_XREGS);./
    Keyword ::= s 9 /.$setResult($_XREGS);./
    Keyword ::= s p /.$setResult($_XREGS);./
    Keyword ::= t 0 /.$setResult($_XREGS);./
    Keyword ::= t 1 /.$setResult($_XREGS);./
    Keyword ::= t 2 /.$setResult($_XREGS);./
    Keyword ::= t 3 /.$setResult($_XREGS);./
    Keyword ::= t 4 /.$setResult($_XREGS);./
    Keyword ::= t 5 /.$setResult($_XREGS);./
    Keyword ::= t 6 /.$setResult($_XREGS);./
    Keyword ::= t p /.$setResult($_XREGS);./
    Keyword ::= f s 1 0 /.$setResult($_FREGS);./
    Keyword ::= f s 1 1 /.$setResult($_FREGS);./
    Keyword ::= f t 1 0 /.$setResult($_FREGS);./
    Keyword ::= f t 1 1 /.$setResult($_FREGS);./
    Keyword ::= f a 0 /.$setResult($_FREGS);./
    Keyword ::= f a 1 /.$setResult($_FREGS);./
    Keyword ::= f a 2 /.$setResult($_FREGS);./
    Keyword ::= f a 3 /.$setResult($_FREGS);./
    Keyword ::= f a 4 /.$setResult($_FREGS);./
    Keyword ::= f a 5 /.$setResult($_FREGS);./
    Keyword ::= f a 6 /.$setResult($_FREGS);./
    Keyword ::= f a 7 /.$setResult($_FREGS);./
    Keyword ::= f s 0 /.$setResult($_FREGS);./
    Keyword ::= f s 1 /.$setResult($_FREGS);./
    Keyword ::= f s 2 /.$setResult($_FREGS);./
    Keyword ::= f s 3 /.$setResult($_FREGS);./
    Keyword ::= f s 4 /.$setResult($_FREGS);./
    Keyword ::= f s 5 /.$setResult($_FREGS);./
    Keyword ::= f s 6 /.$setResult($_FREGS);./
    Keyword ::= f s 7 /.$setResult($_FREGS);./
    Keyword ::= f s 8 /.$setResult($_FREGS);./
    Keyword ::= f s 9 /.$setResult($_FREGS);./
    Keyword ::= f t 0 /.$setResult($_FREGS);./
    Keyword ::= f t 1 /.$setResult($_FREGS);./
    Keyword ::= f t 2 /.$setResult($_FREGS);./
    Keyword ::= f t 3 /.$setResult($_FREGS);./
    Keyword ::= f t 4 /.$setResult($_FREGS);./
    Keyword ::= f t 5 /.$setResult($_FREGS);./
    Keyword ::= f t 6 /.$setResult($_FREGS);./
    Keyword ::= f t 7 /.$setResult($_FREGS);./
    Keyword ::= f t 8 /.$setResult($_FREGS);./
    Keyword ::= f t 9 /.$setResult($_FREGS);./
%End
