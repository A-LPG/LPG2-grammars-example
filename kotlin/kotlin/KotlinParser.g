-- Kotlin Parser (LPG) — curated language subset
-- fun, val/var, if/else, return, expressions (no full Kotlin)

%Options la=2
%Options fp=KotlinParser
%options package=lpg.grammars.kotlin.kotlin
%options template=dtParserTemplateF.gi
%options import_terminals=KotlinLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    kotlin_file
%End

%Rules
    kotlin_file ::= decl_list
                  | $empty

    decl_list ::= decl
                | decl_list decl

    decl ::= function
           | property

    function ::= FUN IDENTIFIER LPAREN opt_params RPAREN opt_ret_type block

    opt_params ::= $empty
                 | param_list

    param_list ::= param
                 | param_list COMMA param

    param ::= IDENTIFIER COLON type_ref

    opt_ret_type ::= $empty
                   | COLON type_ref

    type_ref ::= IDENTIFIER

    property ::= VAL IDENTIFIER EQ expr
               | VAR IDENTIFIER EQ expr
               | VAL IDENTIFIER COLON type_ref EQ expr
               | VAR IDENTIFIER COLON type_ref EQ expr

    block ::= LBRACE opt_stmt_list RBRACE

    opt_stmt_list ::= $empty
                    | stmt_list

    stmt_list ::= stmt
                | stmt_list stmt

    stmt ::= property
           | if_stmt
           | return_stmt
           | block
           | expr_stmt

    if_stmt ::= IF LPAREN expr RPAREN block
              | IF LPAREN expr RPAREN block ELSE block
              | IF LPAREN expr RPAREN block ELSE if_stmt

    return_stmt ::= RETURN
                  | RETURN expr

    expr_stmt ::= expr

    expr ::= assignment

    assignment ::= equality
                 | IDENTIFIER EQ assignment

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

    primary ::= IDENTIFIER
              | NUMBER
              | STRING
              | TRUE
              | FALSE
              | NULLLITERAL
              | LPAREN expr RPAREN
%End
