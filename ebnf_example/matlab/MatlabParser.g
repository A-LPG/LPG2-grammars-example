-- Matlab Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Ported from antlr/grammars-v4 matlab/matlab.g4 (statement/expression structure).

%Options la=2,ebnf
%Options fp=MatlabParser
%options package=lpg.grammars.matlab
%options template=dtParserTemplateF.gi
%options import_terminals=MatlabLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= statement_list?

    primary_expression ::= IDENTIFIER
                          | CONSTANT
                          | STRING_LITERAL
                          | LPAREN expression RPAREN
                          | LBRACKET RBRACKET
                          | LBRACKET array_list RBRACKET

    postfix_expression ::= primary_expression
                          | array_expression
                          | postfix_expression TRANSPOSE
                          | postfix_expression NCTRANSPOSE

    index_expression ::= COLON
                        | expression

    index_expression_list ::= index_expression (COMMA index_expression)*

    array_expression ::= IDENTIFIER LPAREN index_expression_list RPAREN

    unary_expression ::= postfix_expression
                        | unary_operator postfix_expression

    unary_operator ::= PLUS
                      | MINUS
                      | TILDE

    multiplicative_expression ::= unary_expression
                                 | multiplicative_expression STAR unary_expression
                                 | multiplicative_expression SLASH unary_expression
                                 | multiplicative_expression BACKSLASH unary_expression
                                 | multiplicative_expression CARET unary_expression
                                 | multiplicative_expression ARRAYMUL unary_expression
                                 | multiplicative_expression ARRAYDIV unary_expression
                                 | multiplicative_expression ARRAYRDIV unary_expression
                                 | multiplicative_expression ARRAYPOW unary_expression

    additive_expression ::= multiplicative_expression
                           | additive_expression PLUS multiplicative_expression
                           | additive_expression MINUS multiplicative_expression

    relational_expression ::= additive_expression
                             | relational_expression LT additive_expression
                             | relational_expression GT additive_expression
                             | relational_expression LE_OP additive_expression
                             | relational_expression GE_OP additive_expression

    equality_expression ::= relational_expression
                           | equality_expression EQ_OP relational_expression
                           | equality_expression NE_OP relational_expression

    and_expression ::= equality_expression (AMP equality_expression)*

    or_expression ::= and_expression (PIPE and_expression)*

    expression ::= or_expression (COLON or_expression)*

    assignment_expression ::= postfix_expression EQ expression

    eostmt ::= COMMA
              | SEMI
              | CR

    statement ::= global_statement
                 | clear_statement
                 | assignment_statement
                 | expression_statement
                 | selection_statement
                 | iteration_statement
                 | jump_statement

    statement_list ::= statement+

    identifier_list ::= IDENTIFIER+

    global_statement ::= GLOBAL identifier_list eostmt

    clear_statement ::= CLEAR identifier_list eostmt

    expression_statement ::= eostmt
                            | expression eostmt

    assignment_statement ::= assignment_expression eostmt

    array_element ::= expression
                     | expression_statement

    array_list ::= array_element
                  | array_list COMMA array_element
                  | array_list array_element

    selection_statement ::= IF expression statement_list END eostmt
                           | IF expression statement_list ELSE statement_list END eostmt
                           | IF expression statement_list elseif_clause END eostmt
                           | IF expression statement_list elseif_clause ELSE statement_list END eostmt

    elseif_clause ::= ELSEIF expression statement_list
                     | elseif_clause ELSEIF expression statement_list

    iteration_statement ::= WHILE expression statement_list END eostmt
                           | FOR IDENTIFIER EQ expression statement_list END eostmt
                           | FOR LPAREN IDENTIFIER EQ expression RPAREN statement_list END eostmt

    jump_statement ::= BREAK eostmt
                      | RETURN eostmt

    translation_unit ::= statement_list
                        | FUNCTION function_declare eostmt statement_list

    func_ident_list ::= IDENTIFIER (COMMA IDENTIFIER)*

    func_return_list ::= IDENTIFIER
                        | LBRACKET func_ident_list RBRACKET

    function_declare_lhs ::= IDENTIFIER
                            | IDENTIFIER LPAREN RPAREN
                            | IDENTIFIER LPAREN func_ident_list RPAREN

    function_declare ::= function_declare_lhs
                        | func_return_list EQ function_declare_lhs
%End
