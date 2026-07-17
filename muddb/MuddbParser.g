-- MuddbParser (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options la=2
%Options fp=MuddbParser
%options package=lpg.grammars.muddb
%options template=dtParserTemplateF.gi
%options import_terminals=MuddbLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    db
%End

%Rules
    db ::= rooms END opt_eols

    rooms ::= $empty
            | room_list

    room_list ::= room
                | room_list room

    opt_eols ::= $empty | eols
    eols ::= EOL | eols EOL

    room ::= roomno name description location contents exits next_ key fail_message succ_message ofail osuccess owner pennies flags password

    roomno ::= STRING EOL
    name ::= string
    description ::= string
    location ::= ref
    contents ::= ref
    exits ::= ref
    next_ ::= ref
    key ::= bool_
    fail_message ::= string
    succ_message ::= string
    ofail ::= string
    osuccess ::= string
    owner ::= ref
    pennies ::= ref
    flags ::= ref
    password ::= string

    string ::= EOL
             | STRING EOL

    ref ::= EOL
          | NUM EOL

    bool_ ::= EOL
            | NUM EOL
%End
