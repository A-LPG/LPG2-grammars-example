-- Rust subset: fn / let / if / expressions (curated examples)
%Options la=2
%Options fp=RustParser
%options package=lpg.grammars.rust
%options template=dtParserTemplateF.gi
%options import_terminals=RustLexer.gi
%options automatic_ast=none
%Eof
    EOF_TOKEN
%End
%Start
    crate
%End
%Rules
    crate ::= item_list
    item_list ::= item | item_list item

    item ::= function_item

    function_item ::= KW_FN IDENTIFIER LPAREN opt_params RPAREN block

    opt_params ::= $empty | param_list
    param_list ::= param | param_list COMMA param
    param ::= IDENTIFIER COLON type_

    type_ ::= IDENTIFIER

    block ::= LBRACE stmt_list RBRACE
            | LBRACE RBRACE

    stmt_list ::= stmt | stmt_list stmt
    stmt ::= let_stmt | if_stmt | return_stmt | expr_stmt

    let_stmt ::= KW_LET opt_mut IDENTIFIER EQ expression SEMI
    opt_mut ::= $empty | KW_MUT

    if_stmt ::= KW_IF expression block
              | KW_IF expression block KW_ELSE block

    return_stmt ::= KW_RETURN SEMI
                  | KW_RETURN expression SEMI

    expr_stmt ::= expression SEMI

    expression ::= additive
    additive ::= multiplicative
               | additive PLUS multiplicative
               | additive MINUS multiplicative
    multiplicative ::= primary
                     | multiplicative STAR primary
                     | multiplicative SLASH primary
    primary ::= IDENTIFIER
              | NUMBER
              | STRING_LITERAL
              | KW_TRUE
              | KW_FALSE
              | LPAREN expression RPAREN
%End
