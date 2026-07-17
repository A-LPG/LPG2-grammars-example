-- JavaScript Parser (LPG) — curated language subset
-- Statements: var/let/const, function, if/else, return, blocks, expressions
-- Expressions: call, member, index, binary ops, literals

%Options la=2
%Options fp=JavascriptParser
%options package=lpg.grammars.javascript.javascript
%options template=dtParserTemplateF.gi
%options import_terminals=JavascriptLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= stmt_list
              | $empty

    stmt_list ::= stmt
                | stmt_list stmt

    stmt ::= var_stmt
           | function_decl
           | if_stmt
           | return_stmt
           | block
           | expr_stmt

    block ::= LBRACE opt_stmt_list RBRACE

    opt_stmt_list ::= $empty
                    | stmt_list

    var_stmt ::= var_kw binding_list SEMI

    var_kw ::= VAR
             | LET
             | CONST

    binding_list ::= binding
                   | binding_list COMMA binding

    binding ::= IDENTIFIER
              | IDENTIFIER EQ expr

    function_decl ::= FUNCTION IDENTIFIER LPAREN opt_params RPAREN block

    opt_params ::= $empty
                 | param_list

    param_list ::= IDENTIFIER
                 | param_list COMMA IDENTIFIER

    -- require blocks in if to avoid dangling-else
    if_stmt ::= IF LPAREN expr RPAREN block
              | IF LPAREN expr RPAREN block ELSE block
              | IF LPAREN expr RPAREN block ELSE if_stmt

    return_stmt ::= RETURN SEMI
                  | RETURN expr SEMI

    expr_stmt ::= expr SEMI

    expr ::= assignment

    assignment ::= equality
                 | equality EQ assignment

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
