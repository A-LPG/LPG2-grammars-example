-- PHP Parser (LPG) — curated language subset
-- <?php open, $vars, echo, function, if/else, return, expressions

%Options la=2
%Options fp=PhpParser
%options package=lpg.grammars.php
%options template=dtParserTemplateF.gi
%options import_terminals=PhpLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= PHP_OPEN opt_stmt_list

    opt_stmt_list ::= $empty
                    | stmt_list

    stmt_list ::= stmt
                | stmt_list stmt

    stmt ::= assign_stmt
           | echo_stmt
           | function_decl
           | if_stmt
           | return_stmt
           | block
           | expr_stmt

    block ::= LBRACE opt_stmt_list RBRACE

    assign_stmt ::= VARIABLE EQ expr SEMI

    echo_stmt ::= ECHO expr SEMI

    function_decl ::= FUNCTION IDENTIFIER LPAREN opt_params RPAREN block

    opt_params ::= $empty
                 | param_list

    param_list ::= VARIABLE
                 | param_list COMMA VARIABLE

    if_stmt ::= IF LPAREN expr RPAREN block
              | IF LPAREN expr RPAREN block ELSE block
              | IF LPAREN expr RPAREN block ELSE if_stmt

    return_stmt ::= RETURN SEMI
                  | RETURN expr SEMI

    expr_stmt ::= expr SEMI

    expr ::= assignment

    assignment ::= equality
                 | VARIABLE EQ assignment

    equality ::= relational
               | equality EQ EQ relational
               | equality BANG EQ relational

    relational ::= additive
                 | relational LANGLE additive
                 | relational RANGLE additive

    additive ::= multiplicative
               | additive PLUS multiplicative
               | additive MINUS multiplicative

    multiplicative ::= unary
                     | multiplicative STAR unary
                     | multiplicative SLASH unary

    unary ::= PLUS unary
            | MINUS unary
            | BANG unary
            | postfix

    postfix ::= primary
              | postfix DOT IDENTIFIER
              | postfix LPAREN opt_args RPAREN
              | postfix LBRACKET expr RBRACKET

    opt_args ::= $empty
               | arg_list

    arg_list ::= expr
               | arg_list COMMA expr

    primary ::= VARIABLE
              | IDENTIFIER
              | NUMBER
              | STRING
              | TRUE
              | FALSE
              | NULLLITERAL
              | LPAREN expr RPAREN
%End
