-- Janus Parser (LPG)
%Options la=2
%Options fp=JanusParser
%options package=lpg.grammars.janus
%options template=dtParserTemplateF.gi
%options import_terminals=JanusLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules
    program ::= var_decls proc_decls

    var_decls ::= $empty
                | var_decls var_decl

    var_decl ::= IDENTIFIER
               | IDENTIFIER LBRACKET NUM RBRACKET

    proc_decls ::= $empty
                 | proc_decls PROCEDURE IDENTIFIER statements

    statements ::= statement
                 | statements statement

    statement ::= ifstmt
                | dostmt
                | callstmt
                | readstmt
                | writestmt
                | lvalstmt

    ifstmt ::= IF expression opt_then opt_else FI expression
    opt_then ::= $empty | THEN statements
    opt_else ::= $empty | ELSE statements

    dostmt ::= FROM expression opt_do opt_loop UNTIL expression
    opt_do ::= $empty | DO statements
    opt_loop ::= $empty | LOOP statements

    callstmt ::= CALL IDENTIFIER
               | UNCALL IDENTIFIER

    readstmt ::= READ IDENTIFIER
    writestmt ::= WRITE IDENTIFIER

    lvalstmt ::= lvalue modstmt
               | lvalue swapstmt

    modstmt ::= PLUS_EQ expression
              | MINUS_EQ expression
              | BANG_EQ expression
              | SWAP_EQ expression

    swapstmt ::= COLON lvalue

    expression ::= minexp
                 | expression BINOP minexp
                 | expression MINUS minexp

    minexp ::= LPAREN expression RPAREN
             | MINUS minexp
             | TILDE minexp
             | lvalue
             | constant

    lvalue ::= IDENTIFIER
             | IDENTIFIER LBRACKET expression RBRACKET

    constant ::= NUM
%End
