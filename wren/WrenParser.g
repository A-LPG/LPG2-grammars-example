-- Wren subset: script of statements / class / var / if
%Options la=2
%Options fp=WrenParser
%options package=lpg.grammars.wren
%options template=dtParserTemplateF.gi
%options import_terminals=WrenLexer.gi
%options automatic_ast=none
%Eof
    EOF_TOKEN
%End
%Start
    script
%End
%Rules
    script ::= stmt_list
    stmt_list ::= $empty | stmt_list statement

    statement ::= expression
                | var_stmt
                | if_stmt
                | while_stmt
                | for_stmt
                | return_stmt
                | class_def
                | import_stmt
                | block

    var_stmt ::= VAR IDENTIFIER
               | VAR IDENTIFIER ASSIGN expression

    if_stmt ::= IF LPAREN expression RPAREN statement
              | IF LPAREN expression RPAREN statement ELSE statement

    while_stmt ::= WHILE LPAREN expression RPAREN statement
    for_stmt ::= FOR LPAREN IDENTIFIER IN expression RPAREN statement
    return_stmt ::= RETURN expression
    import_stmt ::= IMPORT STRING

    class_def ::= CLASS IDENTIFIER LBRACE class_body RBRACE
    class_body ::= $empty | class_body method
    method ::= IDENTIFIER block

    block ::= LBRACE stmt_list RBRACE

    expression ::= additive
    additive ::= primary
               | additive PLUS primary
               | additive MINUS primary
    primary ::= IDENTIFIER | NUMBER | STRING | TRUE | FALSE | NULLLITERAL
              | LPAREN expression RPAREN
%End
