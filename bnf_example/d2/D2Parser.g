-- D2Parser (LPG) — structural port of grammars-v4 d2/D2.g4 (tiny diagram subset)
-- Nonterminals: diagram / statement / nodeDeclaration / edgeDeclaration /
--   block / label / attributeBlock / attributeEntry / expression / edgeOp / name
-- Comments skipped in lexer (g4 exposes COMMENT as statement).

%Options la=2
%Options fp=D2Parser
%options package=lpg.grammars.d2
%options template=dtParserTemplateF.gi
%options import_terminals=D2Lexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    diagram
%End

%Rules
    -- diagram: statement* EOF
    diagram ::= $empty
              | statements

    statements ::= statement
                 | statements statement

    statement ::= nodeDeclaration
                | edgeDeclaration
                | attributeBlock

    nodeDeclaration ::= name
                      | name COLON opt_label opt_attrs opt_block

    opt_label ::= $empty | label
    opt_attrs ::= $empty | attributeBlock
    opt_block ::= $empty | block

    edgeDeclaration ::= name edge_tail opt_edge_label opt_attrs

    edge_tail ::= edgeOp name
                | edge_tail edgeOp name

    opt_edge_label ::= $empty
                     | COLON label

    block ::= LBRACE RBRACE
            | LBRACE statements RBRACE

    label ::= name

    attributeBlock ::= LBRACK attr_entries opt_comma RBRACK

    attr_entries ::= attributeEntry
                   | attr_entries COMMA attributeEntry

    opt_comma ::= $empty | COMMA

    attributeEntry ::= COLON expression

    expression ::= STRING
                 | NUMBER
                 | TRUE
                 | FALSE

    edgeOp ::= ARROW
             | DASH
             | LARROW

    name ::= IDENTIFIER
           | name DOT IDENTIFIER
%End