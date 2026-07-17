-- Sexpression Parser (LPG)
%Options la=2
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
    sexpr ::= item_list
            | $empty

    item_list ::= item
                | item_list item

    item ::= atom
           | list_
           | LPAREN item DOT item RPAREN

    list_ ::= LPAREN RPAREN
            | LPAREN item_list RPAREN

    atom ::= STRING
           | SYMBOL
           | NUMBER
           | DOT
%End
