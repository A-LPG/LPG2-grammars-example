-- AUTO-GENERATED from antlr/grammars-v4 spl by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=SplParser
%options package=lpg.grammars.spl
%options template=dtParserTemplateF.gi
%options import_terminals=SplLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    query
%End

%Rules
    query ::= initCommand list_2

    initCommand ::= opt_3 opt_4 list_5 opt_6

    nextCommand ::= command list_7 opt_8

    subquery ::= LBRACK initCommand list_10 RBRACK

    operation ::= operation AND operation
                 | operation OR operation
                 | expression LIKE value
                 | expression IN LPAREN opt_14 RPAREN
                 | NOT operation
                 | expression grp_15 id
                 | expression expression OUTPUT id COMMA id
                 | expression expression expression grp_16 id COMMA id COMMA id
                 | BY list_17
                 | expression AS id
                 | id grp_18 expression
                 | expression
                 | LPAREN operation RPAREN

    expression ::= function LPAREN opt_22 RPAREN
                  | LPAREN expression RPAREN
                  | expression POW expression
                  | expression grp_23 expression
                  | expression DIV expression
                  | MULT expression MULT
                  | MULT expression
                  | expression MULT
                  | MULT
                  | list_25
                  | expression grp_26 expression
                  | value

    value ::= date
             | STRING
             | id
             | opt_28 NUMBER

    date ::= opt_29 TIME_AND_FUNCTION opt_30
            | TIME

    id ::= IDENTIFIER
          | command
          | function

    function ::= FUNCTION
                | STD_COMMAND_AND_FUNCTION
                | MODIFIER_AND_FUNCTION
                | TIME_AND_FUNCTION
                | LIKE

    command ::= INIT_COMMAND
               | STD_COMMAND
               | STD_COMMAND_AND_FUNCTION

    seq_1 ::= PIPE nextCommand

    list_2 ::= (list_2 seq_1)?

    opt_3 ::= PIPE?

    opt_4 ::= INIT_COMMAND?

    list_5 ::= operation+

    opt_6 ::= subquery?

    list_7 ::= operation+

    opt_8 ::= subquery?

    seq_9 ::= PIPE nextCommand

    list_10 ::= (list_10 seq_9)?

    seq_11 ::= COMMA expression

    list_12 ::= (list_12 seq_11)?

    seq_13 ::= expression list_12

    opt_14 ::= seq_13?

    grp_15 ::= OUTPUT
              | OUTPUTNEW

    grp_16 ::= OUTPUT
              | OUTPUTNEW

    list_17 ::= id+

    grp_18 ::= EQ
              | NE
              | GT
              | LT
              | GE
              | LE

    seq_19 ::= COMMA expression

    list_20 ::= (list_20 seq_19)?

    seq_21 ::= expression list_20

    opt_22 ::= seq_21?

    grp_23 ::= MULT
              | MOD

    seq_24 ::= DIV id

    list_25 ::= seq_24+

    grp_26 ::= ADD
              | SUB

    grp_27 ::= ADD
              | SUB

    opt_28 ::= grp_27?

    opt_29 ::= QUOTE?

    opt_30 ::= QUOTE?
%End
