-- PowerBuilder DataWindow Parser (LPG)
-- Structural subset of antlr/grammars-v4 powerbuilderdw/PowerBuilderDWParser.g4

%Options la=2
%Options fp=PowerbuilderdwParser
%options package=lpg.grammars.powerbuilderdw
%options template=dtParserTemplateF.gi
%options import_terminals=PowerbuilderdwLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    start_rule
%End

%Rules
    start_rule ::= opt_header datawindow_rules

    opt_header ::= $empty
                 | header_rule

    header_rule ::= RELEASE NUMBER SEMI
                  | export_headers RELEASE NUMBER SEMI

    export_headers ::= EXPORT_HEADER
                     | export_headers EXPORT_HEADER

    datawindow_rules ::= datawindow_property
                       | datawindow_rules datawindow_property

    datawindow_property ::= attribute_name LPAREN attr_list RPAREN
                          | TABLE LPAREN table_attrs RPAREN
                          | COLUMN LPAREN attr_list RPAREN

    table_attrs ::= table_attribute
                  | table_attrs table_attribute

    table_attribute ::= column_attribute
                      | retrieve_attribute

    column_attribute ::= COLUMN EQ LPAREN TYPE EQ dataTypeSub LPAREN NUMBER RPAREN attr_list RPAREN

    retrieve_attribute ::= RET_LIT
                         | RET_LIT ARGS_LIT
                         | RET_LIT SORT_LIT
                         | RET_LIT ARGS_LIT SORT_LIT

    attr_list ::= $empty
                | attr_list attr

    attr ::= attribute_name EQ attribute_value opt_comma
           | NUMBER opt_comma
           | DQUOTED_STRING opt_comma
           | boolean_atom opt_comma

    opt_comma ::= $empty
                | COMMA

    attribute_name ::= IDENTIFIER
                     | IDENTIFIER DOT IDENTIFIER
                     | TYPE
                     | UPDATE

    attribute_value ::= NUMBER
                      | DQUOTED_STRING
                      | QUOTED_STRING
                      | boolean_atom
                      | IDENTIFIER
                      | dataTypeSub
                      | dataTypeSub LPAREN NUMBER RPAREN

    dataTypeSub ::= CHAR | CHARACTER | STRING | INT | LONG | DECIMAL | DEC
                  | DOUBLE | REAL | DATE_TYPE | DATETIME | ANY | BLOB | BYTE
                  | IDENTIFIER

    boolean_atom ::= TRUE | FALSE
%End
