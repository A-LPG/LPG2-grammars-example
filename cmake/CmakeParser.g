-- Cmake Parser (LPG)
%Options la=2
%Options fp=CmakeParser
%options package=lpg.grammars.cmake
%options template=dtParserTemplateF.gi
%options import_terminals=CmakeLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules
    file_ ::= $empty | file_ command_invocation

    command_invocation ::= cmd_name LPAREN arg_list RPAREN

    cmd_name ::= IDENTIFIER | UNQUOTED_ARGUMENT

    arg_list ::= $empty
               | arg_list single_argument
               | arg_list compound_argument

    single_argument ::= IDENTIFIER
                      | UNQUOTED_ARGUMENT
                      | BRACKET_ARGUMENT
                      | QUOTED_ARGUMENT

    compound_argument ::= LPAREN arg_list RPAREN
%End
