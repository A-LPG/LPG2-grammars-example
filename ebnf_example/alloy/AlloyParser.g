-- Alloy Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example; g4: alloy/alloy.g4).
-- Ported from antlr/grammars-v4 alloy/alloy.g4
-- Expression precedence layered for LALR; covers example suite.

%Options la=4,ebnf
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
    alloyModule ::= moduleDecl? import_* paragraph+

    moduleDecl ::= MODULE qualName IDENTIFIER (COMMA IDENTIFIER)*

    import_ ::= OPEN qualName (COMMA qualName)* (AS IDENTIFIER)?

    paragraph ::= sigDecl
                | factDecl
                | predDecl
                | funDecl
                | assertDecl
                | cmdDecl

    sigDecl ::= ABSTRACT? mult? SIG IDENTIFIER (COMMA IDENTIFIER)* sigExt?
                LBRACE (decl (COMMA decl)*)? RBRACE block?

    sigExt ::= EXTENDS qualName
             | INN qualName (PLUS qualName)*

    mult ::= LONE | SOME | ONE

    decl ::= DISJ? IDENTIFIER (COMMA IDENTIFIER)* COLON DISJ? expr

    factDecl ::= FACT IDENTIFIER? block

    predDecl ::= PRED IDENTIFIER paraDecls? block
               | PRED qualName DOT IDENTIFIER paraDecls? block

    funDecl ::= FUN IDENTIFIER paraDecls? COLON expr LBRACE expr RBRACE
              | FUN qualName DOT IDENTIFIER paraDecls? COLON expr LBRACE expr RBRACE

    paraDecls ::= LPAREN decl (COMMA decl)* RPAREN
                | LBRACKET decl (COMMA decl)* RBRACKET

    assertDecl ::= ASSERT IDENTIFIER? block

    cmdDecl ::= CHECK qualName scope?
              | RUN qualName scope?
              | CHECK block scope?
              | RUN block scope?
              | IDENTIFIER COLON CHECK qualName scope?
              | IDENTIFIER COLON RUN qualName scope?

    scope ::= FOR NUMBER
            | FOR NUMBER BUT typescope (COMMA typescope)*
            | FOR typescope (COMMA typescope)*

    typescope ::= NUMBER qualName
                | EXACTLY NUMBER qualName

    -- expressions: quantifier tails require 'id :' so they don't fight unary 'no id'
    expr ::= ALL decls blockOrBar
           | SUM decls blockOrBar
           | NO quant_or_unary
           | ONE quant_or_unary
           | LONE quant_or_unary
           | SOME quant_or_unary
           | LET letDecl (COMMA letDecl)* blockOrBar
           | LBRACE decls blockOrBar RBRACE
           | logic_expr

    -- la distinguishes 'id : type | body' (quant) from 'id' / 'id.field' (unary)
    quant_or_unary ::= IDENTIFIER COLON DISJ? expr (COMMA decls)? blockOrBar
                     | DISJ IDENTIFIER COLON DISJ? expr (COMMA decls)? blockOrBar
                     | unary_after_qop

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

    letDecl ::= IDENTIFIER EQ expr

    blockOrBar ::= block
                 | BAR expr

    -- Keep left-recursion for expression precedence (do not flatten with EBNF).
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
              | primary LBRACKET expr (COMMA expr)* RBRACKET

    block ::= LBRACE expr* RBRACE

    -- Keep left-recursion for dotted/qualified names.
    qualName ::= IDENTIFIER
               | THIS SLASH IDENTIFIER
               | qualName SLASH IDENTIFIER

    -- used by quantifier / set-comprehension decls
    decls ::= decl (COMMA decl)*
%End
