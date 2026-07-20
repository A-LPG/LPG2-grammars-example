-- Refal Parser (LPG)
%Options la=2
%Options fp=RefalParser
%options package=lpg.grammars.refal
%options template=dtParserTemplateF.gi
%options import_terminals=RefalLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules
    file_ ::= definitions
    definitions ::= definition | definitions definition

    definition ::= opt_entry name LBRACE sentences_opt RBRACE
    opt_entry ::= $empty | DOLLAR ENTRY
    name ::= IDENTIFIER | STRING

    sentences_opt ::= $empty | sentences
    sentences ::= sentence | sentences SEMI sentence | sentences SEMI

    sentence ::= expr_opt EQUAL expr_opt
               | expr_opt COMMA block_ending

    block_ending ::= expr_opt COLON LBRACE sentences_opt RBRACE

    expr_opt ::= $empty | exprs
    exprs ::= expr_item | exprs expr_item
    expr_item ::= IDENTIFIER | DIGITS | STRING | STRING2 | CHAR
                | SVAR DOT index | TVAR DOT index | EVAR DOT index
                | LANGLE expr_opt RANGLE
    index ::= IDENTIFIER | DIGITS | STRING
%End
