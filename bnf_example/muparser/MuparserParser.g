-- MuParser Parser (LPG)
%Options la=2
%Options fp=MuparserParser
%options package=lpg.grammars.muparser
%options template=dtParserTemplateF.gi
%options import_terminals=MuparserLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    prog
%End
%Rules
    prog ::= expr_list
    expr_list ::= expr | expr_list expr

    expr ::= assign
    assign ::= or_expr
             | ID ASSIGN assign
             | ID ASSIGNADD assign
             | ID ASSIGNSUB assign
             | ID ASSIGNMUL assign
             | ID ASSIGNDIV assign

    or_expr ::= and_expr | or_expr OR and_expr
    and_expr ::= eq_expr | and_expr AND eq_expr
    eq_expr ::= rel_expr | eq_expr EQ rel_expr | eq_expr NEQ rel_expr
    rel_expr ::= add_expr
               | rel_expr LT add_expr | rel_expr GT add_expr
               | rel_expr LTEQ add_expr | rel_expr GTEQ add_expr
    add_expr ::= mul_expr | add_expr ADD mul_expr | add_expr SUB mul_expr
    mul_expr ::= unary | mul_expr MUL unary | mul_expr DIV unary
    unary ::= pow | SUB unary | NOT unary
    pow ::= ite | ite POW unary
    ite ::= primary | primary QUESTION expr COLON expr

    primary ::= atom
              | FUNCTION OPAR expr CPAR
              | FUNCTIONMULTI OPAR expr_args CPAR
              | OPAR expr CPAR

    expr_args ::= expr | expr_args COMMA expr

    atom ::= INT | FLOAT | TRUE | FALSE | E | PI | ID
%End
