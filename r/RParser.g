-- R parser — structural port of grammars-v4 r/R.g4 (precedence layers)

%Options la=2
%Options fp=RParser
%options package=lpg.grammars.r
%options template=dtParserTemplateF.gi
%options import_terminals=RLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= $empty
           | prog_items

    prog_items ::= prog_item
                 | prog_items prog_item

    prog_item ::= separators
                | expr

    separators ::= SEMICOLON
                 | NL
                 | separators SEMICOLON
                 | separators NL

    expr ::= assign_expr

    assign_expr ::= or_expr ASSIGN assign_expr
                  | or_expr EQUALS assign_expr
                  | or_expr

    or_expr ::= or_expr OR and_expr
              | and_expr

    and_expr ::= and_expr AND not_expr
               | not_expr

    not_expr ::= NOT not_expr
               | compare_expr

    compare_expr ::= compare_expr COMPARATOR add_expr
                   | add_expr

    add_expr ::= add_expr ADD_SUB mul_expr
               | mul_expr

    mul_expr ::= mul_expr MULT_DIV user_expr
               | user_expr

    user_expr ::= user_expr USER_OP range_expr
                | range_expr

    range_expr ::= range_expr RANGE_OPERATOR prefix_expr
                 | prefix_expr

    prefix_expr ::= ADD_SUB prefix_expr
                  | power_expr

    power_expr ::= access_expr CARET power_expr
                 | formula_expr

    formula_expr ::= TILDE formula_expr
                   | formula_expr TILDE access_expr
                   | access_expr

    access_expr ::= list_access
                  | array_access
                  | namespace_access
                  | component_access
                  | function_call
                  | call_or_primary

    list_access ::= access_expr LIST_ACCESS_START sublist LIST_ACCESS_END
    array_access ::= access_expr ARRAY_ACCESS_START sublist ARRAY_ACCESS_END
    namespace_access ::= access_expr NAMESPACE_ACCESS access_expr
    component_access ::= access_expr COMPONENT_ACCESS access_expr
    function_call ::= access_expr PAREN_L PAREN_R
                    | access_expr PAREN_L sublist PAREN_R

    call_or_primary ::= function_definition
                      | compound_statement
                      | if_expr
                      | if_else_expr
                      | for_expr
                      | while_expr
                      | repeat_expr
                      | help_expr
                      | NEXT
                      | BREAK
                      | primary

    function_definition ::= FUNCTION PAREN_L PAREN_R expr
                          | FUNCTION PAREN_L formlist PAREN_R expr
    compound_statement ::= CURLY_L exprlist CURLY_R
    if_expr ::= IF PAREN_L expr PAREN_R expr
    if_else_expr ::= IF PAREN_L expr PAREN_R expr ELSE expr
                   | IF PAREN_L expr PAREN_R expr nl_list ELSE expr
    for_expr ::= FOR PAREN_L ID IN expr PAREN_R expr
    while_expr ::= WHILE PAREN_L expr PAREN_R expr
    repeat_expr ::= REPEAT expr
    help_expr ::= HELP expr

    primary ::= PAREN_L expr PAREN_R
              | ID
              | STRING
              | NUMBER
              | NULL
              | NA
              | INF
              | NAN
              | TRUE
              | FALSE
              | nl_list expr

    nl_list ::= NL
              | nl_list NL

    exprlist ::= expr
               | exprlist SEMICOLON
               | exprlist NL
               | exprlist SEMICOLON expr
               | exprlist NL expr

    formlist ::= form
               | formlist COMMA form

    form ::= ID
           | ID EQUALS expr
           | ELLIPSIS
           | DOT

    sublist ::= sub
              | sublist COMMA sub

    sub ::= expr
          | ID EQUALS
          | ID EQUALS expr
          | STRING EQUALS
          | STRING EQUALS expr
          | NULL EQUALS
          | NULL EQUALS expr
          | ELLIPSIS
          | DOT
          | $empty
%End
