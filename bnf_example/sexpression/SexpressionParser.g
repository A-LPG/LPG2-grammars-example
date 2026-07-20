-- S-expression parser from grammars-v4 sexpression/sexpression.g4
-- real_g4_port: sexpr / item / list_ / atom + dotted pairs.
-- DOT omitted as bare atom (LALR: conflicts with dotted-pair marker).

%Options la=3
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

    item_list ::= %Empty
           | item_list item

    -- item : atom | list_
    item ::= atom
           | list_

    -- list_ : '(' item* ')' | '(' item '.' item ')'
    list_ ::= LPAREN contents RPAREN

    contents ::= %Empty
           | item DOT item
           | nonempty_items

    nonempty_items ::= item
           | nonempty_items item

    -- atom : STRING | SYMBOL | NUMBER  (DOT only as dotted-pair marker)
    atom ::= STRING
           | SYMBOL
           | NUMBER
%End
