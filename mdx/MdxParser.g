-- AUTO-GENERATED from antlr/grammars-v4 mdx by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=MdxParser
%options package=lpg.grammars.mdx
%options template=dtParserTemplateF.gi
%options import_terminals=MdxLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    mdx_statement
%End

%Rules
    mdx_statement ::= SELECT FROM IDENTIFIER
           | select_statement

    select_statement ::= opt_2 SELECT opt_3 FROM cube_specification opt_5 opt_6
           | SELECT FROM IDENTIFIER

    formula_specification ::= list_7

    single_formula_specification ::= member_specification
           | set_specification

    set_specification ::= SET set_name AS grp_8

    member_specification ::= MEMBER member_name AS grp_9

    axis_specification_list ::= axis_specification list_13

    member_property_def_list ::= member_property_definition list_15

    member_name ::= compound_id

    member_property_definition ::= identifier EQ value_expression

    set_name ::= compound_id

    compound_id ::= identifier list_17

    axis_specification ::= opt_19 expression opt_20 ON axis_name

    axis_name ::= identifier

    dim_props ::= opt_21 PROPERTIES property_list

    property_list ::= property_ list_23

    property_ ::= compound_id

    cube_specification ::= cube_name

    cube_name ::= compound_id

    slicer_specification ::= expression

    cell_props ::= opt_24 PROPERTIES cell_property_list

    cell_property_list ::= cell_property list_26

    cell_property ::= mandatory_cell_property
           | provider_specific_cell_property

    mandatory_cell_property ::= CELL_ORDINAL
           | VALUE
           | FORMATTED_VALUE

    provider_specific_cell_property ::= identifier

    expression ::= value_expression list_28

    value_expression ::= term5 list_30

    value_xor_expression ::= XOR term5

    value_or_expression ::= OR term5

    term5 ::= term4 list_32

    term4 ::= NOT term4
           | term3

    term3 ::= term2 list_34

    term2 ::= term list_37

    term ::= factor list_40

    factor ::= MINUS value_expression_primary
           | PLUS value_expression_primary
           | value_expression_primary

    function_ ::= identifier LPAREN opt_41 RPAREN

    value_expression_primary ::= value_expression_primary0 list_44

    value_expression_primary0 ::= function_
           | seq_45
           | seq_47
           | case_expression
           | STRING
           | NUMBER
           | identifier

    exp_list ::= expression list_49

    case_expression ::= CASE opt_50 opt_51 opt_53 END

    when_list ::= when_clause list_54

    when_clause ::= WHEN value_expression THEN value_expression

    comp_op ::= EQ
           | NE
           | LT
           | GT
           | LE
           | GE

    identifier ::= grp_55

    unquoted_identifier ::= keyword
           | IDENTIFIER

    amp_quoted_identifier ::= AMP_QUOTED_ID

    quoted_identifier ::= QUOTED_ID

    keyword ::= DIMENSION
           | PROPERTIES

    seq_1 ::= WITH formula_specification

    opt_2 ::= seq_1 | $empty

    opt_3 ::= axis_specification_list | $empty

    seq_4 ::= WHERE slicer_specification

    opt_5 ::= seq_4 | $empty

    opt_6 ::= cell_props | $empty

    list_7 ::= single_formula_specification | list_7 single_formula_specification

    grp_8 ::= QUOTE expression QUOTE | expression

    grp_10 ::= QUOTE value_expression QUOTE | value_expression

    opt_11 ::= member_property_def_list | $empty

    grp_9 ::= grp_10 COMMA opt_11

    seq_12 ::= COMMA axis_specification

    list_13 ::= $empty | list_13 seq_12

    seq_14 ::= COMMA member_property_definition

    list_15 ::= $empty | list_15 seq_14

    seq_16 ::= DOT identifier

    list_17 ::= $empty | list_17 seq_16

    seq_18 ::= NON EMPTY

    opt_19 ::= seq_18 | $empty

    opt_20 ::= dim_props | $empty

    opt_21 ::= DIMENSION | $empty

    seq_22 ::= COMMA property_

    list_23 ::= $empty | list_23 seq_22

    opt_24 ::= CELL | $empty

    seq_25 ::= COMMA cell_property

    list_26 ::= $empty | list_26 seq_25

    seq_27 ::= COLON value_expression

    list_28 ::= $empty | list_28 seq_27

    grp_29 ::= value_xor_expression | value_or_expression

    list_30 ::= $empty | list_30 grp_29

    seq_31 ::= AND term4

    list_32 ::= $empty | list_32 seq_31

    seq_33 ::= comp_op term2

    list_34 ::= $empty | list_34 seq_33

    grp_36 ::= CONCAT | PLUS | MINUS

    grp_35 ::= grp_36 term

    list_37 ::= $empty | list_37 grp_35

    grp_39 ::= SOLIDUS | ASTERISK

    grp_38 ::= grp_39 factor

    list_40 ::= $empty | list_40 grp_38

    opt_41 ::= exp_list | $empty

    grp_43 ::= unquoted_identifier | quoted_identifier | amp_quoted_identifier | function_

    grp_42 ::= DOT grp_43

    list_44 ::= $empty | list_44 grp_42

    seq_45 ::= LPAREN exp_list RPAREN

    opt_46 ::= exp_list | $empty

    seq_47 ::= LBRACE opt_46 RBRACE

    seq_48 ::= COMMA expression

    list_49 ::= $empty | list_49 seq_48

    opt_50 ::= value_expression | $empty

    opt_51 ::= when_list | $empty

    seq_52 ::= ELSE value_expression

    opt_53 ::= seq_52 | $empty

    list_54 ::= $empty | list_54 when_clause

    grp_55 ::= unquoted_identifier | quoted_identifier

%End
