-- Rust Parser (LPG) — curated language subset
-- fn, let/mut, if/else, return, macro calls, expressions

%Options la=2
%Options fp=RustParser
%options package=lpg.grammars.rust
%options template=dtParserTemplateF.gi
%options import_terminals=RustLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    crate
%End

%Rules
    crate ::= item_list

    item_list ::= item
                | item_list item

    item ::= function

    function ::= FN IDENTIFIER LPAREN opt_params RPAREN block

    opt_params ::= $empty
                 | param_list

    param_list ::= param
                 | param_list COMMA param

    param ::= IDENTIFIER COLON type_ref
            | MUT IDENTIFIER COLON type_ref

    type_ref ::= IDENTIFIER

    block ::= LBRACE opt_stmt_list RBRACE

    opt_stmt_list ::= $empty
                    | stmt_list

    stmt_list ::= stmt
                | stmt_list stmt

    stmt ::= let_stmt
           | if_stmt
           | return_stmt
           | expr_stmt
           | block

    let_stmt ::= LET opt_mut IDENTIFIER EQ expr SEMI
               | LET opt_mut IDENTIFIER COLON type_ref EQ expr SEMI

    opt_mut ::= $empty
              | MUT

    if_stmt ::= IF expr block
              | IF expr block ELSE block
              | IF expr block ELSE if_stmt

    return_stmt ::= RETURN SEMI
                  | RETURN expr SEMI

    expr_stmt ::= expr SEMI

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
              | postfix BANG LPAREN opt_args RPAREN

    opt_args ::= $empty
               | arg_list

    arg_list ::= expr
               | arg_list COMMA expr

    primary ::= IDENTIFIER
              | NUMBER
              | STRING
              | TRUE
              | FALSE
              | LPAREN expr RPAREN
%End
