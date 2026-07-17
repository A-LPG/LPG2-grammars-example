-- WLN Parser (LPG)
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
    wln ::= groups
    groups ::= group
             | groups SPACE group
    group ::= symbols
    symbols ::= symbol
              | symbols symbol
    symbol ::= BROMINE | CHLORINE | IODINE | BENZENE | DOUBLEBOND | CARBONYL
             | CARBONNON | NITROGEN3PLUS | CARBOSYCLIC | IMINO | NITROGEN4LESS
             | OXYGEN | HETEROCYCLIC | DIOXO | CARBON4 | CARBON3 | AMINO
             | FLOURINE | HYDROGEN | HYDROXYL | SULFER | TRIPLE | DIGIT
%End
