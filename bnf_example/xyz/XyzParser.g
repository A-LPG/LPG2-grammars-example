-- XYZ Parser (LPG)
-- Ported from antlr/grammars-v4 xyz/xyz.g4

%Options la=2
%Options fp=XyzParser
%options package=lpg.grammars.xyz
%options template=dtParserTemplateF.gi
%options import_terminals=XyzLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= header body

    header ::= count desc EOL

    count ::= NUM EOL

    -- ANTLR desc: .*?  (any tokens until EOL)
    desc ::= $empty
           | desc_items

    desc_items ::= desc_item
                 | desc_items desc_item

    desc_item ::= ATOMNAME
                | NUM

    body ::= atom
           | body atom

    atom ::= ATOMNAME NUM NUM NUM EOL
%End
