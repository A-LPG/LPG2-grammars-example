-- AUTO-GENERATED from antlr/grammars-v4 freedesktop/desktop-entry by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=FreedesktopDesktopEntryParser
%options package=lpg.grammars.freedesktop.desktop_entry
%options template=btParserTemplateF.gi
%options import_terminals=FreedesktopDesktopEntryLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End


%Define
    $ast_class /.Object./
    $ast_type /.Object./
%End

%Start
    desktop_entry
%End

%Rules
    desktop_entry ::= list_1

    group ::= group_header list_2

    group_header ::= LEFT_BRACKET group_name RIGHT_BRACKET

    group_name ::= GROUP_NAME

    entry ::= key opt_3 EQUAL opt_4 list_6 opt_7

    key ::= KEY_NAME

    locale ::= LEFT_BRACKET language_ opt_9 opt_11 opt_13 RIGHT_BRACKET

    language_ ::= LANGUAGE

    country ::= COUNTRY

    encoding ::= ENCODING

    modifier ::= MODIFIER

    value ::= string_
           | number
           | true_
           | false_

    string_ ::= STRING

    number ::= NUMBER

    true_ ::= TRUE

    false_ ::= FALSE

    list_1 ::= %Empty | list_1 group

    list_2 ::= %Empty | list_2 entry

    opt_3 ::= locale | %Empty

    opt_4 ::= value | %Empty

    seq_5 ::= SEMICOLON value

    list_6 ::= %Empty | list_6 seq_5

    opt_7 ::= SEMICOLON | %Empty

    seq_8 ::= UNDERSCORE country

    opt_9 ::= seq_8 | %Empty

    seq_10 ::= DOT encoding

    opt_11 ::= seq_10 | %Empty

    seq_12 ::= AT modifier

    opt_13 ::= seq_12 | %Empty

%End
