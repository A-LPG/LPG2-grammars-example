-- AUTO-GENERATED from antlr/grammars-v4 asm/pdp7 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AsmPdp7Parser
%options package=lpg.grammars.asm.pdp7
%options template=dtParserTemplateF.gi
%options import_terminals=AsmPdp7Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= list_3 opt_4

    line ::= declarations opt_5
           | comment

    declarations ::= declaration list_8

    declaration ::= list_9 list_10
           | list_11

    declarationRight ::= instruction
           | assignment
           | expression

    instruction ::= opcode list_12

    argument ::= expression

    assignment ::= symbol EQ expression

    symbol ::= opcode
           | variable
           | LOC
           | RELOC

    expression ::= multiplyingExpression list_15

    multiplyingExpression ::= atom list_18

    atom ::= variable
           | LOC
           | CHAR
           | RELOC
           | string
           | DECIMAL
           | DECIMAL_MINUS
           | OCTAL
           | NUMERIC_LITERAL
           | MINUS atom

    string ::= STRING list_19 opt_20

    eol ::= EOL

    comment ::= COMMENT

    label ::= LABEL

    variable ::= IDENTIFIER

    opcode ::= DAC
           | JMS
           | DZM
           | LAC
           | XOR
           | ADD
           | TAD
           | XCT
           | ISZ
           | AND
           | SAD
           | JMP
           | NOP
           | LAW
           | CMA
           | LAS
           | RAL
           | RAR
           | HLT
           | SMA
           | SZA
           | SNL
           | SKP
           | SNA
           | SZL
           | RTL
           | RTR
           | CIL
           | RCL
           | RCR
           | CIA
           | LRS
           | LRSS
           | LLS
           | LLSS
           | ALS
           | ALSS
           | MUL
           | IDIV
           | LACQ
           | CLQ
           | OMQ
           | CMQ
           | LMQ
           | DSCS
           | DSLW
           | DSLM
           | DSLD
           | DSLS
           | DSSF
           | DSRS
           | IOF
           | ION
           | CAF
           | CLON
           | CLSF
           | CLOF
           | KSF
           | KRB
           | TSF
           | TCF
           | TLS
           | SCK
           | CCK
           | LCK
           | RSF
           | RSA
           | RRB
           | PSF
           | PCF
           | PSA
           | CDF
           | RLPD
           | LDA
           | WCGA
           | RAEF
           | BEG
           | SPB
           | CPB
           | LPB
           | WBL
           | DPRS
           | DPSF
           | DPCF
           | DPRC
           | CRSF
           | CRRB
           | SYS
           | CZM
           | IRSS
           | DSM

    opt_1 ::= line
           | $empty

    seq_2 ::= opt_1 eol

    list_3 ::= seq_2
           | list_3 seq_2

    opt_4 ::= line
           | $empty

    opt_5 ::= comment
           | $empty

    opt_6 ::= declaration
           | $empty

    seq_7 ::= SEMI opt_6

    list_8 ::= $empty
           | list_8 seq_7

    list_9 ::= label
           | list_9 label

    list_10 ::= $empty
           | list_10 declarationRight

    list_11 ::= declarationRight
           | list_11 declarationRight

    list_12 ::= $empty
           | list_12 argument

    grp_14 ::= PLUS
           | MINUS

    grp_13 ::= grp_14 multiplyingExpression

    list_15 ::= $empty
           | list_15 grp_13

    grp_17 ::= TIMES
           | DIV

    grp_16 ::= grp_17 atom

    list_18 ::= $empty
           | list_18 grp_16

    list_19 ::= $empty
           | list_19 NUMERIC_LITERAL

    opt_20 ::= GT
           | $empty

%End
