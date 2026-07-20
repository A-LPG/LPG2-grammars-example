-- Alloy Parser (LPG)
-- Ported from antlr/grammars-v4 alloy/alloy.g4
-- Expression precedence layered for LALR; covers example suite.

%Options la=4
%Options fp=AlloyParser
%options package=lpg.grammars.alloy
%options template=dtParserTemplateF.gi
%options import_terminals=AlloyLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    alloyModule
%End

%Rules
    alloyModule ::= paragraphs
                  | moduleDecl paragraphs
                  | imports paragraphs
                  | moduleDecl imports paragraphs

    moduleDecl ::= MODULE qualName name_list

    imports ::= import_
              | imports import_

    import_ ::= OPEN qual_list
              | OPEN qual_list AS IDENTIFIER

    qual_list ::= qualName
                | qual_list COMMA qualName

    name_list ::= IDENTIFIER
                | name_list COMMA IDENTIFIER

    paragraphs ::= paragraph
                 | paragraphs paragraph

    paragraph ::= sigDecl
                | factDecl
                | predDecl
                | funDecl
                | assertDecl
                | cmdDecl

    sigDecl ::= opt_abstract opt_mult SIG name_list opt_sigExt LBRACE opt_decls RBRACE opt_block

    opt_abstract ::= $empty | ABSTRACT
    opt_mult ::= $empty | mult
    opt_sigExt ::= $empty | sigExt
    opt_decls ::= $empty | decls
    opt_block ::= $empty | block

    sigExt ::= EXTENDS qualName
             | INN qualName
             | INN qualName plus_quals

    plus_quals ::= PLUS qualName
                 | plus_quals PLUS qualName

    mult ::= LONE | SOME | ONE

    decls ::= decl
            | decls COMMA decl

    decl ::= opt_disj name_list COLON opt_disj expr
    opt_disj ::= $empty | DISJ

    factDecl ::= FACT block
               | FACT IDENTIFIER block

    predDecl ::= PRED IDENTIFIER opt_paraDecls block
               | PRED qualName DOT IDENTIFIER opt_paraDecls block

    funDecl ::= FUN IDENTIFIER opt_paraDecls COLON expr LBRACE expr RBRACE
              | FUN qualName DOT IDENTIFIER opt_paraDecls COLON expr LBRACE expr RBRACE

    opt_paraDecls ::= $empty | paraDecls
    paraDecls ::= LPAREN decls RPAREN
                | LBRACKET decls RBRACKET

    assertDecl ::= ASSERT block
                 | ASSERT IDENTIFIER block

    cmdDecl ::= CHECK qualName opt_scope
              | RUN qualName opt_scope
              | CHECK block opt_scope
              | RUN block opt_scope
              | IDENTIFIER COLON CHECK qualName opt_scope
              | IDENTIFIER COLON RUN qualName opt_scope

    opt_scope ::= $empty | scope
    scope ::= FOR NUMBER
            | FOR NUMBER BUT typescopes
            | FOR typescopes

    typescopes ::= typescope
                 | typescopes COMMA typescope

    typescope ::= NUMBER qualName
                | EXACTLY NUMBER qualName

    -- expressions: quantifier tails require 'id :' so they don't fight unary 'no id'
    expr ::= ALL decls blockOrBar
           | SUM decls blockOrBar
           | NO quant_or_unary
           | ONE quant_or_unary
           | LONE quant_or_unary
           | SOME quant_or_unary
           | LET letDecls blockOrBar
           | LBRACE decls blockOrBar RBRACE
           | logic_expr

    -- la distinguishes 'id : type | body' (quant) from 'id' / 'id.field' (unary)
    quant_or_unary ::= IDENTIFIER COLON opt_disj expr more_decls blockOrBar
                     | DISJ IDENTIFIER COLON opt_disj expr more_decls blockOrBar
                     | unary_after_qop

    more_decls ::= $empty
                 | COMMA decls

    -- unary operand after no/one/lone/some (not a decl)
    unary_after_qop ::= primary
                      | primary DOT unary_expr
                      | SET unary_expr
                      | HASH unary_expr
                      | TILDE unary_expr
                      | STAR unary_expr
                      | CARET unary_expr
                      | NOT_OP unary_expr
                      | NOTT unary_expr

    letDecls ::= letDecl
               | letDecls COMMA letDecl
    letDecl ::= IDENTIFIER EQ expr

    blockOrBar ::= block
                 | BAR expr

    logic_expr ::= cmp_expr
                 | logic_expr OR_OP cmp_expr
                 | logic_expr ORR cmp_expr
                 | logic_expr AND_OP cmp_expr
                 | logic_expr ANDD cmp_expr
                 | logic_expr IFF_OP cmp_expr
                 | logic_expr IFF cmp_expr
                 | logic_expr IMPLIES_OP cmp_expr
                 | logic_expr IMPLIES cmp_expr
                 | logic_expr IMPLIES_OP cmp_expr ELSE cmp_expr
                 | logic_expr IMPLIES cmp_expr ELSE cmp_expr

    cmp_expr ::= union_expr
               | union_expr compareOp union_expr
               | union_expr NOT_OP compareOp union_expr
               | union_expr NOTT compareOp union_expr

    compareOp ::= INN | EQ | LT | GT | LTE | GTE

    union_expr ::= dot_expr
                 | union_expr PLUS dot_expr
                 | union_expr MINUS dot_expr
                 | union_expr AMP dot_expr
                 | union_expr PLUSPLUS dot_expr
                 | union_expr ARROW dot_expr
                 | union_expr LONE ARROW dot_expr
                 | union_expr SOME ARROW dot_expr
                 | union_expr ONE ARROW dot_expr
                 | union_expr SET ARROW dot_expr
                 | union_expr ARROW LONE dot_expr
                 | union_expr ARROW SOME dot_expr
                 | union_expr ARROW ONE dot_expr
                 | union_expr ARROW SET dot_expr

    dot_expr ::= unary_expr
               | dot_expr DOT unary_expr
               | dot_expr DOMAIN unary_expr
               | dot_expr RANGE unary_expr

    -- lone/some/one/no enter via expr ::= LONE quant_or_unary etc.
    unary_expr ::= primary
                 | NOT_OP unary_expr
                 | NOTT unary_expr
                 | SET unary_expr
                 | HASH unary_expr
                 | TILDE unary_expr
                 | STAR unary_expr
                 | CARET unary_expr

    primary ::= NUMBER
              | MINUS NUMBER
              | NONE | UNIV | IDEN
              | THIS
              | AT IDENTIFIER
              | qualName
              | LPAREN expr RPAREN
              | block
              | primary LBRACKET expr_list RBRACKET

    expr_list ::= expr
                | expr_list COMMA expr

    block ::= LBRACE RBRACE
            | LBRACE expr_list_block RBRACE

    expr_list_block ::= expr
                      | expr_list_block expr

    qualName ::= IDENTIFIER
               | THIS SLASH IDENTIFIER
               | qualName SLASH IDENTIFIER
%End
