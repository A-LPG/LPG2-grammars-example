-- Python 2.7.18 Parser (LPG) — flat statements only (Wave C representative).

%Options la=2
%Options fp=PythonParser
%options package=lpg.grammars.python.python2_7_18
%options template=dtParserTemplateF.gi
%options import_terminals=PythonLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_input
%End

%Rules
    file_input ::= stmt_list

    stmt_list ::= $empty
                | stmt_list stmt

    stmt ::= simple_stmt
           | def_stmt

    simple_stmt ::= small_stmt

    small_stmt ::= expr_stmt
                 | import_stmt
                 | print_stmt
                 | return_stmt

    expr_stmt ::= testlist opt_assign

    opt_assign ::= $empty
                 | EQ testlist

    import_stmt ::= IMPORT dotted_name

    dotted_name ::= IDENTIFIER
                  | dotted_name DOT IDENTIFIER

    print_stmt ::= PRINT testlist

    return_stmt ::= RETURN opt_testlist

    opt_testlist ::= $empty
                   | testlist

    def_stmt ::= DEF IDENTIFIER LPAREN opt_paramlist RPAREN COLON simple_stmt

    opt_paramlist ::= $empty
                    | paramlist

    paramlist ::= IDENTIFIER
                | paramlist COMMA IDENTIFIER

    testlist ::= test
               | testlist COMMA test

    test ::= expr

    expr ::= term
           | expr PLUS term
           | expr MINUS term

    term ::= atom
           | term trailer

    trailer ::= LPAREN opt_arglist RPAREN
              | DOT IDENTIFIER

    opt_arglist ::= $empty
                  | testlist

    atom ::= IDENTIFIER
           | NUMBER
           | STRING
           | LPAREN test RPAREN
%End
