-- WLN Parser (LPG) — structural port of grammars-v4 wln/wln.g4
-- Nonterminals mirror g4: wln / group / symbol (+ element tokens).
-- Full small g4; not token-stream soup.

%Options la=2
%Options fp=WlnParser
%options package=lpg.grammars.wln
%options template=dtParserTemplateF.gi
%options import_terminals=WlnLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    wln
%End

%Rules
    wln ::= group group_tail

    group_tail ::= $empty
                 | group_tail SPACE group

    group ::= symbol symbol_tail

    symbol_tail ::= $empty
                  | symbol_tail symbol

    symbol ::= BROMINE
             | CHLORINE
             | IODINE
             | BENZENE
             | DOUBLEBOND
             | CARBONYL
             | CARBONNON
             | NITROGEN3PLUS
             | CARBOSYCLIC
             | IMINO
             | NITROGEN4LESS
             | OXYGEN
             | HETEROCYCLIC
             | DIOXO
             | CARBON4
             | CARBON3
             | AMINO
             | FLOURINE
             | HYDROGEN
             | HYDROXYL
             | SULFER
             | TRIPLE
             | DIGIT
%End
