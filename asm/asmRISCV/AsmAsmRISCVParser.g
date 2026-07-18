-- AUTO-GENERATED from antlr/grammars-v4 asm/asmRISCV by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AsmAsmRISCVParser
%options package=lpg.grammars.asm.asmRISCV
%options template=dtParserTemplateF.gi
%options import_terminals=AsmAsmRISCVLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= list_1

    line ::= opt_2 opt_4 EOL

    assemblerdirective ::= directives

    directives ::= _FILE label
           | _GLOBAL label
           | _GLOBL label
           | _WEAK label
           | _TYPE label COMMA AT label
           | _ALIGN number
           | _BALIGN number
           | _ZERO number
           | _2BYTE expressionlist
           | _4BYTE expressionlist
           | _8BYTE expressionlist
           | _HALF expressionlist
           | _WORD expressionlist
           | _DWORD expressionlist
           | _STRING string
           | _INCLUDE string
           | _ASSICZ label
           | _ASSIC label
           | _FLOAT expressionlist
           | _DOUBLE expressionlist
           | _COMM label COMMA number COMMA number
           | _COMMON label COMMA number COMMA number
           | _IDENT label
           | _OPTION OPTIONARG
           | _OPTION_ARCH COMMA grp_5
           | _SECTION opt_7
           | _TEXT
           | _DATA
           | _RODATA
           | _BSS
           | _PUSHSECTION label
           | _POPSECTION label
           | _SPACE number list_9
           | _SKIP number list_11
           | _SET label COMMA expression
           | _EQU label COMMA grp_12
           | _SIZE label COMMA grp_13
           | _MACRO label list_15
           | _ENDM
           | _QUAD expressionlist
           | _DTPRELWORD expressionlist
           | _DTPRELDWORD expressionlist
           | _SLEB expression
           | _ULEB expression
           | _P2ALIGN P2 COMMA number opt_17
           | _VARIANT_CC label
           | _ATTRIBUTE label COMMA grp_18

    lbl ::= label opt_19

    expressionlist ::= expression list_21

    expression ::= expression_ list_24

    expression_ ::= register
           | number
           | label

    extensionsorfullarch ::= extensions_
           | fullarchstr

    extensions_ ::= extension COMMA extension
           | extension

    fullarchstr ::= label

    extension ::= OP EXTENSIONNAME opt_26

    instruction ::= rtype
           | itype
           | stype
           | utype
           | jtype
           | btype
           | csrtype

    register ::= FREGS
           | XREGS
           | CSRREGS

    rtype ::= ADD xregs COMMA xregs COMMA xregs
           | MV xregs COMMA xregs
           | LA xregs COMMA label
           | SUB xregs COMMA xregs COMMA xregs
           | SLL xregs COMMA xregs COMMA xregs
           | SLT xregs COMMA xregs COMMA xregs
           | SLTU xregs COMMA xregs COMMA xregs
           | XOR xregs COMMA xregs COMMA xregs
           | SRL xregs COMMA xregs COMMA xregs
           | SRA xregs COMMA xregs COMMA xregs
           | OR xregs COMMA xregs COMMA xregs
           | AND xregs COMMA xregs COMMA xregs
           | ADDW xregs COMMA xregs COMMA xregs
           | SUBW xregs COMMA xregs COMMA xregs
           | SLLW xregs COMMA xregs COMMA xregs
           | SRLW xregs COMMA xregs COMMA xregs
           | SRAW xregs COMMA xregs COMMA xregs
           | MUL xregs COMMA xregs COMMA xregs
           | MULH xregs COMMA xregs COMMA xregs
           | MULHSU xregs COMMA xregs COMMA xregs
           | MULHU xregs COMMA xregs COMMA xregs
           | DIV xregs COMMA xregs COMMA xregs
           | DIVU xregs COMMA xregs COMMA xregs
           | REM xregs COMMA xregs COMMA xregs
           | REMU xregs COMMA xregs COMMA xregs
           | MULW xregs COMMA xregs COMMA xregs
           | DIVW xregs COMMA xregs COMMA xregs
           | DIVUW xregs COMMA xregs COMMA xregs
           | REMW xregs COMMA xregs COMMA xregs
           | REMUW xregs COMMA xregs COMMA xregs
           | LR_W xregs COMMA LPAREN xregs RPAREN
           | SC_W xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOSWAP_W xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOADD_W xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOXOR_W xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOAND_W xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOOR_W xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOMIN_W xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOMAX_W xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOMINU_W xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOMAXU_W xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | LR_D xregs COMMA LPAREN xregs RPAREN
           | SC_D xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOSWAP_D xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOADD_D xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOXOR_D xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOAND_D xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOOR_D xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOMIN_D xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOMAX_D xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOMINU_D xregs COMMA xregs COMMA LPAREN xregs RPAREN
           | AMOMAXU_D xregs xregs COMMA LPAREN xregs RPAREN
           | FADD_S fregs COMMA fregs COMMA fregs
           | FSUB_S fregs COMMA fregs COMMA fregs
           | FMUL_S fregs COMMA fregs COMMA fregs
           | FDIV_S fregs COMMA fregs COMMA fregs
           | FSQRT_S fregs COMMA fregs
           | FSGNJ_S fregs COMMA fregs COMMA fregs
           | FSGNJN_S fregs COMMA fregs COMMA fregs
           | FSGNJX_S fregs COMMA fregs COMMA fregs
           | FMIN_S fregs COMMA fregs COMMA fregs
           | FMAX_S fregs COMMA fregs COMMA fregs
           | FCVT_W_S xregs COMMA fregs
           | FCVT_WU_S xregs COMMA fregs
           | FMV_X_W xregs COMMA fregs
           | FEQ_S xregs COMMA fregs COMMA fregs
           | FLT_S xregs COMMA fregs COMMA fregs
           | FLE_S xregs COMMA fregs COMMA fregs
           | FCLASS_S xregs COMMA fregs
           | FCVT_S_W fregs COMMA xregs
           | FCVT_S_WU fregs COMMA xregs
           | FMV_W_X fregs COMMA xregs
           | FMADD_S fregs COMMA xregs COMMA fregs COMMA fregs
           | FMSUB_S fregs COMMA fregs COMMA fregs COMMA fregs
           | FNMSUB_S fregs COMMA fregs COMMA fregs COMMA fregs
           | FNMADD_S fregs xregs fregs COMMA fregs COMMA fregs
           | FCVT_L_S xregs COMMA fregs
           | FCVT_LU_S xregs COMMA fregs
           | FCVT_S_L fregs COMMA xregs
           | FCVT_S_LU fregs COMMA xregs
           | FADD_D fregs COMMA fregs COMMA fregs
           | FSUB_D fregs COMMA fregs COMMA fregs
           | FMUL_D fregs COMMA fregs COMMA fregs
           | FDIV_D fregs COMMA fregs COMMA fregs
           | FSQRT_D fregs COMMA fregs
           | FSGNJ_D fregs COMMA fregs COMMA fregs
           | FSGNJN_D fregs COMMA fregs COMMA fregs
           | FSGNJX_D fregs COMMA fregs COMMA fregs
           | FMIN_D fregs COMMA fregs COMMA fregs
           | FMAX_D fregs COMMA fregs COMMA fregs
           | FCVT_D_S fregs COMMA fregs
           | FCVT_S_D fregs COMMA fregs
           | FEQ_D xregs COMMA fregs COMMA fregs
           | FLT_D xregs COMMA fregs COMMA fregs
           | FLE_D xregs COMMA fregs COMMA fregs
           | FCLASS_D xregs COMMA fregs
           | FCVT_W_D xregs COMMA fregs
           | FCVT_WU_D xregs COMMA fregs
           | FCVT_D_W fregs COMMA xregs
           | FCVT_D_WU fregs COMMA xregs
           | FMADD_D fregs COMMA fregs COMMA fregs COMMA fregs
           | FMSUB_D fregs COMMA fregs COMMA fregs COMMA fregs
           | FNMSUB_D fregs COMMA fregs COMMA fregs COMMA fregs
           | FNMADD_D fregs COMMA fregs COMMA fregs COMMA fregs
           | FCVT_L_D xregs COMMA fregs
           | FCVT_LU_D xregs COMMA fregs
           | FMV_X_D xregs COMMA fregs
           | FCVT_D_L fregs COMMA xregs
           | FCVT_D_LU fregs COMMA xregs
           | FMV_D_X fregs COMMA xregs
           | FADD_Q fregs COMMA fregs COMMA fregs
           | FSUB_Q fregs COMMA fregs COMMA fregs
           | FMUL_Q fregs COMMA fregs COMMA fregs
           | FDIV_Q fregs COMMA fregs COMMA fregs
           | FSQRT_Q fregs COMMA fregs
           | FSGNJ_Q fregs COMMA fregs COMMA fregs
           | FSGNJN_Q fregs COMMA fregs COMMA fregs
           | FSGNJX_Q fregs COMMA fregs COMMA fregs
           | FMIN_Q fregs COMMA fregs COMMA fregs
           | FMAX_Q fregs COMMA fregs COMMA fregs
           | FCVT_Q_S fregs COMMA fregs
           | FCVT_S_Q fregs COMMA fregs
           | FCVT_Q_D fregs COMMA fregs
           | FCVT_D_Q fregs COMMA fregs
           | FEQ_Q xregs COMMA fregs COMMA fregs
           | FLT_Q xregs COMMA fregs COMMA fregs
           | FLE_Q xregs COMMA fregs COMMA fregs
           | FCLASS_Q xregs COMMA fregs
           | FCVT_WU_Q xregs COMMA fregs
           | FCVT_W_Q xregs COMMA fregs
           | FCVT_Q_W fregs COMMA xregs
           | FCVT_Q_WU fregs COMMA xregs
           | FMADD_Q fregs COMMA fregs COMMA fregs COMMA fregs
           | FMSUB_Q fregs COMMA fregs COMMA fregs COMMA fregs
           | FNMSUB_Q fregs COMMA fregs COMMA fregs COMMA fregs
           | FNMADD_Q fregs COMMA fregs COMMA fregs COMMA fregs
           | FCVT_L_Q xregs COMMA fregs
           | FCVT_LU_Q xregs COMMA fregs
           | FMV_X_Q xregs COMMA fregs
           | FCVT_Q_L fregs COMMA xregs
           | FCVT_Q_LU fregs COMMA xregs
           | FMV_Q_X fregs COMMA xregs
           | WFI

    itype ::= JALR xregs COMMA number LPAREN xregs RPAREN
           | LB xregs COMMA number LPAREN xregs RPAREN
           | LH xregs COMMA number LPAREN xregs RPAREN
           | LW xregs COMMA number LPAREN xregs RPAREN
           | LBU xregs COMMA opt_27 LPAREN xregs RPAREN
           | LHU xregs COMMA number LPAREN xregs RPAREN
           | SLLI xregs COMMA xregs COMMA number
           | SRLI xregs COMMA xregs COMMA number
           | SRAI xregs COMMA xregs COMMA number
           | ADDI xregs COMMA xregs COMMA number
           | SLTI xregs COMMA xregs COMMA number
           | SLTIU xregs COMMA xregs COMMA number
           | XORI xregs COMMA xregs COMMA number
           | ORI xregs COMMA xregs COMMA number
           | ANDI xregs COMMA xregs COMMA number
           | LWU xregs COMMA number LPAREN xregs RPAREN
           | LD xregs COMMA number LPAREN xregs RPAREN
           | ADDIW xregs COMMA xregs COMMA number
           | SLLIW xregs COMMA xregs COMMA number
           | SRLIW xregs COMMA xregs COMMA number
           | SRAIW xregs COMMA xregs COMMA number
           | FLW fregs COMMA number LPAREN xregs RPAREN
           | FLD fregs COMMA number LPAREN xregs RPAREN
           | FLQ fregs COMMA number LPAREN xregs RPAREN
           | LI xregs COMMA label
           | FENCE
           | FENCE_I
           | SFENCE_VMA xregs COMMA xregs
           | ECALL
           | EBREAK
           | MRET
           | SRET
           | URET
           | RET
           | NOP

    stype ::= SB xregs COMMA number LPAREN xregs RPAREN
           | SH xregs COMMA number LPAREN xregs RPAREN
           | SW xregs COMMA number LPAREN xregs RPAREN
           | SD xregs COMMA number LPAREN xregs RPAREN
           | FSW fregs COMMA number LPAREN xregs RPAREN
           | FSD fregs COMMA number LPAREN xregs RPAREN
           | FSQ fregs COMMA number LPAREN xregs RPAREN

    btype ::= BEQ xregs COMMA xregs COMMA label
           | BNE xregs COMMA xregs COMMA label
           | BNEZ xregs COMMA label
           | BLT xregs COMMA xregs COMMA label
           | BGE xregs COMMA xregs COMMA label
           | BLTU xregs COMMA xregs COMMA label
           | BGEU xregs COMMA xregs COMMA label
           | BEQZ xregs COMMA label
           | BLTZ xregs COMMA label

    utype ::= LUI xregs COMMA number
           | AUIPC xregs COMMA number

    jtype ::= JAL opt_29 label opt_31
           | J label

    csrtype ::= CSRRW xregs COMMA csrregs COMMA xregs
           | CSRR xregs COMMA csrregs
           | CSRRS xregs COMMA csrregs COMMA xregs
           | CSRRC xregs COMMA csrregs COMMA xregs
           | CSRRWI xregs COMMA csrregs COMMA number
           | CSRRSI xregs COMMA csrregs COMMA number
           | CSRRCI xregs COMMA csrregs COMMA number

    xregs ::= XREGS

    fregs ::= FREGS

    csrregs ::= CSRREGS

    comment ::= COMMENT

    label ::= NAME
           | NUMBER

    string ::= STRING

    number ::= NUMBER

    list_1 ::= $empty | list_1 line

    opt_2 ::= lbl | $empty

    grp_3 ::= assemblerdirective | instruction

    opt_4 ::= grp_3 | $empty

    grp_5 ::= extensionsorfullarch | label

    grp_6 ::= _TEXT | _DATA | _RODATA | _BSS

    opt_7 ::= grp_6 | $empty

    seq_8 ::= COMMA number

    list_9 ::= $empty | list_9 seq_8

    seq_10 ::= COMMA number

    list_11 ::= $empty | list_11 seq_10

    grp_12 ::= number | label

    grp_13 ::= number | label

    seq_14 ::= COMMA label

    list_15 ::= $empty | list_15 seq_14

    seq_16 ::= COMMA number

    opt_17 ::= seq_16 | $empty

    grp_18 ::= number | label

    opt_19 ::= COLON | $empty

    seq_20 ::= COMMA expression

    list_21 ::= $empty | list_21 seq_20

    grp_23 ::= OP | STAR

    grp_22 ::= grp_23 expression_

    list_24 ::= $empty | list_24 grp_22

    grp_25 ::= number | number P number

    opt_26 ::= grp_25 | $empty

    opt_27 ::= number | $empty

    seq_28 ::= xregs COMMA

    opt_29 ::= seq_28 | $empty

    seq_30 ::= COMMA xregs

    opt_31 ::= seq_30 | $empty

%End
