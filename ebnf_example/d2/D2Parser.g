-- D2Parser (LPG) — structural port of grammars-v4 d2/D2.g4 (tiny diagram subset)
-- EBNF port: %Options ebnf (twin: bnf_example; g4: d2/D2.g4).
-- Nonterminals: diagram / statement / nodeDeclaration / edgeDeclaration /
--   block / label / attributeBlock / attributeEntry / expression / edgeOp / name
-- Comments skipped in lexer (g4 exposes COMMENT as statement).

%Options la=2,ebnf
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
    diagram ::= statement*

    statement ::= nodeDeclaration
                | edgeDeclaration
                | attributeBlock

    nodeDeclaration ::= name (COLON label? attributeBlock? block?)?

    edgeDeclaration ::= name (edgeOp name)+ (COLON label)? attributeBlock?

    block ::= LBRACE statement* RBRACE

    label ::= name

    attributeBlock ::= LBRACK attributeEntry (COMMA attributeEntry)* COMMA? RBRACK

    attributeEntry ::= COLON expression

    expression ::= STRING
                 | NUMBER
                 | TRUE
                 | FALSE

    edgeOp ::= ARROW
             | DASH
             | LARROW

    name ::= IDENTIFIER (DOT IDENTIFIER)*
%End
