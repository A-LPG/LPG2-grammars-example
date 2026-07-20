-- PL/0 Parser (LPG) — structural port of grammars-v4 pl0/pl0.g4
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Nonterminals mirror g4: program/block/consts/vars_/procedure/statement/
-- assignstmt/callstmt/writestmt/qstmt/bangstmt/beginstmt/ifstmt/whilestmt/...

%Options la=2,ebnf
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

    opt_consts ::= consts?

    opt_vars ::= vars_?

    opt_procs ::= (opt_procs procedure)?

    consts ::= CONST ident EQ number const_tail SEMI

    const_tail ::= $empty
                  | const_tail COMMA ident EQ number

    vars_ ::= VAR ident var_tail SEMI

    var_tail ::= (var_tail COMMA ident)?

    procedure ::= PROCEDURE ident SEMI block SEMI

    statement ::= $empty
                 | assignstmt
                 | callstmt
                 | writestmt
                 | qstmt
                 | bangstmt
                 | beginstmt
                 | ifstmt
                 | whilestmt

    assignstmt ::= ident ASSIGN expression

    callstmt ::= CALL ident

    writestmt ::= WRITE ident

    qstmt ::= QUESTION ident

    bangstmt ::= BANG expression

    beginstmt ::= BEGIN statement stmt_tail END

    stmt_tail ::= (stmt_tail SEMI statement)?

    ifstmt ::= IF condition THEN statement

    whilestmt ::= WHILE condition DO statement

    condition ::= ODD expression
                 | expression relop expression

    relop ::= EQ
             | HASH
             | LT
             | LE
             | GT
             | GE

    expression ::= opt_sign term expr_tail

    opt_sign ::= $empty
                | PLUS
                | MINUS

    expr_tail ::= $empty
                 | expr_tail PLUS term
                 | expr_tail MINUS term

    term ::= factor term_tail

    term_tail ::= $empty
                 | term_tail STAR factor
                 | term_tail SLASH factor

    factor ::= ident
              | number
              | LPAREN expression RPAREN

    ident ::= IDENTIFIER

    number ::= NUMBER
%End
