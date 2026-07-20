-- McKeeman Form Parser (LPG)
-- Ported from antlr/grammars-v4 mckeeman-form/McKeemanForm.g4 for parse-level examples.

%Options la=2
%Options fp=McKeemanFormParser
%options package=lpg.grammars.mckeeman_form
%options template=dtParserTemplateF.gi
%options import_terminals=McKeemanFormLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    grammar_
%End

%Rules
    -- grammar_ : rule_ (Newline rule_)* EOF
    grammar_ ::= rule_
               | grammar_ NEWLINE rule_

    -- rule_ : Name Newline nothing? alternative+
    -- nothing (indented "") is treated as an alternative whose sole item is STRING.
    rule_ ::= NAME NEWLINE alternatives

    alternatives ::= alternative
                   | alternatives alternative

    -- alternative : Indentation item (Space item)* Newline
    alternative ::= INDENTATION items NEWLINE

    items ::= item
            | items SPACE item

    item ::= NAME
           | SINGLETON
           | range_
           | range_ exclude
           | STRING

    -- range_ : Singleton Space '.' Space Singleton
    range_ ::= SINGLETON SPACE DOT SPACE SINGLETON

    -- exclude : Space '-' Space (Singleton | range_) exclude?
    exclude ::= SPACE MINUS SPACE SINGLETON
              | SPACE MINUS SPACE range_
              | SPACE MINUS SPACE SINGLETON exclude
              | SPACE MINUS SPACE range_ exclude
%End
