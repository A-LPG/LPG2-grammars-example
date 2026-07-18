-- AUTO-GENERATED from antlr/grammars-v4 jpa by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=JpaParser
%options package=lpg.grammars.jpa
%options template=dtParserTemplateF.gi
%options import_terminals=JpaLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= ql_statement

    ql_statement ::= select_statement
           | update_statement
           | delete_statement

    select_statement ::= select_clause from_clause opt_1 opt_2 opt_3 opt_4

    update_statement ::= update_clause opt_5

    delete_statement ::= delete_clause opt_6

    from_clause ::= FROM identification_variable_declaration list_9

    identification_variable_declaration ::= range_variable_declaration list_11

    range_variable_declaration ::= abstract_schema_name opt_12 IDENTIFICATION_VARIABLE

    join ::= join_spec join_association_path_expression opt_13 IDENTIFICATION_VARIABLE

    fetch_join ::= join_spec FETCH join_association_path_expression

    join_spec ::= opt_16 JOIN

    join_association_path_expression ::= join_collection_valued_path_expression
           | join_single_valued_association_path_expression

    join_collection_valued_path_expression ::= IDENTIFICATION_VARIABLE DOT collection_valued_association_field

    join_single_valued_association_path_expression ::= IDENTIFICATION_VARIABLE DOT single_valued_association_field

    collection_member_declaration ::= IN LPAREN collection_valued_path_expression RPAREN opt_17 IDENTIFICATION_VARIABLE

    single_valued_path_expression ::= state_field_path_expression
           | single_valued_association_path_expression

    state_field_path_expression ::= IDENTIFICATION_VARIABLE DOT qualified_name

    single_valued_association_path_expression ::= state_field_path_expression

    collection_valued_path_expression ::= state_field_path_expression

    qualified_name ::= IDENTIFICATION_VARIABLE
                     | qualified_name DOT IDENTIFICATION_VARIABLE

    state_field ::= qualified_name

    update_clause ::= UPDATE abstract_schema_name opt_27 SET update_item list_29

    update_item ::= opt_31 grp_32 EQ new_value

    new_value ::= simple_arithmetic_expression
           | string_primary
           | datetime_primary
           | boolean_primary
           | enum_primary
           | simple_entity_expression
           | NULL_LITERAL

    delete_clause ::= DELETE FROM abstract_schema_name opt_35

    select_clause ::= SELECT opt_36 select_expression list_38

    select_expression ::= single_valued_path_expression
           | aggregate_expression
           | IDENTIFICATION_VARIABLE
           | OBJECT LPAREN IDENTIFICATION_VARIABLE RPAREN
           | constructor_expression

    constructor_expression ::= NEW constructor_name LPAREN constructor_item list_40 RPAREN

    constructor_item ::= single_valued_path_expression
           | aggregate_expression

    aggregate_expression ::= grp_41 LPAREN opt_42 state_field_path_expression RPAREN
           | COUNT LPAREN opt_43 grp_44 RPAREN

    where_clause ::= WHERE conditional_expression

    groupby_clause ::= GROUP BY groupby_item list_46

    groupby_item ::= single_valued_path_expression
           | IDENTIFICATION_VARIABLE

    having_clause ::= HAVING conditional_expression

    orderby_clause ::= ORDER BY orderby_item list_48

    orderby_item ::= state_field_path_expression opt_50

    subquery ::= simple_select_clause subquery_from_clause opt_51 opt_52 opt_53

    subquery_from_clause ::= FROM subselect_identification_variable_declaration list_55

    subselect_identification_variable_declaration ::= identification_variable_declaration
           | association_path_expression opt_56 IDENTIFICATION_VARIABLE
           | collection_member_declaration

    association_path_expression ::= collection_valued_path_expression
           | single_valued_association_path_expression

    simple_select_clause ::= SELECT opt_57 simple_select_expression

    simple_select_expression ::= single_valued_path_expression
           | aggregate_expression
           | IDENTIFICATION_VARIABLE

    conditional_expression ::= conditional_term list_59

    conditional_term ::= conditional_factor list_61

    conditional_factor ::= opt_62 conditional_primary

    conditional_primary ::= simple_cond_expression
           | LPAREN conditional_expression RPAREN

    simple_cond_expression ::= comparison_expression
           | between_expression
           | like_expression
           | in_expression
           | null_comparison_expression
           | empty_collection_comparison_expression
           | collection_member_expression
           | exists_expression

    between_expression ::= arithmetic_expression opt_63 BETWEEN arithmetic_expression AND arithmetic_expression
           | string_expression opt_64 BETWEEN string_expression AND string_expression
           | datetime_expression opt_65 BETWEEN datetime_expression AND datetime_expression

    in_expression ::= state_field_path_expression opt_66 IN LPAREN grp_67 RPAREN

    in_item ::= literal
           | input_parameter

    like_expression ::= string_expression opt_70 LIKE pattern_value opt_72

    null_comparison_expression ::= grp_73 IS opt_74 NULL_LITERAL

    empty_collection_comparison_expression ::= collection_valued_path_expression IS opt_75 EMPTY

    collection_member_expression ::= entity_expression opt_76 MEMBER opt_77 collection_valued_path_expression

    exists_expression ::= opt_78 EXISTS LPAREN subquery RPAREN

    all_or_any_expression ::= grp_79 LPAREN subquery RPAREN

    comparison_expression ::= string_expression comparison_operator grp_80
           | boolean_expression grp_81 grp_82
           | enum_expression grp_83 grp_84
           | datetime_expression comparison_operator grp_85
           | entity_expression grp_86 grp_87
           | arithmetic_expression comparison_operator grp_88

    comparison_operator ::= EQ
           | GT
           | GTEQ
           | LT
           | LTEQ
           | LTGT

    arithmetic_expression ::= simple_arithmetic_expression
           | LPAREN subquery RPAREN

    simple_arithmetic_expression ::= arithmetic_term list_91

    arithmetic_term ::= arithmetic_factor list_94

    arithmetic_factor ::= opt_96 arithmetic_primary

    arithmetic_primary ::= state_field_path_expression
           | numeric_literal
           | LPAREN simple_arithmetic_expression RPAREN
           | input_parameter
           | functions_returning_numerics
           | aggregate_expression

    string_expression ::= string_primary
           | LPAREN subquery RPAREN

    string_primary ::= state_field_path_expression
           | STRING
           | input_parameter
           | functions_returning_strings
           | aggregate_expression

    datetime_expression ::= datetime_primary
           | LPAREN subquery RPAREN

    datetime_primary ::= state_field_path_expression
           | input_parameter
           | functions_returning_datetime
           | aggregate_expression

    boolean_expression ::= boolean_primary
           | LPAREN subquery RPAREN

    boolean_primary ::= state_field_path_expression
           | boolean_literal_nt
           | input_parameter

    enum_expression ::= enum_primary
           | LPAREN subquery RPAREN

    enum_primary ::= state_field_path_expression
           | enum_literal
           | input_parameter

    entity_expression ::= single_valued_association_path_expression
           | simple_entity_expression

    simple_entity_expression ::= IDENTIFICATION_VARIABLE
           | input_parameter

    functions_returning_numerics ::= LENGTH LPAREN string_primary RPAREN
           | LOCATE LPAREN string_primary COMMA string_primary opt_98 RPAREN
           | ABS LPAREN simple_arithmetic_expression RPAREN
           | SQRT LPAREN simple_arithmetic_expression RPAREN
           | MOD LPAREN simple_arithmetic_expression COMMA simple_arithmetic_expression RPAREN
           | SIZE LPAREN collection_valued_path_expression RPAREN

    functions_returning_datetime ::= CURRENT_DATE
           | CURRENT_TIME
           | CURRENT_TIMESTAMP

    functions_returning_strings ::= CONCAT LPAREN string_primary COMMA string_primary RPAREN
           | SUBSTRING LPAREN string_primary COMMA simple_arithmetic_expression COMMA simple_arithmetic_expression RPAREN
           | TRIM LPAREN opt_102 string_primary RPAREN
           | LOWER LPAREN string_primary RPAREN
           | UPPER LPAREN string_primary RPAREN

    trim_specification ::= LEADING
           | TRAILING
           | BOTH

    numeric_literal ::= NUMBER

    pattern_value ::= STRING

    input_parameter ::= QUESTION NUMBER
           | COLON IDENTIFICATION_VARIABLE

    literal ::= STRING
           | NUMBER

    constructor_name ::= IDENTIFICATION_VARIABLE

    enum_literal ::= IDENTIFICATION_VARIABLE

    boolean_literal_nt ::= boolean_literal

    simple_state_field ::= IDENTIFICATION_VARIABLE

    embedded_class_state_field ::= IDENTIFICATION_VARIABLE

    single_valued_association_field ::= IDENTIFICATION_VARIABLE

    collection_valued_association_field ::= IDENTIFICATION_VARIABLE

    abstract_schema_name ::= IDENTIFICATION_VARIABLE

    opt_1 ::= where_clause
           | $empty

    opt_2 ::= groupby_clause
           | $empty

    opt_3 ::= having_clause
           | $empty

    opt_4 ::= orderby_clause
           | $empty

    opt_5 ::= where_clause
           | $empty

    opt_6 ::= where_clause
           | $empty

    grp_8 ::= identification_variable_declaration
           | collection_member_declaration

    grp_7 ::= COMMA grp_8

    list_9 ::= $empty
           | list_9 grp_7

    grp_10 ::= join
           | fetch_join

    list_11 ::= $empty
           | list_11 grp_10

    opt_12 ::= AS
           | $empty

    opt_13 ::= AS
           | $empty

    opt_15 ::= OUTER
           | $empty

    grp_14 ::= LEFT opt_15
           | INNER

    opt_16 ::= grp_14
           | $empty

    opt_17 ::= AS
           | $empty

    grp_18 ::= IDENTIFICATION_VARIABLE
           | single_valued_association_path_expression

    seq_19 ::= single_valued_association_field DOT

    list_20 ::= $empty
           | list_20 seq_19

    seq_21 ::= single_valued_association_field DOT

    list_22 ::= $empty
           | list_22 seq_21

    seq_23 ::= embedded_class_state_field DOT

    list_24 ::= $empty
           | list_24 seq_23

    opt_25 ::= AS
           | $empty

    seq_26 ::= opt_25 IDENTIFICATION_VARIABLE

    opt_27 ::= seq_26
           | $empty

    seq_28 ::= COMMA update_item

    list_29 ::= $empty
           | list_29 seq_28

    seq_30 ::= IDENTIFICATION_VARIABLE DOT

    opt_31 ::= seq_30
           | $empty

    grp_32 ::= state_field
           | single_valued_association_field

    opt_33 ::= AS
           | $empty

    seq_34 ::= opt_33 IDENTIFICATION_VARIABLE

    opt_35 ::= seq_34
           | $empty

    opt_36 ::= DISTINCT
           | $empty

    seq_37 ::= COMMA select_expression

    list_38 ::= $empty
           | list_38 seq_37

    seq_39 ::= COMMA constructor_item

    list_40 ::= $empty
           | list_40 seq_39

    grp_41 ::= AVG
           | MAX
           | MIN
           | SUM

    opt_42 ::= DISTINCT
           | $empty

    opt_43 ::= DISTINCT
           | $empty

    grp_44 ::= IDENTIFICATION_VARIABLE
           | state_field_path_expression
           | single_valued_association_path_expression

    seq_45 ::= COMMA groupby_item

    list_46 ::= $empty
           | list_46 seq_45

    seq_47 ::= COMMA orderby_item

    list_48 ::= $empty
           | list_48 seq_47

    grp_49 ::= ASC
           | DESC

    opt_50 ::= grp_49
           | $empty

    opt_51 ::= where_clause
           | $empty

    opt_52 ::= groupby_clause
           | $empty

    opt_53 ::= having_clause
           | $empty

    seq_54 ::= COMMA subselect_identification_variable_declaration

    list_55 ::= $empty
           | list_55 seq_54

    opt_56 ::= AS
           | $empty

    opt_57 ::= DISTINCT
           | $empty

    seq_58 ::= OR conditional_term

    list_59 ::= $empty
           | list_59 seq_58

    seq_60 ::= AND conditional_factor

    list_61 ::= $empty
           | list_61 seq_60

    opt_62 ::= NOT
           | $empty

    opt_63 ::= NOT
           | $empty

    opt_64 ::= NOT
           | $empty

    opt_65 ::= NOT
           | $empty

    opt_66 ::= NOT
           | $empty

    seq_68 ::= COMMA in_item

    list_69 ::= $empty
           | list_69 seq_68

    grp_67 ::= in_item list_69
           | subquery

    opt_70 ::= NOT
           | $empty

    seq_71 ::= ESCAPE STRING

    opt_72 ::= seq_71
           | $empty

    grp_73 ::= single_valued_path_expression
           | input_parameter

    opt_74 ::= NOT
           | $empty

    opt_75 ::= NOT
           | $empty

    opt_76 ::= NOT
           | $empty

    opt_77 ::= OF
           | $empty

    opt_78 ::= NOT
           | $empty

    grp_79 ::= ALL
           | ANY
           | SOME

    grp_80 ::= string_expression
           | all_or_any_expression

    grp_81 ::= EQ
           | LTGT

    grp_82 ::= boolean_expression
           | all_or_any_expression

    grp_83 ::= EQ
           | LTGT

    grp_84 ::= enum_expression
           | all_or_any_expression

    grp_85 ::= datetime_expression
           | all_or_any_expression

    grp_86 ::= EQ
           | LTGT

    grp_87 ::= entity_expression
           | all_or_any_expression

    grp_88 ::= arithmetic_expression
           | all_or_any_expression

    grp_90 ::= PLUS
           | MINUS

    grp_89 ::= grp_90 arithmetic_term

    list_91 ::= $empty
           | list_91 grp_89

    grp_93 ::= STAR
           | SLASH

    grp_92 ::= grp_93 arithmetic_factor

    list_94 ::= $empty
           | list_94 grp_92

    grp_95 ::= PLUS
           | MINUS

    opt_96 ::= grp_95
           | $empty

    seq_97 ::= COMMA simple_arithmetic_expression

    opt_98 ::= seq_97
           | $empty

    opt_99 ::= trim_specification
           | $empty

    opt_100 ::= TRIM_CHARACTER
           | $empty

    seq_101 ::= opt_99 opt_100 FROM

    opt_102 ::= seq_101
           | $empty

%End
