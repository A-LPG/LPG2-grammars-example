-- Sici Parser (LPG)
%Options la=2
%Options fp=SiciParser
%options package=lpg.grammars.sici
%options template=dtParserTemplateF.gi
%options import_terminals=SiciLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    sici
%End
%Rules
    sici ::= item contribution
           | item contribution control_list

    control_list ::= control
                   | control_list control

    item ::= issn chronology enumeration

    issn ::= DIGIT DIGIT DIGIT DIGIT MINUS DIGIT DIGIT DIGIT DIGIT

    chronology ::= LPAREN chrono_body RPAREN
    chrono_body ::= chrono_char
                  | chrono_body chrono_char
    chrono_char ::= DIGIT | SLASH

    enumeration ::= digits COLON digits
    digits ::= DIGIT | digits DIGIT

    contribution ::= LESS location COLON title GREATER
    location ::= digits
    title ::= letters
    letters ::= LETTER | letters LETTER

    control ::= csi DOT dpi DOT mfi SEMI version check
    csi ::= DIGIT
    dpi ::= DIGIT
    mfi ::= LETTER LETTER
    version ::= DIGIT DIGIT
              | DIGIT MINUS
    check ::= LETTER
%End
