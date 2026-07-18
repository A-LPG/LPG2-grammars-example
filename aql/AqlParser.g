-- AQL Parser (LPG) — structural subset of grammars-v4 aql/ArangoDbParser.g4
-- Nonterminals: arangodb_query / data_access_query / for_op / return_expr /
-- filter / sort / limit / let_list / expr (language_subset; real_g4_port).

%Options la=3
%Options fp=AqlParser
%options package=lpg.grammars.aql
%options template=dtParserTemplateF.gi
%options import_terminals=AqlLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    arangodb_query
%End

%Rules
    arangodb_query ::= data_query

    data_query ::= data_access_query
                 | data_modification_query

    -- FOR ... RETURN  (core access shape)
    data_access_query ::= for_op_list return_expr
                        | return_expr

    for_op_list ::= for_op
                  | for_op_list for_op

    for_op ::= for_in opt_filter_list opt_sort opt_limit

    for_in ::= opt_let_list FOR IDENTIFIER IN expr opt_let_list

    opt_filter_list ::= $empty
                      | filter_list

    filter_list ::= filter
                  | filter_list filter

    filter ::= opt_let_list FILTER expr opt_let_list

    opt_sort ::= $empty
               | sort

    sort ::= opt_let_list SORT sort_list opt_let_list

    sort_list ::= expr opt_asc_desc
                | sort_list COMMA expr opt_asc_desc

    opt_asc_desc ::= $empty
                   | ASC
                   | DESC

    opt_limit ::= $empty
                | limit

    limit ::= opt_let_list LIMIT NUMBER opt_let_list
            | opt_let_list LIMIT NUMBER COMMA NUMBER opt_let_list

    opt_let_list ::= $empty
                   | let_list

    let_list ::= let_binding
               | let_list let_binding

    let_binding ::= LET IDENTIFIER ASSIGN expr

    return_expr ::= opt_let_list RETURN expr
                  | opt_let_list RETURN DISTINCT expr

    -- INSERT / UPDATE / REMOVE (simple forms)
    data_modification_query ::= for_op_list mod_clause opt_return
                              | mod_clause opt_return

    mod_clause ::= INSERT expr IN IDENTIFIER
                 | INSERT expr INTO IDENTIFIER
                 | UPDATE expr WITH expr IN IDENTIFIER
                 | UPDATE expr IN IDENTIFIER
                 | REMOVE expr IN IDENTIFIER

    opt_return ::= $empty
                 | return_expr

    -- Expression layering (subset of g4 expr)
    expr ::= or_expr

    or_expr ::= and_expr
              | or_expr OR and_expr
              | or_expr OR_OP and_expr

    and_expr ::= not_expr
               | and_expr AND not_expr
               | and_expr AND_OP not_expr

    not_expr ::= NOT not_expr
               | BANG not_expr
               | compare_expr

    compare_expr ::= range_expr
                   | range_expr EQEQ range_expr
                   | range_expr NE range_expr
                   | range_expr LT range_expr
                   | range_expr GT range_expr
                   | range_expr LE range_expr
                   | range_expr GE range_expr
                   | range_expr IN range_expr
                   | range_expr NOT IN range_expr
                   | range_expr LIKE range_expr

    range_expr ::= add_expr
                 | add_expr RANGE add_expr

    add_expr ::= mult_expr
               | add_expr PLUS mult_expr
               | add_expr MINUS mult_expr

    mult_expr ::= unary_expr
                | mult_expr STAR unary_expr
                | mult_expr SLASH unary_expr
                | mult_expr PERCENT unary_expr

    unary_expr ::= PLUS postfix_expr
                 | MINUS postfix_expr
                 | postfix_expr

    postfix_expr ::= primary
                   | postfix_expr DOT IDENTIFIER
                   | postfix_expr LBRACKET expr RBRACKET
                   | postfix_expr LBRACKET STAR RBRACKET
                   | postfix_expr LPAREN opt_arg_list RPAREN

    opt_arg_list ::= $empty
                   | arg_list

    arg_list ::= expr
               | arg_list COMMA expr

    primary ::= literal
              | IDENTIFIER
              | NEW
              | OLD
              | LPAREN expr RPAREN
              | LPAREN data_access_query RPAREN

    literal ::= NUMBER
              | STRING
              | TRUE
              | FALSE
              | NULL
              | array_literal
              | object_literal

    array_literal ::= LBRACKET RBRACKET
                    | LBRACKET expr_list RBRACKET

    expr_list ::= expr
                | expr_list COMMA expr

    object_literal ::= LBRACE RBRACE
                     | LBRACE pair_list RBRACE
                     | LBRACE id_list RBRACE

    pair_list ::= pair
                | pair_list COMMA pair

    pair ::= STRING COLON expr
           | IDENTIFIER COLON expr

    id_list ::= IDENTIFIER
              | id_list COMMA IDENTIFIER
%End
