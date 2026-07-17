-- ASL Intrinsic Parser (LPG)
-- Ported from antlr/grammars-v4 amazon-states-language-intrinsic-functions

%Options la=2
%Options fp=AslIntrinsicParser
%options package=lpg.grammars.amazon_states_language_intrinsic_functions
%options template=dtParserTemplateF.gi
%options import_terminals=AslIntrinsicLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    intrinsic_function
%End

%Rules
    intrinsic_function ::= states_func_decl

    states_func_decl ::= STATES DOT state_fun_name func_arg_list

    state_fun_name ::= FORMAT
                     | STRINGTOJSON
                     | JSONTOSTRING
                     | ARRAY
                     | ARRAYPARTITION
                     | ARRAYCONTAINS
                     | ARRAYRANGE
                     | ARRAYGETITEM
                     | ARRAYLENGTH
                     | ARRAYUNIQUE
                     | BASE64ENCODE
                     | BASE64DECODE
                     | HASH
                     | JSONMERGE
                     | MATHRANDOM
                     | MATHADD
                     | STRINGSPLIT
                     | UUID

    func_arg_list ::= LPAREN RPAREN
                    | LPAREN arg_list RPAREN

    arg_list ::= func_arg
               | arg_list COMMA func_arg

    func_arg ::= STRING
               | INT
               | NUMBER
               | TRUE
               | FALSE
               | CONTEXT_PATH
               | JSON_PATH
               | states_func_decl
%End
