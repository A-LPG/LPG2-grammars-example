-- Python3 Parser (LPG) — curated subset (flat; no INDENT/DEDENT).
-- Statement separators: NEWLINE and/or ';'. Compound suites are same-line only.

%Options la=2
%Options fp=PythonPython3Parser
%options package=lpg.grammars.python.python3
%options template=dtParserTemplateF.gi
%options import_terminals=PythonPython3Lexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_input
%End

%Rules
    file_input ::= opt_newlines
                 | opt_newlines stmt_seq opt_newlines

    opt_newlines ::= $empty
                   | newlines

    newlines ::= NEWLINE
               | newlines NEWLINE

    stmt_seq ::= stmt
               | stmt_seq newlines stmt

    stmt ::= simple_stmt
           | compound_stmt

    simple_stmt ::= small_stmt
                  | small_stmt SEMI
                  | small_stmt SEMI simple_stmt

    small_stmt ::= expr_stmt
                 | return_stmt
                 | pass_stmt

    expr_stmt ::= test EQ test
                | test

    return_stmt ::= RETURN
                  | RETURN test

    pass_stmt ::= PASS

    compound_stmt ::= if_stmt
                    | funcdef

    if_stmt ::= IF test COLON suite
              | IF test COLON suite ELSE COLON suite

    funcdef ::= DEF IDENTIFIER LPAREN opt_params RPAREN COLON suite

    opt_params ::= $empty
                 | param_list

    param_list ::= IDENTIFIER
                 | param_list COMMA IDENTIFIER

    -- Same-line suite only (no indent/dedent); may nest compound on one line
    suite ::= simple_stmt
            | compound_stmt

    test ::= or_test

    or_test ::= and_test
              | or_test OR and_test

    and_test ::= not_test
               | and_test AND not_test

    not_test ::= NOT not_test
               | comparison

    comparison ::= expr
                 | expr LANGLE expr
                 | expr RANGLE expr
                 | expr EQEQ expr

    expr ::= term
           | expr PLUS term
           | expr MINUS term

    term ::= factor
           | term STAR factor
           | term SLASH factor

    factor ::= PLUS factor
             | MINUS factor
             | atom_expr

    atom_expr ::= atom trailer_list

    trailer_list ::= $empty
                   | trailer_list trailer

    trailer ::= LPAREN opt_arglist RPAREN
              | LBRACKET test RBRACKET
              | DOT IDENTIFIER

    opt_arglist ::= $empty
                  | arglist

    arglist ::= test
              | arglist COMMA test

    atom ::= IDENTIFIER
           | NUMBER
           | STRING
           | TRUE
           | FALSE
           | NONE
           | LPAREN test RPAREN
%End
