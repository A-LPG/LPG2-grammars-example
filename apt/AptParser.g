-- APT Parser (LPG)
%Options la=2
%Options fp=AptParser
%options package=lpg.grammars.apt
%options template=dtParserTemplateF.gi
%options import_terminals=AptLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    record
%End
%Rules
    record ::= type_ WSS opt_options uri WSS id_list opt_wss

    opt_wss ::= $empty | WSS
    opt_options ::= $empty | optionsR

    type_ ::= DEB | DEB_SRC

    optionsR ::= OPTIONS_START option_list OPTIONS_END WSS
    option_list ::= optionR | option_list OPTION_SEP optionR
    optionR ::= IDENTIFIER EQ IDENTIFIER

    uri ::= IDENTIFIER COLON SLASH SLASH hostpath
    hostpath ::= path_seg | hostpath path_seg
    path_seg ::= IDENTIFIER | DOT | SLASH

    id_list ::= IDENTIFIER
              | id_list WSS IDENTIFIER
%End
