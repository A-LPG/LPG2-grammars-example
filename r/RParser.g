-- R Parser (LPG) — practical subset covering grammars-v4 examples
-- Newlines are skipped in the lexer (RFilter-like), so 'else' binds cleanly.
%Options la=4
%Options fp=RParser
%options package=lpg.grammars.r
%options template=dtParserTemplateF.gi
%options import_terminals=RLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    prog
%End
%Rules
    prog ::= item_list
    item_list ::= %Empty | item_list item
    item ::= SEMICOLON | expr

    expr ::= assign_expr
    assign_expr ::= tilde_expr
                  | tilde_expr ASSIGN_LEFT assign_expr
                  | tilde_expr ASSIGN_LEFT2 assign_expr
                  | tilde_expr ASSIGN_RIGHT assign_expr
                  | tilde_expr ASSIGN_RIGHT2 assign_expr
                  | tilde_expr ASSIGN_EQ assign_expr
                  | tilde_expr EQUALS assign_expr

    tilde_expr ::= or_expr
                 | TILDE or_expr
                 | or_expr TILDE or_expr

    or_expr ::= and_expr | or_expr OR and_expr | or_expr OR2 and_expr
    and_expr ::= not_expr | and_expr AND not_expr | and_expr AND2 not_expr
    not_expr ::= cmp_expr | NOT not_expr
    cmp_expr ::= add_expr
               | cmp_expr LT add_expr | cmp_expr GT add_expr
               | cmp_expr LE add_expr | cmp_expr GE add_expr
               | cmp_expr EQ add_expr | cmp_expr NE add_expr
    add_expr ::= mul_expr | add_expr PLUS mul_expr | add_expr MINUS mul_expr
    mul_expr ::= user_expr | mul_expr STAR user_expr | mul_expr SLASH user_expr
    user_expr ::= range_expr | user_expr USER_OP range_expr
    range_expr ::= power_expr | range_expr COLON power_expr
    power_expr ::= unary_expr | unary_expr CARET power_expr
    unary_expr ::= postfix | PLUS unary_expr | MINUS unary_expr

    postfix ::= primary postfix_tail
    postfix_tail ::= %Empty
                   | postfix_tail LIST_LB opt_sublist LIST_RB
                   | postfix_tail LB opt_sublist RB
                   | postfix_tail LPAREN opt_sublist RPAREN
                   | postfix_tail NS3 primary
                   | postfix_tail NS2 primary
                   | postfix_tail COMPONENT_DOLLAR primary
                   | postfix_tail COMPONENT_AT primary

    primary ::= KW_FUNCTION LPAREN opt_formlist RPAREN expr
              | KW_IF LPAREN expr RPAREN expr opt_else
              | KW_FOR LPAREN ID KW_IN expr RPAREN expr
              | KW_WHILE LPAREN expr RPAREN expr
              | KW_REPEAT expr
              | HELP expr
              | KW_NEXT
              | KW_BREAK
              | LBRACE item_list RBRACE
              | LPAREN expr RPAREN
              | atom

    opt_else ::= %Empty | KW_ELSE expr

    opt_formlist ::= %Empty | formlist
    formlist ::= form | formlist COMMA form
    form ::= ID | ID EQUALS expr | ELLIPSIS | DOT

    opt_sublist ::= %Empty | sublist
    sublist ::= sub | sublist COMMA opt_sub
    opt_sub ::= %Empty | sub
    sub ::= expr
          | ID EQUALS
          | ID EQUALS expr
          | STRING EQUALS
          | STRING EQUALS expr
          | KW_NULL EQUALS
          | KW_NULL EQUALS expr
          | ELLIPSIS
          | DOT

    atom ::= ID | STRING | HEX | INT | FLOAT | COMPLEX
           | KW_NULL | KW_NA | KW_INF | KW_NAN | KW_TRUE | KW_FALSE
%End
