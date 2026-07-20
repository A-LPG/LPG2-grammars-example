-- AUTO-GENERATED from antlr/grammars-v4 bison by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=BisonParser
%options package=lpg.grammars.bison
%options template=dtParserTemplateF.gi
%options import_terminals=BisonLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    input_
%End

%Rules
    input_ ::= prologue_declarations OP_82957 bison_grammar epilogue_opt

    prologue_declarations ::= list_1

    prologue_declaration ::= grammar_declaration
           | PROLOGUE
           | PERCENT_DEBUG
           | LOCATIONS
           | DEFINE variable value
           | DEFINES
           | DEFINES STRING
           | OBS_PERCENT_ERROR_VERBOSE
           | EXPECT INT
           | EXPECT_RR INT
           | PERCENT_FILE_PREFIX STRING
           | GLR_PARSER
           | INITIAL_ACTION actionBlock
           | LANGUAGE STRING
           | PERCENT_NAME_PREFIX STRING
           | NO_LINES
           | NONDETERMINISTIC_PARSER
           | OBS_OUTPUT STRING
           | PARAM params
           | PERCENT_PURE_PARSER
           | PARSE list_2
           | LEX actionBlock
           | REQUIRE STRING
           | SKELETON STRING
           | TOKEN_TABLE
           | VERBOSE
           | PERCENT_YACC
           | SEMICOLON

    params ::= list_3

    grammar_declaration ::= symbol_declaration
           | PERCENT_START symbol
           | code_props_type actionBlock generic_symlist
           | DEFAULT_PREC
           | NO_DEFAULT_PREC
           | CODE actionBlock
           | CODE ID actionBlock
           | PERCENT_UNION union_name actionBlock

    code_props_type ::= DESTRUCTOR
           | PRINTER

    union_name ::= $empty
           | ID

    symbol_declaration ::= NTERM nterm_decls
           | PERCENT_TOKEN token_decls
           | PERCENT_TYPE symbol_decls
           | precedence_declarator token_decls_for_prec

    precedence_declarator ::= PERCENT_LEFT
           | PERCENT_RIGHT
           | PERCENT_NONASSOC
           | PERCENT_BINARY
           | PRECEDENCE

    tag_opt ::= TAG | $empty

    generic_symlist ::= list_4

    generic_symlist_item ::= symbol
           | tag

    tag ::= TAG
           | TAG_ANY
           | TAG_NONE

    nterm_decls ::= token_decls

    token_decls ::= grp_5 list_6 list_9

    token_decl ::= id int_opt alias
           | id id LPAREN id RPAREN alias

    int_opt ::= INT | $empty

    alias ::= string_as_id | $empty

    token_decls_for_prec ::= grp_10 list_15

    token_decl_for_prec ::= id int_opt
           | string_as_id

    symbol_decls ::= grp_16 list_21

    bison_grammar ::= list_22

    rules_or_grammar_declaration ::= rules
           | grammar_declaration SEMICOLON

    rules ::= id named_ref_opt COLON rhses_1

    rhses_1 ::= rhs list_24 SEMICOLON

    rhs ::= list_26

    named_ref_opt ::= $empty
           | BRACKETED_ID

    variable ::= ID

    value ::= $empty
           | ID
           | STRING
           | actionBlock

    id ::= ID
           | CHAR

    symbol ::= id
           | string_as_id

    string_as_id ::= STRING

    epilogue_opt ::= $empty
           | OP_82957 opt_27

    actionBlock ::= BRACED_CODE

    list_1 ::= $empty
           | list_1 prologue_declaration

    list_2 ::= actionBlock
           | list_2 actionBlock

    list_3 ::= actionBlock
           | list_3 actionBlock

    list_4 ::= generic_symlist_item
           | list_4 generic_symlist_item

    grp_5 ::= TAG | $empty

    list_6 ::= token_decl
           | list_6 token_decl

    list_7 ::= token_decl
           | list_7 token_decl

    seq_8 ::= TAG list_7

    list_9 ::= $empty
           | list_9 seq_8

    list_11 ::= token_decl_for_prec
           | list_11 token_decl_for_prec

    list_12 ::= token_decl_for_prec
           | list_12 token_decl_for_prec

    grp_10 ::= list_11
           | TAG list_12

    list_13 ::= token_decl_for_prec
           | list_13 token_decl_for_prec

    seq_14 ::= TAG list_13

    list_15 ::= $empty
           | list_15 seq_14

    list_17 ::= symbol
           | list_17 symbol

    list_18 ::= symbol
           | list_18 symbol

    grp_16 ::= list_17
           | TAG list_18

    list_19 ::= symbol
           | list_19 symbol

    seq_20 ::= TAG list_19

    list_21 ::= $empty
           | list_21 seq_20

    list_22 ::= $empty
           | list_22 rules_or_grammar_declaration

    grp_23 ::= PIPE rhs

    list_24 ::= $empty
           | list_24 grp_23

    grp_25 ::= symbol named_ref_opt
           | tag_opt actionBlock named_ref_opt
           | BRACED_PREDICATE
           | EMPTY_RULE
           | PERCENT_PREC symbol
           | DPREC INT
           | MERGE TAG
           | EXPECT INT
           | EXPECT_RR INT

    list_26 ::= $empty
           | list_26 grp_25

    opt_27 ::= EPILOGUE
           | $empty

%End
