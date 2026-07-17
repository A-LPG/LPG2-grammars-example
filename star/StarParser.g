-- StarParser (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options la=2
%Options fp=StarParser
%options package=lpg.grammars.star
%options template=dtParserTemplateF.gi
%options import_terminals=StarLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    star
%End

%Rules
    star ::= $empty
           | datablocks

    datablocks ::= datablock_
                 | datablocks datablock_

    datablock_ ::= DATA elements

    elements ::= element_
               | elements element_

    element_ ::= keyval_ | saveframe_ | global_ | loop_

    saveframe_ ::= SAVE save_items

    save_items ::= save_item
                 | save_items save_item

    save_item ::= dataname_ | dataitem_ | loop_

    loop_ ::= LOOP datanames dataitems_loop

    datanames ::= dataname_
                | datanames dataname_

    dataitems_loop ::= dataitem_group
                     | dataitems_loop dataitem_group

    dataitem_group ::= dataitem_plus
                     | dataitem_plus STOP

    dataitem_plus ::= dataitem_
                    | dataitem_plus dataitem_

    keyval_ ::= dataname_ dataitem_

    dataitem_ ::= string_ | literal_ | loop_

    string_ ::= STRING1 | STRING2 | STRING3
    dataname_ ::= DATANAME
    global_ ::= GLOBAL
    literal_ ::= LITERAL
%End
