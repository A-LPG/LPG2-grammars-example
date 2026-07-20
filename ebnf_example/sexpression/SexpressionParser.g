-- S-expression parser from grammars-v4 sexpression/sexpression.g4
-- EBNF port: %Options ebnf (twin: bnf_example).
-- real_g4_port: sexpr / item / list_ / atom + dotted pairs.
-- DOT omitted as bare atom (LALR: conflicts with dotted-pair marker).

%Options la=3,ebnf
%Options fp=SexpressionParser
%options package=lpg.grammars.sexpression
%options template=dtParserTemplateF.gi
%options import_terminals=SexpressionLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    sexpr
%End

%Rules
    -- sexpr : item* EOF
    sexpr ::= item_list

    item_list ::= (item_list item)?

    item ::= atom
            | list_

    list_ ::= LPAREN contents RPAREN

    contents ::= %Empty
                | item DOT item
                | nonempty_items

    nonempty_items ::= item+

    atom ::= STRING
            | SYMBOL
            | NUMBER
%End
