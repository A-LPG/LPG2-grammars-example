-- AUTO-GENERATED from antlr/grammars-v4 trapc by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=TrapcParser
%options package=lpg.grammars.trapc
%options template=dtParserTemplateF.gi
%options import_terminals=TrapcLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    structOrUnion
%End

%Rules
    structOrUnion ::= STRUCT

    jumpStatement ::= grp_1 SEMI

    statement ::= labeledStatement
           | compoundStatement
           | expressionStatement
           | selectionStatement
           | iterationStatement
           | jumpStatement
           | grp_3 grp_4 LPAREN opt_8 list_14 RPAREN SEMI
           | trapStatement

    trapStatement ::= TRAP compoundStatement

    opt_2 ::= expression | $empty

    grp_1 ::= CONTINUE | BREAK | RETURN opt_2

    grp_3 ::= __ASM | __ASM__

    grp_4 ::= VOLATILE | __VOLATILE__

    seq_5 ::= COMMA logicalOrExpression

    list_6 ::= $empty | list_6 seq_5

    seq_7 ::= logicalOrExpression list_6

    opt_8 ::= seq_7 | $empty

    seq_9 ::= COMMA logicalOrExpression

    list_10 ::= $empty | list_10 seq_9

    seq_11 ::= logicalOrExpression list_10

    opt_12 ::= seq_11 | $empty

    seq_13 ::= COLON opt_12

    list_14 ::= $empty | list_14 seq_13

%End
