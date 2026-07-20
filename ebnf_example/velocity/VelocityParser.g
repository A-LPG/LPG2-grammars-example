-- AUTO-GENERATED from antlr/grammars-v4 velocity by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack,ebnf
%Options fp=VelocityParser
%options package=lpg.grammars.velocity
%options template=btParserTemplateF.gi
%options import_terminals=VelocityLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    parse
%End

%Rules
    parse ::= block

    block ::= list_1

    atom ::= TEXT
            | ESCAPED_CHAR
            | ESCAPED_BLOCK
            | variable
            | formal
            | property_or_method
            | directive

    formal ::= DOLLAR_OBRACE formal_property_or_method CBRACE
              | DOLLAR_EXCL_OBRACE formal_property_or_method CBRACE
              | DOLLAR_OBRACE id CBRACE
              | DOLLAR_EXCL_OBRACE id CBRACE

    variable ::= DOLLAR id opt_2
                | DOLLAR_EXCL id opt_3
                | REFERENCE opt_4

    property_or_method ::= variable list_5

    formal_property_or_method ::= id list_6

    directive ::= set_directive
                 | if_directive
                 | foreach_directive
                 | break_directive
                 | stop_directive
                 | macro_directive
                 | parse_directive
                 | define_directive
                 | include_directive
                 | evaluate_directive
                 | macro_call_directive
                 | custom_directive

    property_end ::= DOT ID
                    | OBRACK expression CBRACK
                    | OPAR opt_7 CPAR

    expressions ::= expression list_9

    set_directive ::= SET OPAR expression ASSIGN expression CPAR

    if_directive ::= IF OPAR expression CPAR block list_10 opt_11 end

    elseif_directive ::= ELSEIF expression CPAR block

    else_directive ::= ELSE block

    foreach_directive ::= FOREACH variable K_IN expression CPAR block end

    break_directive ::= BREAK

    stop_directive ::= STOP

    custom_directive ::= ID opt_14 opt_16

    macro_directive ::= MACRO list_17 CPAR block end

    parse_directive ::= PARSE expression CPAR

    define_directive ::= DEFINE expression CPAR block end

    include_directive ::= INCLUDE expressions CPAR

    evaluate_directive ::= EVALUATE expression CPAR

    macro_call_directive ::= MACRO_ID list_18 CPAR block end

    end ::= END

    expression ::= grp_19 expression
                  | SUB expression
                  | expression grp_20 expression
                  | expression grp_21 expression
                  | expression grp_22 expression
                  | expression grp_23 expression
                  | expression grp_24 expression
                  | expression grp_25 expression
                  | expression RANGE expression
                  | list
                  | map
                  | property_or_method
                  | variable
                  | id
                  | STRING
                  | INTEGER
                  | FLOAT
                  | K_NULL

    list ::= OBRACK opt_26 CBRACK

    map ::= OBRACE opt_27 CBRACE

    map_entries ::= map_entry list_29

    map_entry ::= expression COLON expression

    id ::= IDENTIFIER
          | K_LT
          | K_LE
          | K_GT
          | K_GE
          | K_EQ
          | K_NE
          | K_TRUE
          | K_FALSE
          | K_AND
          | K_OR
          | K_NOT
          | K_NULL
          | K_IN

    list_1 ::= (list_1 atom)?

    opt_2 ::= DOT?

    opt_3 ::= DOT?

    opt_4 ::= DOT?

    list_5 ::= property_end+

    list_6 ::= property_end+

    opt_7 ::= expressions?

    seq_8 ::= COMMA expression

    list_9 ::= (list_9 seq_8)?

    list_10 ::= (list_10 elseif_directive)?

    opt_11 ::= else_directive?

    list_12 ::= (list_12 expression)?

    seq_13 ::= list_12 CPAR

    opt_14 ::= seq_13?

    seq_15 ::= block end

    opt_16 ::= seq_15?

    list_17 ::= (list_17 expression)?

    list_18 ::= (list_18 expression)?

    grp_19 ::= EXCL
              | K_NOT

    grp_20 ::= MUL
              | DIV
              | MOD

    grp_21 ::= ADD
              | SUB

    grp_22 ::= EQ
              | NE
              | K_EQ
              | K_NE

    grp_23 ::= LT
              | LE
              | GT
              | GE
              | K_LT
              | K_LE
              | K_GT
              | K_GE

    grp_24 ::= AND
              | K_AND

    grp_25 ::= OR
              | K_OR

    opt_26 ::= expressions?

    opt_27 ::= map_entries?

    seq_28 ::= COMMA map_entry

    list_29 ::= (list_29 seq_28)?
%End
