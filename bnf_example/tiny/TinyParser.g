-- Tiny Parser (LPG)
%Options la=2
%Options fp=TinyParser
%options package=lpg.grammars.tiny
%options template=dtParserTemplateF.gi
%options import_terminals=TinyLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules
    program ::= BEGIN stmt_list END

    stmt_list ::= stmt
                | stmt_list stmt

    stmt ::= assign_stmt | read_stmt | write_stmt

    assign_stmt ::= ident ASSIGN expr
    read_stmt ::= READ id_list
    write_stmt ::= WRITE expr_list

    id_list ::= ident
              | id_list COMMA ident

    expr_list ::= expr
                | expr_list COMMA expr

    expr ::= factor
           | expr op factor

    factor ::= ident | integer
    integer ::= NUMBER | MINUS NUMBER
    op ::= PLUS | MINUS
    ident ::= IDENTIFIER
%End
