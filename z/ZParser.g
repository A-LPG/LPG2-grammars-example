-- Z subset: $Z section name $E
%Options la=2
%Options fp=ZParser
%options package=lpg.grammars.z
%options template=dtParserTemplateF.gi
%options import_terminals=ZLexer.gi
%options automatic_ast=none
%Eof
    EOF_TOKEN
%End
%Start
    specification
%End
%Rules
    specification ::= paragraph_list
    paragraph_list ::= paragraph | paragraph_list paragraph

    paragraph ::= section_para | ax_para | sch_para

    section_para ::= DOLLAR Z SECTION IDENTIFIER DOLLAR E
    ax_para ::= DOLLAR AX IDENTIFIER DOLLAR E
    sch_para ::= DOLLAR SCH IDENTIFIER DOLLAR E
%End
