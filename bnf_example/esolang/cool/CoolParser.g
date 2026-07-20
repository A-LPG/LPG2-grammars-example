-- CoolParser (LPG)
%Options la=2
%Options fp=CoolParser
%options package=lpg.grammars.esolang.cool
%options template=dtParserTemplateF.gi
%options import_terminals=CoolLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules

    program ::= class_list
    class_list ::= classDefine SEMI | class_list classDefine SEMI

    classDefine ::= CLASS TYPEID opt_inherits LBRACE feature_list RBRACE
    opt_inherits ::= $empty | INHERITS TYPEID
    feature_list ::= $empty | feature_list feature SEMI

    feature ::= OBJECTID LPAREN opt_formals RPAREN COLON TYPEID LBRACE expression RBRACE
              | OBJECTID COLON TYPEID opt_assign
    opt_formals ::= $empty | formals
    formals ::= formal | formals COMMA formal
    formal ::= OBJECTID COLON TYPEID
    opt_assign ::= $empty | ASSIGNMENT expression

    expression ::= assign_expr

    assign_expr ::= OBJECTID ASSIGNMENT assign_expr
                  | not_expr

    not_expr ::= NOT not_expr
               | rel_expr

    rel_expr ::= add_expr
               | add_expr LESS_THAN add_expr
               | add_expr LESS_EQUAL add_expr
               | add_expr EQUAL add_expr

    add_expr ::= mul_expr
               | add_expr ADD mul_expr
               | add_expr MINUS mul_expr

    mul_expr ::= unary_expr
               | mul_expr MULTIPLY unary_expr
               | mul_expr DIVISION unary_expr

    unary_expr ::= INTEGER_NEGATIVE unary_expr
                 | ISVOID unary_expr
                 | dispatch_expr

    dispatch_expr ::= primary
                    | dispatch_expr opt_at DOT OBJECTID LPAREN opt_args RPAREN
                    | OBJECTID LPAREN opt_args RPAREN

    opt_at ::= $empty | AT TYPEID
    opt_args ::= $empty | args
    args ::= expression | args COMMA expression

    primary ::= IF expression THEN expression ELSE expression FI
              | WHILE expression LOOP expression POOL
              | LBRACE expr_semi_list RBRACE
              | LET let_bindings IN expression
              | CASE expression OF case_branches ESAC
              | NEW TYPEID
              | LPAREN expression RPAREN
              | OBJECTID
              | INT
              | STRING
              | TRUE
              | FALSE

    expr_semi_list ::= expression SEMI | expr_semi_list expression SEMI

    let_bindings ::= let_bind | let_bindings COMMA let_bind
    let_bind ::= OBJECTID COLON TYPEID opt_assign

    case_branches ::= case_branch | case_branches case_branch
    case_branch ::= OBJECTID COLON TYPEID CASE_ARROW expression SEMI

%End
