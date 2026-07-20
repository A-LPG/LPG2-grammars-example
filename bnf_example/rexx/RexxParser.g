-- AUTO-GENERATED from antlr/grammars-v4 rexx by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=RexxParser
%options package=lpg.grammars.rexx
%options template=dtParserTemplateF.gi
%options import_terminals=RexxLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= program_

    program_ ::= opt_1 opt_2

    ncl ::= list_3

    null_clause ::= list_4 opt_5
           | label_list
           | include_statement

    delim ::= SEMICOL
           | EOL

    label_list ::= list_8

    label ::= label_var
           | label_const
           | NUMBER

    label_var ::= VAR_SYMBOL

    label_const ::= VAR_SYMBOL

    include_statement ::= STMT_INCLUDE

    instruction_list ::= list_9

    instruction ::= group_
           | single_instruction opt_10

    single_instruction ::= assignment
           | keyword_instruction
           | command_

    assignment ::= grp_11 EQ opt_12

    keyword_instruction ::= address_
           | arg_
           | call_
           | drop_
           | exit_
           | interpret_
           | iterate_
           | leave_
           | nop_
           | numeric_
           | options_
           | parse_
           | procedure_
           | pull_
           | push_
           | queue_
           | return_
           | say_
           | signal_
           | trace_
           | upper_

    command_ ::= expression

    group_ ::= do_
           | if_
           | select_

    do_ ::= KWD_DO opt_13 opt_14 ncl opt_15 KWD_END opt_16 opt_17

    do_rep ::= assignment opt_18
           | KWD_FOREVER
           | expression

    do_cnt ::= dot opt_19 opt_20
           | dot opt_21 opt_22
           | dob opt_23 opt_24
           | dob opt_25 opt_26
           | dof opt_27 opt_28
           | dof opt_29 opt_30

    dot ::= KWD_TO expression

    dob ::= KWD_BY expression

    dof ::= KWD_FOR expression

    do_cond ::= KWD_WHILE expression
           | KWD_UNTIL expression

    if_ ::= KWD_IF expression list_31 then_ opt_34

    then_ ::= KWD_THEN opt_35 instruction

    else_ ::= KWD_ELSE opt_36 instruction

    select_ ::= KWD_SELECT list_37 select_body KWD_END opt_38

    select_body ::= list_39 opt_40

    when_ ::= KWD_WHEN expression list_41 then_

    otherwise_ ::= KWD_OTHERWISE list_42 opt_43

    address_ ::= KWD_ADDRESS opt_46

    taken_constant ::= symbol
           | STRING

    valueexp ::= KWD_VALUE expression

    arg_ ::= KWD_ARG opt_47

    call_ ::= KWD_CALL grp_48

    callon_spec ::= KWD_ON callable_condition opt_51
           | KWD_OFF callable_condition

    callable_condition ::= KWD_ERROR
           | KWD_FAILURE
           | KWD_HALT

    call_parms ::= BR_O opt_52 BR_C
           | expression_list

    expression_list ::= list_53 expression list_56

    drop_ ::= KWD_DROP variable_list

    variable_list ::= list_58

    vref ::= BR_O var_symbol BR_C

    var_symbol ::= VAR_SYMBOL

    exit_ ::= KWD_EXIT opt_59

    interpret_ ::= KWD_INTERPRET expression

    iterate_ ::= KWD_ITERATE opt_60

    leave_ ::= KWD_LEAVE opt_61

    nop_ ::= KWD_NOP

    numeric_ ::= KWD_NUMERIC grp_62

    numeric_digits ::= KWD_DIGITS opt_63

    numeric_form ::= KWD_FORM opt_65

    numeric_fuzz ::= KWD_FUZZ opt_66

    options_ ::= KWD_OPTIONS expression

    parse_ ::= KWD_PARSE opt_67 parse_type opt_68

    parse_type ::= parse_key
           | parse_value
           | parse_var

    parse_key ::= KWD_ARG
           | KWD_EXTERNAL
           | KWD_NUMERIC
           | KWD_PULL
           | KWD_SOURCE
           | KWD_VERSION

    parse_value ::= KWD_VALUE opt_69 KWD_WITH

    parse_var ::= KWD_VAR var_symbol

    procedure_ ::= KWD_PROCEDURE opt_71

    pull_ ::= KWD_PULL opt_72

    push_ ::= KWD_PUSH opt_73

    queue_ ::= KWD_QUEUE opt_74

    return_ ::= KWD_RETURN opt_75

    say_ ::= KWD_SAY opt_76

    signal_ ::= KWD_SIGNAL grp_77

    signal_spec ::= KWD_ON condition opt_79
           | KWD_OFF condition

    condition ::= callable_condition
           | KWD_NOVALUE
           | KWD_SYNTAX

    trace_ ::= KWD_TRACE grp_80

    upper_ ::= KWD_UPPER list_81

    template_list ::= list_82 template_ list_85

    template_ ::= list_87

    target_ ::= VAR_SYMBOL
           | STOP

    trigger_ ::= pattern_
           | positional_

    pattern_ ::= STRING
           | vref

    positional_ ::= absolute_positional
           | relative_positional

    absolute_positional ::= NUMBER
           | EQ position_

    position_ ::= NUMBER
           | vref

    relative_positional ::= grp_88 position_

    symbol ::= var_symbol
           | VAR_SYMBOL
           | NUMBER

    expression ::= and_expression list_90

    or_operator ::= OR
           | XOR

    and_expression ::= comparison list_92

    comparison ::= concatenation list_94

    comparison_operator ::= normal_compare
           | strict_compare

    normal_compare ::= EQ
           | CMP_NEq
           | CMP_LM
           | CMP_ML
           | CMP_M
           | CMP_L
           | CMP_MEq
           | CMP_LEq
           | CMP_NM
           | CMP_NL

    strict_compare ::= CMPS_Eq
           | CMPS_Neq
           | CMPS_M
           | CMPS_L
           | CMPS_MEq
           | CMPS_LEq
           | CMPS_NM
           | CMPS_NL

    concatenation ::= addition list_96

    concatenation_op ::= blank_concatenation_op
           | normal_concatenation_op

    normal_concatenation_op ::= $empty
           | CONCAT

    blank_concatenation_op ::= $empty

    addition ::= multiplication list_98

    additive_operator ::= PLUS
           | MINUS

    multiplication ::= power_expression list_100

    multiplicative_operator ::= MUL
           | DIV
           | QUOTINENT
           | REMAINDER

    power_expression ::= prefix_expression list_102

    prefix_expression ::= list_104 term

    term ::= function_
           | BR_O expression BR_C
           | symbol
           | binary_string
           | hex_string
           | string

    binary_string ::= BINARY_STRING

    hex_string ::= HEX_STRING

    string ::= STRING

    function_ ::= function_name function_parameters

    function_name ::= KWD_ADDRESS
           | KWD_ARG
           | KWD_DIGITS
           | KWD_FORM
           | KWD_FUZZ
           | KWD_TRACE
           | KWD_VALUE
           | taken_constant

    function_parameters ::= BR_O opt_105 BR_C

    opt_1 ::= ncl
           | $empty

    opt_2 ::= instruction_list
           | $empty

    list_3 ::= null_clause
           | list_3 null_clause

    list_4 ::= delim
           | list_4 delim

    opt_5 ::= label_list
           | $empty

    list_6 ::= $empty
           | list_6 delim

    seq_7 ::= label COLON list_6

    list_8 ::= seq_7
           | list_8 seq_7

    list_9 ::= instruction
           | list_9 instruction

    opt_10 ::= ncl
           | $empty

    grp_11 ::= VAR_SYMBOL

    opt_12 ::= expression
           | $empty

    opt_13 ::= do_rep
           | $empty

    opt_14 ::= do_cond
           | $empty

    opt_15 ::= instruction_list
           | $empty

    opt_16 ::= var_symbol
           | $empty

    opt_17 ::= ncl
           | $empty

    opt_18 ::= do_cnt
           | $empty

    opt_19 ::= dob
           | $empty

    opt_20 ::= dof
           | $empty

    opt_21 ::= dof
           | $empty

    opt_22 ::= dob
           | $empty

    opt_23 ::= dot
           | $empty

    opt_24 ::= dof
           | $empty

    opt_25 ::= dof
           | $empty

    opt_26 ::= dot
           | $empty

    opt_27 ::= dot
           | $empty

    opt_28 ::= dob
           | $empty

    opt_29 ::= dob
           | $empty

    opt_30 ::= dot
           | $empty

    list_31 ::= $empty
           | list_31 delim

    list_32 ::= delim
           | list_32 delim

    seq_33 ::= list_32 else_

    opt_34 ::= seq_33
           | $empty

    opt_35 ::= ncl
           | $empty

    opt_36 ::= ncl
           | $empty

    list_37 ::= delim
           | list_37 delim

    opt_38 ::= ncl
           | $empty

    list_39 ::= when_
           | list_39 when_

    opt_40 ::= otherwise_
           | $empty

    list_41 ::= $empty
           | list_41 delim

    list_42 ::= $empty
           | list_42 delim

    opt_43 ::= instruction_list
           | $empty

    opt_45 ::= expression
           | $empty

    grp_44 ::= taken_constant opt_45
           | valueexp

    opt_46 ::= grp_44
           | $empty

    opt_47 ::= template_list
           | $empty

    opt_49 ::= call_parms
           | $empty

    grp_48 ::= callon_spec
           | function_name opt_49

    seq_50 ::= KWD_NAME function_name

    opt_51 ::= seq_50
           | $empty

    opt_52 ::= expression_list
           | $empty

    list_53 ::= $empty
           | list_53 COMMA

    list_54 ::= COMMA
           | list_54 COMMA

    seq_55 ::= list_54 expression

    list_56 ::= $empty
           | list_56 seq_55

    grp_57 ::= vref
           | var_symbol

    list_58 ::= grp_57
           | list_58 grp_57

    opt_59 ::= expression
           | $empty

    opt_60 ::= var_symbol
           | $empty

    opt_61 ::= var_symbol
           | $empty

    grp_62 ::= numeric_digits
           | numeric_form
           | numeric_fuzz

    opt_63 ::= expression
           | $empty

    grp_64 ::= KWD_ENGINEERING
           | KWD_SCIENTIFIC
           | valueexp
           | expression

    opt_65 ::= grp_64
           | $empty

    opt_66 ::= expression
           | $empty

    opt_67 ::= KWD_UPPER
           | $empty

    opt_68 ::= template_list
           | $empty

    opt_69 ::= expression
           | $empty

    seq_70 ::= KWD_EXPOSE variable_list

    opt_71 ::= seq_70
           | $empty

    opt_72 ::= template_list
           | $empty

    opt_73 ::= expression
           | $empty

    opt_74 ::= expression
           | $empty

    opt_75 ::= expression
           | $empty

    opt_76 ::= expression
           | $empty

    grp_77 ::= signal_spec
           | valueexp
           | taken_constant

    seq_78 ::= KWD_NAME function_name

    opt_79 ::= seq_78
           | $empty

    grp_80 ::= taken_constant
           | valueexp
           | expression
           | KWD_ERROR
           | KWD_FAILURE
           | KWD_OFF

    list_81 ::= var_symbol
           | list_81 var_symbol

    list_82 ::= $empty
           | list_82 COMMA

    list_83 ::= COMMA
           | list_83 COMMA

    seq_84 ::= list_83 template_

    list_85 ::= $empty
           | list_85 seq_84

    grp_86 ::= trigger_
           | target_

    list_87 ::= grp_86
           | list_87 grp_86

    grp_88 ::= PLUS
           | MINUS

    seq_89 ::= or_operator and_expression

    list_90 ::= $empty
           | list_90 seq_89

    seq_91 ::= AND comparison

    list_92 ::= $empty
           | list_92 seq_91

    seq_93 ::= comparison_operator concatenation

    list_94 ::= $empty
           | list_94 seq_93

    seq_95 ::= concatenation_op addition

    list_96 ::= $empty
           | list_96 seq_95

    seq_97 ::= additive_operator multiplication

    list_98 ::= $empty
           | list_98 seq_97

    seq_99 ::= multiplicative_operator power_expression

    list_100 ::= $empty
           | list_100 seq_99

    seq_101 ::= POW prefix_expression

    list_102 ::= $empty
           | list_102 seq_101

    grp_103 ::= PLUS
           | MINUS
           | NOT

    list_104 ::= $empty
           | list_104 grp_103

    opt_105 ::= expression_list
           | $empty

%End
