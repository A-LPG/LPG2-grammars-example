-- ATerm Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Ported from antlr/grammars-v4 aterm/aterm.g4 for parse-level examples.

%Options la=2,ebnf
%Options fp=AtermParser
%options package=lpg.grammars.aterm
%options template=dtParserTemplateF.gi
%options import_terminals=AtermLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    aterm_
%End

%Rules
    aterm_ ::= term_

    term_ ::= afun opt_args opt_annotation
             | num_ opt_annotation
             | placeholder opt_annotation
             | list_ opt_annotation

    opt_args ::= args_?

    opt_annotation ::= annotation?

    afun ::= STRING_
            | ID_

    num_ ::= INT_
            | REAL_

    args_ ::= LPAREN RPAREN
             | LPAREN termlist RPAREN

    placeholder ::= LT term_ GT

    list_ ::= LBRACKET RBRACKET
             | LBRACKET termlist RBRACKET

    termlist ::= term_ (COMMA term_)*

    annotation ::= LBRACE RBRACE
                  | LBRACE termlist RBRACE
%End
