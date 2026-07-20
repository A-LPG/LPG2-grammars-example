-- EbnfParser (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options la=2
%Options fp=EbnfParser
%options package=lpg.grammars.ebnf
%options template=dtParserTemplateF.gi
%options import_terminals=EbnfLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    rulelist
%End

%Rules
    rulelist ::= $empty
               | rules

    rules ::= rule_
            | rules rule_

    rule_ ::= lhs ASSIGN rhs

    lhs ::= id_
    rhs ::= alternatives

    alternatives ::= alternative
                   | alternatives PIPE alternative

    alternative ::= $empty
                  | elements

    elements ::= element
               | elements element

    element ::= optional_ | zeroormore | oneormore | text_ | id_

    optional_ ::= LBRACKET alternatives RBRACKET
    zeroormore ::= LBRACE alternatives RBRACE
    oneormore ::= LPAREN alternatives RPAREN

    text_ ::= ID
    id_ ::= LT ruleid GT
    ruleid ::= ID
%End
