-- AUTO-GENERATED from antlr/grammars-v4 plucid by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=PlucidParser
%options package=lpg.grammars.plucid
%options template=dtParserTemplateF.gi
%options import_terminals=PlucidLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= expression

    expression ::= constant
                  | identifier
                  | ERROR
                  | EOD
                  | prefix_operator expression
                  | expression infix_operator expression
                  | FILTER seq_1
                  | SUBSTR seq_2
                  | LENGTH expression
                  | ARG expression
                  | list_expression
                  | if_expression
                  | case_expression
                  | cond_expression
                  | function_call

    constant ::= numeric_constant
                | word_constant
                | STRING_CONSTANT
                | list_constant

    numeric_constant ::= integer_constant
                        | real_constant

    integer_constant ::= NUMBER
                        | seq_4

    real_constant ::= integer_constant DOT list_5

    word_constant ::= QUOTE word_constant_less_the_quotes QUOTE

    word_constant_less_the_quotes ::= seq_7
                                     | list_8
                                     | BRACKET
                                     | PERIOD
                                     | SEPARATOR
                                     | QUOTE

    list_constant ::= NIL
                     | OP_60812
                     | seq_10

    list_constant_element ::= numeric_constant
                             | word_constant_less_the_quotes
                             | STRING_CONSTANT
                             | list_constant

    identifier ::= IDENTIFIER

    prefix_operator ::= P_NUMERIC_OPERATOR
                       | P_WORD_OPERATOR
                       | P_STRING_OPERATOR
                       | P_LIST_OPERATOR
                       | P_LUCID_OPERATOR
                       | P_SPECIAL_OPERATOR

    infix_operator ::= I_NUMERIC_OPERATOR
                      | I_WORD_OPERATOR
                      | I_STRING_OPERATOR
                      | I_LIST_OPERATOR
                      | I_LUCID_OPERATOR
                      | PLUS
                      | MINUS
                      | STAR
                      | SLASH
                      | STARSTAR
                      | LT
                      | GT
                      | LTEQ
                      | GTEQ
                      | EQEQ

    list_expression ::= OP_51017
                       | seq_13

    expressions_list ::= expression_item
                        | seq_15

    expression_item ::= expression
                       | list_expression

    if_expression ::= IF expression THEN expression endif

    endif ::= ELSE expression FI
             | ELSEIF expression THEN expression ENDIF

    case_expression ::= CASE expression OF cbody END

    cond_expression ::= COND cbody END

    cbody ::= list_17 defaultcase

    defaultcase ::= DEFAULT COLON expression

    function_call ::= identifier LPAREN actuals_list RPAREN

    actuals_list ::= expression
                    | seq_18

    where_clause ::= expression WHERE body END

    body ::= declarations_list definitions_list

    declarations_list ::= list_20

    current_declaration ::= identifier IS CURRENT expression

    definitions_list ::= list_22

    definition ::= simple_definition
                  | function_definition

    simple_definition ::= identifier EQ expression

    function_definition ::= identifier formals_list EQ expression

    formals_list ::= identifier
                    | seq_23

    seq_1 ::= expression COMMA expression COMMA expression

    seq_2 ::= expression COMMA expression COMMA expression

    list_3 ::= DIGIT+

    seq_4 ::= N_SIGN integer_constant

    list_5 ::= (list_5 DIGIT)?

    list_6 ::= (list_6 ALPHANUMERIC)?

    seq_7 ::= LETTER list_6

    list_8 ::= SIGN+

    list_9 ::= (list_9 list_constant_element)?

    seq_10 ::= LBRACKET list_9 RBRACKET

    list_11 ::= (list_11 ALPHANUMERIC)?

    list_12 ::= (list_12 expressions_list)?

    seq_13 ::= OP_63543 list_12 OP_50303

    list_14 ::= (list_14 expressions_list)?

    seq_15 ::= expression_item COMMA list_14

    seq_16 ::= expression COLON expression SEMI

    list_17 ::= (list_17 seq_16)?

    seq_18 ::= expression COMMA actuals_list

    seq_19 ::= current_declaration SEMI

    list_20 ::= (list_20 seq_19)?

    seq_21 ::= definition SEMI

    list_22 ::= (list_22 seq_21)?

    seq_23 ::= identifier COMMA formals_list
%End
