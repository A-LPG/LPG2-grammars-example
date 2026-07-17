-- PL/0 Parser (LPG)
%Options la=2
%Options fp=Pl0Parser
%options package=lpg.grammars.pl0
%options template=dtParserTemplateF.gi
%options import_terminals=Pl0Lexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules
    program ::= block DOT
    block ::= opt_consts opt_vars opt_procs statement
    opt_consts ::= $empty | consts
    opt_vars ::= $empty | vars_
    opt_procs ::= $empty | opt_procs procedure
    consts ::= CONST IDENTIFIER EQ NUMBER const_tail SEMI
    const_tail ::= $empty | const_tail COMMA IDENTIFIER EQ NUMBER
    vars_ ::= VAR IDENTIFIER var_tail SEMI
    var_tail ::= $empty | var_tail COMMA IDENTIFIER
    procedure ::= PROCEDURE IDENTIFIER SEMI block SEMI
    statement ::= $empty
                | IDENTIFIER ASSIGN expression
                | CALL IDENTIFIER
                | WRITE IDENTIFIER
                | QUESTION IDENTIFIER
                | BANG expression
                | BEGIN statement stmt_tail END
                | IF condition THEN statement
                | WHILE condition DO statement
    stmt_tail ::= $empty | stmt_tail SEMI statement
    condition ::= ODD expression | expression relop expression
    relop ::= EQ | HASH | LT | LE | GT | GE
    expression ::= opt_sign term expr_tail
    opt_sign ::= $empty | PLUS | MINUS
    expr_tail ::= $empty | expr_tail PLUS term | expr_tail MINUS term
    term ::= factor term_tail
    term_tail ::= $empty | term_tail STAR factor | term_tail SLASH factor
    factor ::= IDENTIFIER | NUMBER | LPAREN expression RPAREN
%End
