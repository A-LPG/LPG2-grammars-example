-- STL Parser (LPG) — structural port of grammars-v4 stl/STL.g4
-- Nonterminals: file_ / header / triangle / vertex / triple / footer

%Options la=2
%Options fp=StlParser
%options package=lpg.grammars.stl
%options template=dtParserTemplateF.gi
%options import_terminals=StlLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= header triangle_list footer
            | header footer

    triangle_list ::= triangle
                    | triangle_list triangle

    triangle ::= FACET NORMAL triple OUTER LOOP vertex vertex vertex ENDLOOP ENDFACET

    vertex ::= VERTEX triple

    triple ::= FLOAT FLOAT FLOAT

    header ::= SOLID
             | SOLID IDENTIFIER

    footer ::= ENDSOLID IDENTIFIER
%End
