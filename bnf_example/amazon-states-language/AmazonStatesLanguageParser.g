-- AUTO-GENERATED from antlr/grammars-v4 amazon-states-language by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=AmazonStatesLanguageParser
%options package=lpg.grammars.amazon_states_language
%options template=btParserTemplateF.gi
%options import_terminals=AmazonStatesLanguageLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    state_machine
%End

%Rules
    state_machine ::= program_decl

    program_decl ::= LBRACE top_layer_stmt list_2 RBRACE

    top_layer_stmt ::= comment_decl
           | version_decl
           | startat_decl
           | states_decl
           | timeout_seconds_decl

    startat_decl ::= STARTAT COLON keyword_or_string

    comment_decl ::= COMMENT COLON keyword_or_string

    version_decl ::= VERSION COLON keyword_or_string

    state_stmt ::= comment_decl
           | type_decl
           | input_path_decl
           | resource_decl
           | next_decl
           | result_decl
           | result_path_decl
           | output_path_decl
           | end_decl
           | default_decl
           | choices_decl
           | error_decl
           | error_path_decl
           | cause_decl
           | cause_path_decl
           | seconds_decl
           | seconds_path_decl
           | timestamp_decl
           | timestamp_path_decl
           | items_path_decl
           | item_processor_decl
           | iterator_decl
           | item_selector_decl
           | item_reader_decl
           | max_concurrency_decl
           | timeout_seconds_decl
           | timeout_seconds_path_decl
           | heartbeat_seconds_decl
           | heartbeat_seconds_path_decl
           | branches_decl
           | parameters_decl
           | retry_decl
           | catch_decl
           | result_selector_decl

    states_decl ::= STATES COLON LBRACE state_decl list_4 RBRACE

    state_name ::= keyword_or_string

    state_decl ::= state_name COLON state_decl_body

    state_decl_body ::= LBRACE state_stmt list_6 RBRACE

    type_decl ::= TYPE COLON state_type

    next_decl ::= NEXT COLON keyword_or_string

    resource_decl ::= RESOURCE COLON keyword_or_string

    input_path_decl ::= INPUTPATH COLON grp_7

    result_decl ::= RESULT COLON json_value_decl

    result_path_decl ::= RESULTPATH COLON grp_8

    output_path_decl ::= OUTPUTPATH COLON grp_9

    end_decl ::= END COLON grp_10

    default_decl ::= DEFAULT COLON keyword_or_string

    error_decl ::= ERROR COLON keyword_or_string

    error_path_decl ::= ERRORPATH COLON STRINGPATH
           | ERRORPATH COLON intrinsic_func

    cause_decl ::= CAUSE COLON keyword_or_string

    cause_path_decl ::= CAUSEPATH COLON STRINGPATH
           | CAUSEPATH COLON intrinsic_func

    seconds_decl ::= SECONDS COLON NUMBER

    seconds_path_decl ::= SECONDSPATH COLON keyword_or_string

    timestamp_decl ::= TIMESTAMP COLON keyword_or_string

    timestamp_path_decl ::= TIMESTAMPPATH COLON keyword_or_string

    items_path_decl ::= ITEMSPATH COLON keyword_or_string

    max_concurrency_decl ::= MAXCONCURRENCY COLON NUMBER

    parameters_decl ::= PARAMETERS COLON payload_tmpl_decl

    timeout_seconds_decl ::= TIMEOUTSECONDS COLON NUMBER

    timeout_seconds_path_decl ::= TIMEOUTSECONDSPATH COLON STRINGPATH

    heartbeat_seconds_decl ::= HEARTBEATSECONDS COLON NUMBER

    heartbeat_seconds_path_decl ::= HEARTBEATSECONDSPATH COLON STRINGPATH

    payload_tmpl_decl ::= LBRACE payload_binding list_12 RBRACE
           | LBRACE RBRACE

    payload_binding ::= STRINGDOLLAR COLON STRINGPATH
           | STRINGDOLLAR COLON STRINGPATHCONTEXTOBJ
           | STRINGDOLLAR COLON intrinsic_func
           | keyword_or_string COLON payload_value_decl

    intrinsic_func ::= STRING

    payload_arr_decl ::= LBRACK payload_value_decl list_14 RBRACK
           | LBRACK RBRACK

    payload_value_decl ::= payload_binding
           | payload_arr_decl
           | payload_tmpl_decl
           | payload_value_lit

    payload_value_lit ::= NUMBER
           | grp_15
           | NULL
           | keyword_or_string

    result_selector_decl ::= RESULTSELECTOR COLON payload_tmpl_decl

    state_type ::= TASK
           | PASS
           | CHOICE
           | FAIL
           | SUCCEED
           | WAIT
           | MAP
           | PARALLEL

    choices_decl ::= CHOICES COLON LBRACK choice_rule list_17 RBRACK

    choice_rule ::= LBRACE comparison_variable_stmt list_19 RBRACE
           | LBRACE comparison_composite_stmt list_21 RBRACE

    comparison_variable_stmt ::= variable_decl
           | comparison_func
           | next_decl
           | comment_decl

    comparison_composite_stmt ::= comparison_composite
           | next_decl

    comparison_composite ::= choice_operator COLON grp_22

    variable_decl ::= VARIABLE COLON keyword_or_string

    comparison_func ::= comparison_op COLON json_value_decl

    branches_decl ::= BRANCHES COLON LBRACK program_decl list_26 RBRACK

    item_processor_decl ::= ITEMPROCESSOR COLON LBRACE item_processor_item list_28 RBRACE

    item_processor_item ::= processor_config_decl
           | startat_decl
           | states_decl
           | comment_decl

    processor_config_decl ::= PROCESSORCONFIG COLON LBRACE processor_config_field list_30 RBRACE

    processor_config_field ::= mode_decl
           | execution_decl

    mode_decl ::= MODE COLON mode_type

    mode_type ::= INLINE
           | DISTRIBUTED

    execution_decl ::= EXECUTIONTYPE COLON execution_type

    execution_type ::= STANDARD

    iterator_decl ::= ITERATOR COLON LBRACE iterator_decl_item list_32 RBRACE

    iterator_decl_item ::= startat_decl
           | states_decl
           | comment_decl

    item_selector_decl ::= ITEMSELECTOR COLON payload_tmpl_decl

    item_reader_decl ::= ITEMREADER COLON LBRACE items_reader_field list_34 RBRACE

    items_reader_field ::= resource_decl
           | parameters_decl
           | reader_config_decl

    reader_config_decl ::= READERCONFIG COLON LBRACE reader_config_field list_36 RBRACE

    reader_config_field ::= input_type_decl
           | csv_header_location_decl
           | csv_headers_decl
           | max_items_decl
           | max_items_path_decl

    input_type_decl ::= INPUTTYPE COLON keyword_or_string

    csv_header_location_decl ::= CSVHEADERLOCATION COLON keyword_or_string

    csv_headers_decl ::= CSVHEADERS COLON LBRACK keyword_or_string list_38 RBRACK

    max_items_decl ::= MAXITEMS COLON NUMBER

    max_items_path_decl ::= MAXITEMSPATH COLON STRINGPATH

    retry_decl ::= RETRY COLON LBRACK opt_42 RBRACK

    retrier_decl ::= LBRACE retrier_stmt list_44 RBRACE

    retrier_stmt ::= error_equals_decl
           | interval_seconds_decl
           | max_attempts_decl
           | backoff_rate_decl
           | max_delay_seconds_decl
           | jitter_strategy_decl
           | comment_decl

    error_equals_decl ::= ERROREQUALS COLON LBRACK error_name list_46 RBRACK

    interval_seconds_decl ::= INTERVALSECONDS COLON NUMBER

    max_attempts_decl ::= MAXATTEMPTS COLON NUMBER

    backoff_rate_decl ::= BACKOFFRATE COLON grp_47

    max_delay_seconds_decl ::= MAXDELAYSECONDS COLON NUMBER

    jitter_strategy_decl ::= JITTERSTRATEGY COLON grp_48

    catch_decl ::= CATCH COLON LBRACK opt_52 RBRACK

    catcher_decl ::= LBRACE catcher_stmt list_54 RBRACE

    catcher_stmt ::= error_equals_decl
           | result_path_decl
           | next_decl
           | comment_decl

    comparison_op ::= BOOLEANEQUALS
           | BOOLEANQUALSPATH
           | ISBOOLEAN
           | ISNULL
           | ISNUMERIC
           | ISPRESENT
           | ISSTRING
           | ISTIMESTAMP
           | NUMERICEQUALS
           | NUMERICEQUALSPATH
           | NUMERICGREATERTHAN
           | NUMERICGREATERTHANPATH
           | NUMERICGREATERTHANEQUALS
           | NUMERICGREATERTHANEQUALSPATH
           | NUMERICLESSTHAN
           | NUMERICLESSTHANPATH
           | NUMERICLESSTHANEQUALS
           | NUMERICLESSTHANEQUALSPATH
           | STRINGEQUALS
           | STRINGEQUALSPATH
           | STRINGGREATERTHAN
           | STRINGGREATERTHANPATH
           | STRINGGREATERTHANEQUALS
           | STRINGGREATERTHANEQUALSPATH
           | STRINGLESSTHAN
           | STRINGLESSTHANPATH
           | STRINGLESSTHANEQUALS
           | STRINGLESSTHANEQUALSPATH
           | STRINGMATCHES
           | TIMESTAMPEQUALS
           | TIMESTAMPEQUALSPATH
           | TIMESTAMPGREATERTHAN
           | TIMESTAMPGREATERTHANPATH
           | TIMESTAMPGREATERTHANEQUALS
           | TIMESTAMPGREATERTHANEQUALSPATH
           | TIMESTAMPLESSTHAN
           | TIMESTAMPLESSTHANPATH
           | TIMESTAMPLESSTHANEQUALS
           | TIMESTAMPLESSTHANEQUALSPATH

    choice_operator ::= NOT
           | AND
           | OR

    states_error_name ::= ERRORNAMEStatesALL
           | ERRORNAMEStatesHeartbeatTimeout
           | ERRORNAMEStatesTimeout
           | ERRORNAMEStatesTaskFailed
           | ERRORNAMEStatesPermissions
           | ERRORNAMEStatesResultPathMatchFailure
           | ERRORNAMEStatesParameterPathFailure
           | ERRORNAMEStatesBranchFailed
           | ERRORNAMEStatesNoChoiceMatched
           | ERRORNAMEStatesIntrinsicFailure
           | ERRORNAMEStatesExceedToleratedFailureThreshold
           | ERRORNAMEStatesItemReaderFailed
           | ERRORNAMEStatesResultWriterFailed
           | ERRORNAMEStatesRuntime

    error_name ::= states_error_name
           | keyword_or_string

    json_obj_decl ::= LBRACE json_binding list_56 RBRACE
           | LBRACE RBRACE

    json_binding ::= keyword_or_string COLON json_value_decl

    json_arr_decl ::= LBRACK json_value_decl list_58 RBRACK
           | LBRACK RBRACK

    json_value_decl ::= NUMBER
           | TRUE
           | FALSE
           | NULL
           | json_binding
           | json_arr_decl
           | json_obj_decl
           | keyword_or_string

    keyword_or_string ::= STRINGDOLLAR
           | STRINGPATHCONTEXTOBJ
           | STRINGPATH
           | STRING
           | COMMENT
           | STATES
           | STARTAT
           | TYPE
           | TASK
           | CHOICE
           | FAIL
           | SUCCEED
           | PASS
           | WAIT
           | PARALLEL
           | MAP
           | CHOICES
           | VARIABLE
           | DEFAULT
           | BRANCHES
           | AND
           | BOOLEANEQUALS
           | BOOLEANQUALSPATH
           | ISBOOLEAN
           | ISNULL
           | ISNUMERIC
           | ISPRESENT
           | ISSTRING
           | ISTIMESTAMP
           | NOT
           | NUMERICEQUALS
           | NUMERICEQUALSPATH
           | NUMERICGREATERTHAN
           | NUMERICGREATERTHANPATH
           | NUMERICGREATERTHANEQUALS
           | NUMERICGREATERTHANEQUALSPATH
           | NUMERICLESSTHAN
           | NUMERICLESSTHANPATH
           | NUMERICLESSTHANEQUALS
           | NUMERICLESSTHANEQUALSPATH
           | OR
           | STRINGEQUALS
           | STRINGEQUALSPATH
           | STRINGGREATERTHAN
           | STRINGGREATERTHANPATH
           | STRINGGREATERTHANEQUALS
           | STRINGGREATERTHANEQUALSPATH
           | STRINGLESSTHAN
           | STRINGLESSTHANPATH
           | STRINGLESSTHANEQUALS
           | STRINGLESSTHANEQUALSPATH
           | STRINGMATCHES
           | TIMESTAMPEQUALS
           | TIMESTAMPEQUALSPATH
           | TIMESTAMPGREATERTHAN
           | TIMESTAMPGREATERTHANPATH
           | TIMESTAMPGREATERTHANEQUALS
           | TIMESTAMPGREATERTHANEQUALSPATH
           | TIMESTAMPLESSTHAN
           | TIMESTAMPLESSTHANPATH
           | TIMESTAMPLESSTHANEQUALS
           | TIMESTAMPLESSTHANEQUALSPATH
           | SECONDSPATH
           | SECONDS
           | TIMESTAMPPATH
           | TIMESTAMP
           | TIMEOUTSECONDS
           | TIMEOUTSECONDSPATH
           | HEARTBEATSECONDS
           | HEARTBEATSECONDSPATH
           | PROCESSORCONFIG
           | MODE
           | INLINE
           | DISTRIBUTED
           | EXECUTIONTYPE
           | STANDARD
           | ITEMPROCESSOR
           | ITERATOR
           | ITEMSELECTOR
           | MAXCONCURRENCY
           | RESOURCE
           | INPUTPATH
           | OUTPUTPATH
           | ITEMSPATH
           | RESULTPATH
           | RESULT
           | PARAMETERS
           | RESULTSELECTOR
           | ITEMREADER
           | READERCONFIG
           | INPUTTYPE
           | CSVHEADERLOCATION
           | CSVHEADERS
           | MAXITEMS
           | MAXITEMSPATH
           | NEXT
           | END
           | CAUSE
           | ERROR
           | RETRY
           | ERROREQUALS
           | INTERVALSECONDS
           | MAXATTEMPTS
           | BACKOFFRATE
           | MAXDELAYSECONDS
           | JITTERSTRATEGY
           | FULL
           | NONE
           | CATCH
           | ERRORNAMEStatesALL
           | ERRORNAMEStatesHeartbeatTimeout
           | ERRORNAMEStatesTimeout
           | ERRORNAMEStatesTaskFailed
           | ERRORNAMEStatesPermissions
           | ERRORNAMEStatesResultPathMatchFailure
           | ERRORNAMEStatesParameterPathFailure
           | ERRORNAMEStatesBranchFailed
           | ERRORNAMEStatesNoChoiceMatched
           | ERRORNAMEStatesIntrinsicFailure
           | ERRORNAMEStatesExceedToleratedFailureThreshold
           | ERRORNAMEStatesItemReaderFailed
           | ERRORNAMEStatesResultWriterFailed
           | ERRORNAMEStatesRuntime

    seq_1 ::= COMMA top_layer_stmt

    list_2 ::= $empty | list_2 seq_1

    seq_3 ::= COMMA state_decl

    list_4 ::= $empty | list_4 seq_3

    seq_5 ::= COMMA state_stmt

    list_6 ::= $empty | list_6 seq_5

    grp_7 ::= NULL | keyword_or_string

    grp_8 ::= NULL | keyword_or_string

    grp_9 ::= NULL | keyword_or_string

    grp_10 ::= TRUE | FALSE

    seq_11 ::= COMMA payload_binding

    list_12 ::= $empty | list_12 seq_11

    seq_13 ::= COMMA payload_value_decl

    list_14 ::= $empty | list_14 seq_13

    grp_15 ::= TRUE | FALSE

    seq_16 ::= COMMA choice_rule

    list_17 ::= $empty | list_17 seq_16

    seq_18 ::= COMMA comparison_variable_stmt

    list_19 ::= seq_18 | list_19 seq_18

    seq_20 ::= COMMA comparison_composite_stmt

    list_21 ::= $empty | list_21 seq_20

    seq_23 ::= COMMA choice_rule

    list_24 ::= $empty | list_24 seq_23

    grp_22 ::= choice_rule | LBRACK choice_rule list_24 RBRACK

    seq_25 ::= COMMA program_decl

    list_26 ::= $empty | list_26 seq_25

    seq_27 ::= COMMA item_processor_item

    list_28 ::= $empty | list_28 seq_27

    seq_29 ::= COMMA processor_config_field

    list_30 ::= $empty | list_30 seq_29

    seq_31 ::= COMMA iterator_decl_item

    list_32 ::= $empty | list_32 seq_31

    seq_33 ::= COMMA items_reader_field

    list_34 ::= $empty | list_34 seq_33

    seq_35 ::= COMMA reader_config_field

    list_36 ::= $empty | list_36 seq_35

    seq_37 ::= COMMA keyword_or_string

    list_38 ::= $empty | list_38 seq_37

    seq_39 ::= COMMA retrier_decl

    list_40 ::= $empty | list_40 seq_39

    seq_41 ::= retrier_decl list_40

    opt_42 ::= seq_41 | $empty

    seq_43 ::= COMMA retrier_stmt

    list_44 ::= $empty | list_44 seq_43

    seq_45 ::= COMMA error_name

    list_46 ::= $empty | list_46 seq_45

    grp_47 ::= NUMBER | INT

    grp_48 ::= FULL | NONE

    seq_49 ::= COMMA catcher_decl

    list_50 ::= $empty | list_50 seq_49

    seq_51 ::= catcher_decl list_50

    opt_52 ::= seq_51 | $empty

    seq_53 ::= COMMA catcher_stmt

    list_54 ::= $empty | list_54 seq_53

    seq_55 ::= COMMA json_binding

    list_56 ::= $empty | list_56 seq_55

    seq_57 ::= COMMA json_value_decl

    list_58 ::= $empty | list_58 seq_57

%End
