-- AUTO-GENERATED from antlr/grammars-v4 asm/asm8086 by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=AsmAsm8086Parser
%options package=lpg.grammars.asm.asm8086
%options template=dtParserTemplateF.gi
%options import_terminals=AsmAsm8086Lexer.gi
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

    line ::= opt_2 opt_4 list_6 EOL

    instruction ::= opt_7 opcode opt_8

    lbl ::= label opt_9

    assemblerdirective ::= org
                          | end
                          | if_
                          | endif_
                          | equ
                          | db
                          | dw
                          | cseg
                          | dd
                          | dseg
                          | title
                          | include_
                          | rw
                          | rb
                          | rs
                          | DOT

    rw ::= opt_10 RW expression

    rb ::= opt_11 RB expression

    rs ::= opt_12 RS expression

    cseg ::= CSEG opt_13

    dseg ::= DSEG opt_14

    dw ::= DW expressionlist

    db ::= DB expressionlist

    dd ::= DD expressionlist

    equ ::= name EQU expression

    if_ ::= IF assemblerexpression

    assemblerexpression ::= assemblerterm list_16
                           | RPAREN assemblerexpression LPAREN

    assemblerlogical ::= EQ
                        | NE

    assemblerterm ::= name
                     | number
                     | NOT assemblerterm

    endif_ ::= ENDIF

    end ::= END

    org ::= ORG expression

    title ::= TITLE string_

    include_ ::= INCLUDE name

    expressionlist ::= expression list_18

    label ::= name

    expression ::= multiplyingExpression list_20

    multiplyingExpression ::= argument list_23

    argument ::= number
                | dollar
                | register_
                | name
                | string_
                | RPAREN expression LPAREN
                | opt_25 LBRACKET expression RBRACKET
                | ptr expression
                | NOT expression
                | OFFSET expression
                | LENGTH expression
                | register_ COLON expression

    ptr ::= opt_27 PTR

    dollar ::= DOLLAR

    register_ ::= AH
                 | AL
                 | BH
                 | BL
                 | CH
                 | CL
                 | DH
                 | DL
                 | AX
                 | BX
                 | CX
                 | DX
                 | CI
                 | DI
                 | BP
                 | SP
                 | IP
                 | CS
                 | DS
                 | ES
                 | SS

    string_ ::= STRING

    name ::= IDENTIFIER

    number ::= opt_28 NUMBER

    opcode ::= AAA
              | AAD
              | AAM
              | AAS
              | ADC
              | ADD
              | AND
              | CALL
              | CBW
              | CLC
              | CLD
              | CLI
              | CMC
              | CMP
              | CMPSB
              | CMPSW
              | CWD
              | DAA
              | DAS
              | DEC
              | DIV
              | ESC
              | HLT
              | IDIV
              | IMUL
              | IN
              | INC
              | INT
              | INTO
              | IRET
              | JA
              | JAE
              | JB
              | JBE
              | JC
              | JE
              | JG
              | JGE
              | JL
              | JLE
              | JNA
              | JNAE
              | JNB
              | JNBE
              | JNC
              | JNE
              | JNG
              | JNGE
              | JNL
              | JNLE
              | JNO
              | JNP
              | JNS
              | JNZ
              | JO
              | JP
              | JPE
              | JPO
              | JS
              | JZ
              | JCXZ
              | JMP
              | JMPS
              | JMPF
              | LAHF
              | LDS
              | LEA
              | LES
              | LOCK
              | LODS
              | LODSB
              | LODSW
              | LOOP
              | LOOPE
              | LOOPNE
              | LOOPNZ
              | LOOPZ
              | MOV
              | MOVS
              | MOVSB
              | MOVSW
              | MUL
              | NEG
              | NOP
              | NOT
              | OR
              | OUT
              | POP
              | POPF
              | PUSH
              | PUSHF
              | RCL
              | RCR
              | RET
              | RETN
              | RETF
              | ROL
              | ROR
              | SAHF
              | SAL
              | SAR
              | SALC
              | SBB
              | SCASB
              | SCASW
              | SHL
              | SHR
              | STC
              | STD
              | STI
              | STOSB
              | STOSW
              | SUB
              | TEST
              | WAIT
              | XCHG
              | XLAT
              | XOR

    rep ::= REP
           | REPE
           | REPNE
           | REPNZ
           | REPZ

    sign ::= PLUS
            | MINUS

    list_1 ::= (list_1 line)?

    opt_2 ::= lbl?

    grp_3 ::= assemblerdirective
             | instruction

    opt_4 ::= grp_3?

    seq_5 ::= BANG instruction

    list_6 ::= (list_6 seq_5)?

    opt_7 ::= rep?

    opt_8 ::= expressionlist?

    opt_9 ::= COLON?

    opt_10 ::= name?

    opt_11 ::= name?

    opt_12 ::= name?

    opt_13 ::= expression?

    opt_14 ::= expression?

    seq_15 ::= assemblerlogical assemblerterm

    list_16 ::= (list_16 seq_15)?

    seq_17 ::= COMMA expression

    list_18 ::= (list_18 seq_17)?

    seq_19 ::= sign multiplyingExpression

    list_20 ::= (list_20 seq_19)?

    grp_22 ::= STAR
              | SLASH
              | MOD
              | AND

    grp_21 ::= grp_22 argument

    list_23 ::= (list_23 grp_21)?

    grp_24 ::= number
              | name

    opt_25 ::= grp_24?

    grp_26 ::= BYTE
              | WORD
              | DWORD

    opt_27 ::= grp_26?

    opt_28 ::= sign?
%End
