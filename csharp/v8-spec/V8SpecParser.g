-- C# Parser (LPG) — curated v8-spec language subset
-- class, fields, methods, if/else, return, expressions

%Options la=2
%Options fp=V8SpecParser
%options package=lpg.grammars.csharp.v8_spec
%options template=dtParserTemplateF.gi
%options import_terminals=V8SpecLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    compilation_unit
%End

%Rules
    compilation_unit ::= class_decl
                       | compilation_unit class_decl

    class_decl ::= opt_mods CLASS IDENTIFIER LBRACE opt_member_list RBRACE

    opt_mods ::= $empty
               | PUBLIC
               | PUBLIC STATIC
               | STATIC

    opt_member_list ::= $empty
                      | member_list

    member_list ::= member
                  | member_list member

    member ::= field
             | method

    field ::= type_spec IDENTIFIER SEMI
            | type_spec IDENTIFIER EQ expr SEMI
            | opt_mods type_spec IDENTIFIER SEMI
            | opt_mods type_spec IDENTIFIER EQ expr SEMI

    method ::= type_spec IDENTIFIER LPAREN opt_params RPAREN block
             | opt_mods type_spec IDENTIFIER LPAREN opt_params RPAREN block

    type_spec ::= INT
                | VOID
                | STRING_KW
                | BOOL
                | IDENTIFIER

    opt_params ::= $empty
                 | param_list

    param_list ::= type_spec IDENTIFIER
                 | param_list COMMA type_spec IDENTIFIER

    block ::= LBRACE opt_stmt_list RBRACE

    opt_stmt_list ::= $empty
                    | stmt_list

    stmt_list ::= stmt
                | stmt_list stmt

    stmt ::= local_decl
           | if_stmt
           | return_stmt
           | block
           | expr_stmt

    local_decl ::= type_spec IDENTIFIER SEMI
                 | type_spec IDENTIFIER EQ expr SEMI

    if_stmt ::= IF LPAREN expr RPAREN block
              | IF LPAREN expr RPAREN block ELSE block
              | IF LPAREN expr RPAREN block ELSE if_stmt

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
              | NEW type_spec LPAREN opt_args RPAREN
              | LPAREN expr RPAREN
%End
