-- Quake map Parser (LPG)

%Options la=2
%Options fp=QuakemapParser
%options package=lpg.grammars.quakemap
%options template=dtParserTemplateF.gi
%options import_terminals=QuakemapLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    map_
%End

%Rules
    map_ ::= entities_opt

    entities_opt ::= $empty
                   | entities

    entities ::= entity
               | entities entity

    entity ::= LBRACE keyvalues_opt brushes_opt RBRACE

    keyvalues_opt ::= $empty
                    | keyvalues

    keyvalues ::= keyvalue
                | keyvalues keyvalue

    keyvalue ::= string string

    brushes_opt ::= $empty
                  | brushes

    brushes ::= brush
              | brushes brush

    brush ::= LBRACE brushlines RBRACE

    brushlines ::= brushline
                 | brushlines brushline

    brushline ::= coords_opt text nums_opt

    coords_opt ::= $empty
                 | coords

    coords ::= coord
             | coords coord

    coord ::= LPAREN nums_opt RPAREN

    nums_opt ::= $empty
               | nums

    nums ::= num
           | nums num

    num ::= NUMBER
    string ::= STRING
    text ::= TEXT
%End
