-- Terraform subset: locals/resource/variable/output/module/provider/data/terraform blocks
%Options la=2
%Options fp=TerraformParser
%options package=lpg.grammars.terraform
%options template=dtParserTemplateF.gi
%options import_terminals=TerraformLexer.gi
%options automatic_ast=none
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules
    file_ ::= block_list
    block_list ::= block | block_list block

    block ::= LOCALS blockbody
            | RESOURCE STRING STRING blockbody
            | VARIABLE STRING blockbody
            | OUTPUT STRING blockbody
            | MODULE STRING blockbody
            | PROVIDER STRING blockbody
            | DATA STRING STRING blockbody
            | TERRAFORM blockbody

    blockbody ::= LCURL arg_list RCURL
                | LCURL RCURL

    arg_list ::= argument | arg_list argument
    argument ::= IDENTIFIER EQ expression

    expression ::= STRING | NUMBER | TRUE | FALSE | NULLLITERAL | IDENTIFIER
                 | LBRACKET opt_expr_list RBRACKET
                 | LCURL RCURL
                 | LCURL arg_list RCURL
    opt_expr_list ::= $empty | expr_list
    expr_list ::= expression | expr_list COMMA expression
%End
