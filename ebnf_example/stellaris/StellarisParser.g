-- Stellaris Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Ported from antlr/grammars-v4 stellaris/stellaris.g4

%Options la=2,ebnf
%Options fp=StellarisParser
%options package=lpg.grammars.stellaris
%options template=dtParserTemplateF.gi
%options import_terminals=StellarisLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    content
%End

%Rules
    content ::= exprs

    exprs ::= expr+

    expr ::= keyvals

    keyvals ::= keyval+

    keyval ::= key ops val

    ops ::= op+

    op ::= EQ
          | GT
          | LT

    key ::= id_
           | attrib

    val ::= id_
           | attrib
           | group

    attrib ::= id_ accessor id_
              | id_ accessor attrib

    accessor ::= DOT
                | AT
                | COLON

    group ::= LBRACE RBRACE
             | LBRACE id_ RBRACE
             | LBRACE exprs RBRACE

    id_ ::= IDENTIFIER
           | STRING
           | INTEGER
%End
