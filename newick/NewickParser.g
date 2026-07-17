-- Newick Parser (LPG)
-- Left-factored vs antlr newick.g4 so LALR accepts root length suffixes
-- (e.g. example5 `(...):0.0;`) that require the `branch` alternative.

%Options la=2
%Options fp=NewickParser
%options package=lpg.grammars.newick
%options template=dtParserTemplateF.gi
%options import_terminals=NewickLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    tree_
%End

%Rules
    -- Unified: tree_ ::= subtree length ';'
    -- covers rootLeaf / rootInternal / branch from the ANTLR grammar.
    tree_ ::= subtree length SEMI

    subtree ::= name
              | LPAREN branchSet RPAREN name

    branchSet ::= branch
                | branch COMMA branchSet

    branch ::= subtree length

    name ::= STRING
           | $empty

    length ::= COLON NUMBER
             | $empty
%End
