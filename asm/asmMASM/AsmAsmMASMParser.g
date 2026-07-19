-- AUTO-GENERATED from antlr/grammars-v4 asm/asmMASM by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AsmAsmMASMParser
%options package=lpg.grammars.asm.asmMASM
%options template=dtParserTemplateF.gi
%options import_terminals=AsmAsmMASMLexer.gi
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

    line ::= opt_3 opt_5 EOL

    instruction ::= opt_6 opcode opt_7

    lbl ::= label opt_8

    endlbl ::= END opt_9

    assemblerdirective ::= org
           | if_
           | endif_
           | equ
           | db
           | dw
           | dm
           | ds
           | include
           | includelib
           | invoke
           | option
           | put
           | assign
           | segment
           | endsegment
           | group
           | label_
           | assume
           | extern_
           | public_
           | type_ list_10

    masmdirectives ::= list_11

    masmdirective ::= MASMDIRECTIVE opt_12

    assume ::= ASSUME register_ COLON name list_14

    label_ ::= name LABEL type_

    type_ ::= BYTE
           | SBYTE
           | WORD
           | DWORD

    group ::= name GROUP name list_16

    segment ::= name SEGMENT opt_17

    endsegment ::= name SEGMENTEND

    align ::= BYTE
           | WORD
           | DWORD
           | PARA
           | PAGE
           | ALIGN LPAREN number RPAREN

    assign ::= name ASSIGN expression

    put ::= PUT expressionlist

    include ::= INCLUDE expressionlist

    includelib ::= INCLUDELIB expressionlist

    invoke ::= INVOKE expressionlist

    option ::= OPTION expressionlist

    ds ::= DS expressionlist

    dw ::= DW expressionlist

    db ::= DB expressionlist

    dm ::= DM expressionlist

    dup ::= number DUP expression

    equ ::= EQU expression

    extern_ ::= EXTERN expression

    public_ ::= PUBLIC expression

    if_ ::= IF expression

    endif_ ::= ENDIF

    org ::= ORG expression

    expressionlist ::= expression list_19

    label ::= name
           | gross

    expression ::= multiplyingExpression list_21

    multiplyingExpression ::= argument list_24

    argument ::= number
           | dollar
           | ques
           | register_
           | opt_26 name
           | string
           | LPAREN expression RPAREN
           | LBRACKET expression RBRACKET
           | NOT expression
           | OFFSET expression
           | gross
           | dup

    gross ::= opcode
           | grossrawassemblerdirective

    grossrawassemblerdirective ::= PUT
           | IF
           | ENDIF
           | ORG
           | EQU

    dollar ::= DOLLAR

    ques ::= QUES

    register_ ::= REGISTER

    string ::= STRING1
           | STRING2

    name ::= NAME

    number ::= opt_27 NUMBER

    opcode ::= OPCODE

    rep ::= REP

    list_1 ::= $empty
           | list_1 line

    grp_2 ::= lbl
           | endlbl

    opt_3 ::= grp_2
           | $empty

    grp_4 ::= assemblerdirective
           | masmdirectives
           | instruction

    opt_5 ::= grp_4
           | $empty

    opt_6 ::= rep
           | $empty

    opt_7 ::= expressionlist
           | $empty

    opt_8 ::= COLON
           | $empty

    opt_9 ::= name
           | $empty

    list_10 ::= expressionlist
           | list_10 expressionlist

    list_11 ::= masmdirective
           | list_11 masmdirective

    opt_12 ::= expressionlist
           | $empty

    seq_13 ::= COMMA register_ COLON name

    list_14 ::= $empty
           | list_14 seq_13

    seq_15 ::= COMMA name

    list_16 ::= $empty
           | list_16 seq_15

    opt_17 ::= align
           | $empty

    seq_18 ::= COMMA expression

    list_19 ::= $empty
           | list_19 seq_18

    seq_20 ::= SIGN multiplyingExpression

    list_21 ::= $empty
           | list_21 seq_20

    grp_23 ::= STAR
           | SLASH

    grp_22 ::= grp_23 argument

    list_24 ::= $empty
           | list_24 grp_22

    seq_25 ::= name COLON

    opt_26 ::= seq_25
           | $empty

    opt_27 ::= SIGN
           | $empty

%End
