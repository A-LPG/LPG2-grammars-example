-- JamParser (LPG)
%Options la=2
%Options fp=JamParser
%options package=lpg.grammars.jam
%options template=dtParserTemplateF.gi
%options import_terminals=JamLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    jam
%End

%Rules
    jam ::= $empty
          | sections

    sections ::= section
               | sections section

    section ::= measure
              | section PIPE measure

    measure ::= measure_items
              | meter measure_items

    measure_items ::= measure_item
                    | measure_items measure_item

    measure_item ::= chord | repeatchord | rest | extendchord | repeatmeasure

    chord ::= note
            | note chordquality

    chordquality ::= quality_head
                   | quality_head NUM
                   | quality_head NUM sign_num
                   | quality_head sign_num
                   | NUM
                   | NUM sign_num
                   | sign_num

    quality_head ::= QUAL_M | QUAL_CAP_M | QUAL_P | QUAL_D | MAJ | MIN | DIM | AUG

    sign_num ::= REST NUM
               | PLUS NUM

    repeatchord ::= SLASH
    extendchord ::= EQ
    repeatmeasure ::= PCT
    rest ::= REST

    note ::= KEY
           | KEY FLAT
           | KEY SHARP_ACC

    meter ::= LBRACKET NUM SLASH NUM RBRACKET
%End
