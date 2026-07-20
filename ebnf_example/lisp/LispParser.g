-- Lisp Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Ported from antlr/grammars-v4 lisp/lisp.g4 for parse-level examples.

%Options la=2,ebnf
%Options fp=LispParser
%options package=lpg.grammars.lisp
%options template=dtParserTemplateF.gi
%options import_terminals=LispLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    lisp_
%End

%Rules
    -- lisp_ : s_expression+ EOF
    lisp_ ::= s_expressions

    s_expressions ::= s_expression
                    | s_expressions s_expression

    -- s_expression : ATOMIC_SYMBOL | '(' s_expression '.' s_expression ')' | list
    s_expression ::= ATOMIC_SYMBOL
                   | LPAREN s_expression DOT s_expression RPAREN
                   | list

    -- list : '(' s_expression+ ')'
    list ::= LPAREN s_expressions RPAREN
%End
