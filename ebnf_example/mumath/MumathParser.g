-- MuMath Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
%Options la=2,ebnf
%Options fp=MumathParser
%options package=lpg.grammars.mumath
%options template=dtParserTemplateF.gi
%options import_terminals=MumathLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules
    program ::= stmt_top_list

    stmt_top_list ::= (stmt_top_list stmt_top)?

    stmt_top ::= top_item SEMI
                | top_item DOLLAR

    top_item ::= functionDefinition
                | assignment
                | functionDesignator

    assignment ::= id_colon_list expression

    id_colon_list ::= ID COLON
                     | id_colon_list ID COLON

    list_ ::= LPAREN RPAREN
             | LPAREN ID id_list_tail RPAREN

    id_list_tail ::= (id_list_tail COMMA ID)?

    functionDefinition ::= FUNCTION ID list_ COMMA statments opt_comma ENDFUN

    opt_comma ::= COMMA?

    actualParameter ::= expression
                       | assignment

    statments ::= stmt_core stmt_more

    stmt_more ::= (COMMA statments)?

    stmt_core ::= loop
                 | when
                 | block
                 | assignment
                 | expression
                 | functionDesignator

    block ::= BLOCK statments COMMA ENDBLOCK

    loop ::= LOOP statments opt_comma ENDLOOP

    when ::= WHEN expression opt_comma EXIT COMMA statments opt_comma EXIT

    expression ::= simpleExpression rel_tail

    rel_tail ::= (rel_tail relationalOperator simpleExpression)?

    relationalOperator ::= equal
                          | NOT_EQUAL
                          | LT
                          | LE
                          | GE
                          | GT
                          | EQUATION

    equal ::= EQF
             | EQC

    simpleExpression ::= opt_minus term add_tail

    opt_minus ::= MINUS?

    add_tail ::= (add_tail addingOperator term)?

    addingOperator ::= PLUS
                      | MINUS
                      | OR

    term ::= factor mul_tail

    mul_tail ::= (mul_tail multiplyingOperator factor)?

    multiplyingOperator ::= STAR
                           | SLASH
                           | MOD
                           | AND
                           | POWER

    factor ::= ID
              | constant
              | LPAREN expression RPAREN
              | functionDesignator
              | NOT factor

    constant ::= NUMBER
                | STRING
                | QUOTE ID
                | QUOTE STRING

    functionDesignator ::= ID LPAREN opt_args RPAREN

    opt_args ::= (actualParameter arg_tail)?

    arg_tail ::= (arg_tail COMMA actualParameter)?
%End
