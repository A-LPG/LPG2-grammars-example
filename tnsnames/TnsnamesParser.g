-- Tnsnames subset: alias = (DESCRIPTION=...(ADDRESS=...)...)
%Options la=2
%Options fp=TnsnamesParser
%options package=lpg.grammars.tnsnames
%options template=dtParserTemplateF.gi
%options import_terminals=TnsnamesLexer.gi
%options automatic_ast=none
%Eof
    EOF_TOKEN
%End
%Start
    tnsnames
%End
%Rules
    tnsnames ::= entry_list
    entry_list ::= entry | entry_list entry

    entry ::= IDENTIFIER EQ description

    description ::= LPAREN DESCRIPTION EQ address_list opt_connect RPAREN

    address_list ::= address | address_list address
    address ::= LPAREN ADDRESS EQ protocol_info RPAREN

    protocol_info ::= LPAREN PROTOCOL EQ TCP RPAREN LPAREN HOST EQ host_val RPAREN LPAREN PORT EQ NUMBER RPAREN

    host_val ::= IDENTIFIER | STRING

    opt_connect ::= $empty | connect_data
    connect_data ::= LPAREN CONNECT_DATA EQ connect_body RPAREN
    connect_body ::= LPAREN SERVICE_NAME EQ IDENTIFIER RPAREN
                   | LPAREN SID EQ IDENTIFIER RPAREN
%End
