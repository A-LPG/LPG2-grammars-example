-- APT Parser (LPG) — subset of grammars-v4 apt/apt.g4
-- NTs: record / optionsR / optionR / uriR / components (id_list)
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
    -- record: TypeR WSS optionsR? uriR WSS wordWithDash componentsR
    record ::= type_ WSS opt_options uri WSS components opt_wss

    opt_wss ::= $empty | WSS
    opt_options ::= $empty | optionsR

    type_ ::= DEB | DEB_SRC

    optionsR ::= OPTIONS_START option_list OPTIONS_END WSS
    option_list ::= optionR
                  | option_list OPTION_SEP optionR
    optionR ::= OptionName EQ option_value

    -- OptionName subset from apt.g4
    OptionName ::= ARCH | LANG | TARGET | TRUSTED | IDENTIFIER
    option_value ::= IDENTIFIER
                   | option_value DOT IDENTIFIER
                   | option_value SLASH IDENTIFIER

    -- uriR: schema ':' rest (http://host/path)
    uri ::= IDENTIFIER COLON SLASH SLASH hostpath
    hostpath ::= path_seg | hostpath path_seg
    path_seg ::= IDENTIFIER | DOT | SLASH

    -- distribution + components (wordWithDash+)
    components ::= word_with_dash
                 | components WSS word_with_dash
    word_with_dash ::= IDENTIFIER
%End

