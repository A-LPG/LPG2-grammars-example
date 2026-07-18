-- AUTO-GENERATED from antlr/grammars-v4 smtlibv2 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=Smtlibv2Parser
%options package=lpg.grammars.smtlibv2
%options template=dtParserTemplateF.gi
%options import_terminals=Smtlibv2Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    start_
%End

%Rules
    start_ ::= logic
           | theory_decl
           | script
           | general_response

    generalReservedWord ::= GRW_Exclamation
           | GRW_Underscore
           | GRW_As
           | GRW_Binary
           | GRW_Decimal
           | GRW_Exists
           | GRW_Hexadecimal
           | GRW_Forall
           | GRW_Let
           | GRW_Match
           | GRW_Numeral
           | GRW_Par
           | GRW_String
           | RS_Model

    simpleSymbol ::= predefSymbol
           | IDENTIFIER

    quotedSymbol ::= QuotedSymbol

    predefSymbol ::= PS_Not
           | PS_Bool
           | PS_ContinuedExecution
           | PS_Error
           | PS_False
           | PS_ImmediateExit
           | PS_Incomplete
           | PS_Logic
           | PS_Memout
           | PS_Sat
           | PS_Success
           | PS_Theory
           | PS_True
           | PS_Unknown
           | PS_Unsupported
           | PS_Unsat

    predefKeyword ::= PK_AllStatistics
           | PK_AssertionStackLevels
           | PK_Authors
           | PK_Category
           | PK_Chainable
           | PK_Definition
           | PK_DiagnosticOutputChannel
           | PK_ErrorBehaviour
           | PK_Extension
           | PK_Funs
           | PK_FunsDescription
           | PK_GlobalDeclarations
           | PK_InteractiveMode
           | PK_Language
           | PK_LeftAssoc
           | PK_License
           | PK_Named
           | PK_Name
           | PK_Notes
           | PK_Pattern
           | PK_PrintSuccess
           | PK_ProduceAssertions
           | PK_ProduceAssignments
           | PK_ProduceModels
           | PK_ProduceProofs
           | PK_ProduceUnsatAssumptions
           | PK_ProduceUnsatCores
           | PK_RandomSeed
           | PK_ReasonUnknown
           | PK_RegularOutputChannel
           | PK_ReproducibleResourceLimit
           | PK_RightAssoc
           | PK_SmtLibVersion
           | PK_Sorts
           | PK_SortsDescription
           | PK_Source
           | PK_Status
           | PK_Theories
           | PK_Values
           | PK_Verbosity
           | PK_Version

    symbol ::= simpleSymbol
           | quotedSymbol

    numeral ::= Numeral

    decimal ::= Decimal

    hexadecimal ::= HexDecimal

    binary ::= Binary

    string ::= String

    keyword ::= predefKeyword
           | Colon simpleSymbol

    spec_constant ::= numeral
           | decimal
           | hexadecimal
           | binary
           | string

    s_expr ::= spec_constant
           | symbol
           | keyword
           | ParOpen list_1 ParClose

    index ::= numeral
           | symbol

    identifier ::= symbol
           | ParOpen GRW_Underscore symbol list_2 ParClose

    attribute_value ::= spec_constant
           | symbol
           | ParOpen list_3 ParClose

    attribute ::= keyword
           | keyword attribute_value

    sort ::= identifier
           | ParOpen identifier list_4 ParClose

    qual_identifer ::= identifier
           | ParOpen GRW_As identifier sort ParClose

    var_binding ::= ParOpen symbol term ParClose

    sorted_var ::= ParOpen symbol sort ParClose

    pattern ::= symbol
           | ParOpen symbol list_5 ParClose

    match_case ::= ParOpen pattern term ParClose

    term ::= spec_constant
           | qual_identifer
           | ParOpen qual_identifer list_6 ParClose
           | ParOpen GRW_Let ParOpen list_7 ParClose term ParClose
           | ParOpen GRW_Forall ParOpen list_8 ParClose term ParClose
           | ParOpen GRW_Exists ParOpen list_9 ParClose term ParClose
           | ParOpen GRW_Match term ParOpen list_10 ParClose ParClose
           | ParOpen GRW_Exclamation term list_11 ParClose

    sort_symbol_decl ::= ParOpen identifier numeral list_12 ParClose

    meta_spec_constant ::= GRW_Numeral
           | GRW_Decimal
           | GRW_String

    fun_symbol_decl ::= ParOpen spec_constant sort list_13 ParClose
           | ParOpen meta_spec_constant sort list_14 ParClose
           | ParOpen identifier list_15 list_16 ParClose

    par_fun_symbol_decl ::= fun_symbol_decl
           | ParOpen GRW_Par ParOpen list_17 ParClose ParOpen identifier list_18 list_19 ParClose ParClose

    theory_attribute ::= PK_Sorts ParOpen list_20 ParClose
           | PK_Funs ParOpen list_21 ParClose
           | PK_SortsDescription string
           | PK_FunsDescription string
           | PK_Definition string
           | PK_Values string
           | PK_Notes string
           | attribute

    theory_decl ::= ParOpen PS_Theory symbol list_22 ParClose

    logic_attribue ::= PK_Theories ParOpen list_23 ParClose
           | PK_Language string
           | PK_Extension string
           | PK_Values string
           | PK_Notes string
           | attribute

    logic ::= ParOpen PS_Logic symbol list_24 ParClose

    sort_dec ::= ParOpen symbol numeral ParClose

    selector_dec ::= ParOpen symbol sort ParClose

    constructor_dec ::= ParOpen symbol list_25 ParClose

    datatype_dec ::= ParOpen list_26 ParClose
           | ParOpen GRW_Par ParOpen list_27 ParClose ParOpen list_28 ParClose ParClose

    function_dec ::= ParOpen symbol ParOpen list_29 ParClose sort ParClose

    function_def ::= symbol ParOpen list_30 ParClose sort term

    prop_literal ::= symbol
           | ParOpen PS_Not symbol ParClose

    script ::= list_31

    cmd_assert ::= CMD_Assert term

    cmd_checkSat ::= CMD_CheckSat

    cmd_checkSatAssuming ::= CMD_CheckSatAssuming ParOpen list_32 ParClose

    cmd_declareConst ::= CMD_DeclareConst symbol sort

    cmd_declareDatatype ::= CMD_DeclareDatatype symbol datatype_dec

    cmd_declareDatatypes ::= CMD_DeclareDatatypes ParOpen list_33 ParClose ParOpen list_34 ParClose

    cmd_declareFun ::= CMD_DeclareFun symbol ParOpen list_35 ParClose sort

    cmd_declareSort ::= CMD_DeclareSort symbol numeral

    cmd_defineFun ::= CMD_DefineFun function_def

    cmd_defineFunRec ::= CMD_DefineFunRec function_def

    cmd_defineFunsRec ::= CMD_DefineFunsRec ParOpen list_36 ParClose ParOpen list_37 ParClose

    cmd_defineSort ::= CMD_DefineSort symbol ParOpen list_38 ParClose sort

    cmd_echo ::= CMD_Echo string

    cmd_exit ::= CMD_Exit

    cmd_getAssertions ::= CMD_GetAssertions

    cmd_getAssignment ::= CMD_GetAssignment

    cmd_getInfo ::= CMD_GetInfo info_flag

    cmd_getModel ::= CMD_GetModel

    cmd_getOption ::= CMD_GetOption keyword

    cmd_getProof ::= CMD_GetProof

    cmd_getUnsatAssumptions ::= CMD_GetUnsatAssumptions

    cmd_getUnsatCore ::= CMD_GetUnsatCore

    cmd_getValue ::= CMD_GetValue ParOpen list_39 ParClose

    cmd_pop ::= CMD_Pop numeral

    cmd_push ::= CMD_Push numeral

    cmd_reset ::= CMD_Reset

    cmd_resetAssertions ::= CMD_ResetAssertions

    cmd_setInfo ::= CMD_SetInfo attribute

    cmd_setLogic ::= CMD_SetLogic symbol

    cmd_setOption ::= CMD_SetOption option

    command ::= ParOpen cmd_assert ParClose
           | ParOpen cmd_checkSat ParClose
           | ParOpen cmd_checkSatAssuming ParClose
           | ParOpen cmd_declareConst ParClose
           | ParOpen cmd_declareDatatype ParClose
           | ParOpen cmd_declareDatatypes ParClose
           | ParOpen cmd_declareFun ParClose
           | ParOpen cmd_declareSort ParClose
           | ParOpen cmd_defineFun ParClose
           | ParOpen cmd_defineFunRec ParClose
           | ParOpen cmd_defineFunsRec ParClose
           | ParOpen cmd_defineSort ParClose
           | ParOpen cmd_echo ParClose
           | ParOpen cmd_exit ParClose
           | ParOpen cmd_getAssertions ParClose
           | ParOpen cmd_getAssignment ParClose
           | ParOpen cmd_getInfo ParClose
           | ParOpen cmd_getModel ParClose
           | ParOpen cmd_getOption ParClose
           | ParOpen cmd_getProof ParClose
           | ParOpen cmd_getUnsatAssumptions ParClose
           | ParOpen cmd_getUnsatCore ParClose
           | ParOpen cmd_getValue ParClose
           | ParOpen cmd_pop ParClose
           | ParOpen cmd_push ParClose
           | ParOpen cmd_reset ParClose
           | ParOpen cmd_resetAssertions ParClose
           | ParOpen cmd_setInfo ParClose
           | ParOpen cmd_setLogic ParClose
           | ParOpen cmd_setOption ParClose

    b_value ::= PS_True
           | PS_False

    option ::= PK_DiagnosticOutputChannel string
           | PK_GlobalDeclarations b_value
           | PK_InteractiveMode b_value
           | PK_PrintSuccess b_value
           | PK_ProduceAssertions b_value
           | PK_ProduceAssignments b_value
           | PK_ProduceModels b_value
           | PK_ProduceProofs b_value
           | PK_ProduceUnsatAssumptions b_value
           | PK_ProduceUnsatCores b_value
           | PK_RandomSeed numeral
           | PK_RegularOutputChannel string
           | PK_ReproducibleResourceLimit numeral
           | PK_Verbosity numeral
           | attribute

    info_flag ::= PK_AllStatistics
           | PK_AssertionStackLevels
           | PK_Authors
           | PK_ErrorBehaviour
           | PK_Name
           | PK_ReasonUnknown
           | PK_Version
           | keyword

    error_behaviour ::= PS_ImmediateExit
           | PS_ContinuedExecution

    reason_unknown ::= PS_Memout
           | PS_Incomplete
           | s_expr

    model_response ::= ParOpen cmd_defineFun ParClose
           | ParOpen cmd_defineFunRec ParClose
           | ParOpen cmd_defineFunsRec ParClose

    info_response ::= PK_AssertionStackLevels numeral
           | PK_Authors string
           | PK_ErrorBehaviour error_behaviour
           | PK_Name string
           | PK_ReasonUnknown reason_unknown
           | PK_Version string
           | attribute

    valuation_pair ::= ParOpen term term ParClose

    t_valuation_pair ::= ParOpen symbol b_value ParClose

    check_sat_response ::= PS_Sat
           | PS_Unsat
           | PS_Unknown

    echo_response ::= string

    get_assertions_response ::= ParOpen list_40 ParClose

    get_assignment_response ::= ParOpen list_41 ParClose

    get_info_response ::= ParOpen list_42 ParClose

    get_model_response ::= ParOpen RS_Model list_43 ParClose
           | ParOpen list_44 ParClose

    get_option_response ::= attribute_value

    get_proof_response ::= s_expr

    get_unsat_assump_response ::= ParOpen list_45 ParClose

    get_unsat_core_response ::= ParOpen list_46 ParClose

    get_value_response ::= ParOpen list_47 ParClose

    specific_success_response ::= check_sat_response
           | echo_response
           | get_assertions_response
           | get_assignment_response
           | get_info_response
           | get_model_response
           | get_option_response
           | get_proof_response
           | get_unsat_assump_response
           | get_unsat_core_response
           | get_value_response

    general_response ::= PS_Success
           | specific_success_response
           | PS_Unsupported
           | ParOpen PS_Error string ParClose

    list_1 ::= $empty | list_1 s_expr

    list_2 ::= index | list_2 index

    list_3 ::= $empty | list_3 s_expr

    list_4 ::= sort | list_4 sort

    list_5 ::= symbol | list_5 symbol

    list_6 ::= term | list_6 term

    list_7 ::= var_binding | list_7 var_binding

    list_8 ::= sorted_var | list_8 sorted_var

    list_9 ::= sorted_var | list_9 sorted_var

    list_10 ::= match_case | list_10 match_case

    list_11 ::= attribute | list_11 attribute

    list_12 ::= $empty | list_12 attribute

    list_13 ::= $empty | list_13 attribute

    list_14 ::= $empty | list_14 attribute

    list_15 ::= sort | list_15 sort

    list_16 ::= $empty | list_16 attribute

    list_17 ::= symbol | list_17 symbol

    list_18 ::= sort | list_18 sort

    list_19 ::= $empty | list_19 attribute

    list_20 ::= sort_symbol_decl | list_20 sort_symbol_decl

    list_21 ::= par_fun_symbol_decl | list_21 par_fun_symbol_decl

    list_22 ::= theory_attribute | list_22 theory_attribute

    list_23 ::= symbol | list_23 symbol

    list_24 ::= logic_attribue | list_24 logic_attribue

    list_25 ::= $empty | list_25 selector_dec

    list_26 ::= constructor_dec | list_26 constructor_dec

    list_27 ::= symbol | list_27 symbol

    list_28 ::= constructor_dec | list_28 constructor_dec

    list_29 ::= $empty | list_29 sorted_var

    list_30 ::= $empty | list_30 sorted_var

    list_31 ::= $empty | list_31 command

    list_32 ::= $empty | list_32 prop_literal

    list_33 ::= sort_dec | list_33 sort_dec

    list_34 ::= datatype_dec | list_34 datatype_dec

    list_35 ::= $empty | list_35 sort

    list_36 ::= function_dec | list_36 function_dec

    list_37 ::= term | list_37 term

    list_38 ::= $empty | list_38 symbol

    list_39 ::= term | list_39 term

    list_40 ::= $empty | list_40 term

    list_41 ::= $empty | list_41 t_valuation_pair

    list_42 ::= info_response | list_42 info_response

    list_43 ::= $empty | list_43 model_response

    list_44 ::= $empty | list_44 model_response

    list_45 ::= $empty | list_45 symbol

    list_46 ::= $empty | list_46 symbol

    list_47 ::= valuation_pair | list_47 valuation_pair

%End
