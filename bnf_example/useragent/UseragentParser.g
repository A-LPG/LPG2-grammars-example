-- Useragent Parser (LPG)
-- Ported from antlr/grammars-v4 useragent/useragent.g4

%Options la=2
%Options fp=UseragentParser
%options package=lpg.grammars.useragent
%options template=dtParserTemplateF.gi
%options import_terminals=UseragentLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= product_list

    product_list ::= product_opt_comment
                   | product_list product_opt_comment

    product_opt_comment ::= product
                          | product comment

    product ::= name SLASH version

    name ::= STRING

    version ::= STRING
              | version DOT STRING

    comment ::= COMMENT
%End
