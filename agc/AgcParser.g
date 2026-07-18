-- Structural subset of grammars-v4 agc.g4:
-- prog / line / comment_line / instruction_line / erase_line

%Options la=3
%Options fp=AgcParser
%options package=lpg.grammars.agc
%options template=dtParserTemplateF.gi
%options import_terminals=AgcLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= line_list

    line_list ::= line
                | line_list line

    line ::= comment_line
           | instruction_line
           | erase_line
           | blank_line

    blank_line ::= EOL
                 | WS EOL

    comment_line ::= COMMENT EOL
                   | WS COMMENT EOL

    instruction_line ::= WS opcode EOL
                       | WS opcode WS NUMBER EOL

    erase_line ::= WS ERASE WS NUMBER EOL
                 | WS ERASE EOL

    opcode ::= NOOP
%End
