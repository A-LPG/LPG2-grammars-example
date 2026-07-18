-- Vaxscan subset: MODULE ... END MODULE
%Options la=2
%Options fp=VaxscanParser
%options package=lpg.grammars.vaxscan
%options template=dtParserTemplateF.gi
%options import_terminals=VaxscanLexer.gi
%options automatic_ast=none
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules
    program ::= module_decl
    module_decl ::= MODULE IDENTIFIER SEMI opt_body END MODULE SEMI
                  | MODULE IDENTIFIER SEMI opt_body END MODULE

    opt_body ::= $empty | decl_list

    decl_list ::= decl | decl_list decl
    decl ::= PROCEDURE IDENTIFIER SEMI
           | DECLARE IDENTIFIER COLON type_ SEMI
           | BEGIN stmt_list END SEMI

    type_ ::= INTEGER | BOOLEAN | IDENTIFIER

    stmt_list ::= $empty | stmt_list stmt
    stmt ::= IDENTIFIER EQ expression SEMI
    expression ::= NUMBER | STRING | IDENTIFIER | TRUE | FALSE
%End
