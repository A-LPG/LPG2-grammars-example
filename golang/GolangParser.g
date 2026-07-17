-- Go Parser (LPG) — curated language subset
-- package, func, var, :=, if/else, return, expressions (no full Go)

%Options la=2
%Options fp=GolangParser
%options package=lpg.grammars.golang
%options template=dtParserTemplateF.gi
%options import_terminals=GolangLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    source_file
%End

%Rules
    source_file ::= PACKAGE IDENTIFIER decl_list

    decl_list ::= decl
                | decl_list decl

    decl ::= func_decl
           | var_decl

    func_decl ::= FUNC IDENTIFIER LPAREN opt_params RPAREN opt_result block

    opt_params ::= $empty
                 | param_list

    param_list ::= param
                 | param_list COMMA param

    param ::= IDENTIFIER IDENTIFIER

    opt_result ::= $empty
                 | IDENTIFIER

    var_decl ::= VAR IDENTIFIER EQ expr
               | VAR IDENTIFIER IDENTIFIER
               | VAR IDENTIFIER IDENTIFIER EQ expr

    block ::= LBRACE opt_stmt_list RBRACE

    opt_stmt_list ::= $empty
                    | stmt_list

    stmt_list ::= stmt
                | stmt_list stmt

    stmt ::= short_var
           | var_decl
           | if_stmt
           | return_stmt
           | block
           | expr_stmt

    short_var ::= IDENTIFIER COLONEQ expr

    if_stmt ::= IF expr block
              | IF expr block ELSE block
              | IF expr block ELSE if_stmt

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
            | STAR unary
            | AMP unary
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
              | NIL
              | LPAREN expr RPAREN
%End
