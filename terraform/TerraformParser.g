-- Terraform Parser (LPG) — curated locals subset
%Options la=2
%Options fp=TerraformParser
%options package=lpg.grammars.terraform
%options template=dtParserTemplateF.gi
%options import_terminals=TerraformLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules
    file_ ::= block_list
    block_list ::= block | block_list block
    block ::= LOCALS LBRACE body RBRACE
    body ::= $empty | body assignment
    assignment ::= IDENTIFIER EQ expr
    expr ::= STRING | NUMBER | TRUE | FALSE | NULLLITERAL | array
    array ::= LBRACKET RBRACKET | LBRACKET expr_list RBRACKET
    expr_list ::= expr | expr_list COMMA expr
%End
