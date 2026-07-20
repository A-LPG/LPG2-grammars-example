-- McKeeman Form Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Ported from antlr/grammars-v4 mckeeman-form/McKeemanForm.g4 for parse-level examples.

%Options la=2,ebnf
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
    grammar_ ::= rule_ (NEWLINE rule_)*

    rule_ ::= NAME NEWLINE alternatives

    alternatives ::= alternative+

    alternative ::= INDENTATION items NEWLINE

    items ::= item (SPACE item)*

    item ::= NAME
            | SINGLETON
            | range_
            | range_ exclude
            | STRING

    range_ ::= SINGLETON SPACE DOT SPACE SINGLETON

    exclude ::= SPACE MINUS SPACE SINGLETON
               | SPACE MINUS SPACE range_
               | SPACE MINUS SPACE SINGLETON exclude
               | SPACE MINUS SPACE range_ exclude
%End
