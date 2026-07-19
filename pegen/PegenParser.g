-- AUTO-GENERATED from antlr/grammars-v4 pegen by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=PegenParser
%options package=lpg.grammars.pegen
%options backtrack
%options template=btParserTemplateF.gi
%options import_terminals=PegenLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    start
%End

%Rules
    start ::= grammar_

    grammar_ ::= opt_1 rules

    metas ::= list_2

    meta ::= AT name newline
           | AT name name newline
           | AT name string newline

    rules ::= list_3

    rule_ ::= rulename opt_4 COLON alts newline indent more_alts dedent
           | rulename opt_5 COLON newline indent more_alts dedent
           | rulename opt_6 COLON alts newline

    rulename ::= name opt_7

    attribute ::= seq_9

    memoflag ::= LPAREN MEMO RPAREN

    alts ::= alt list_11

    more_alts ::= list_13

    alt ::= items DOLLAR opt_14
           | items opt_15

    items ::= list_16

    named_item ::= opt_17 item
           | forced_atom
           | lookahead

    attribute_name ::= name LBRACKET name STAR RBRACKET EQ
           | name LBRACKET name RBRACKET EQ
           | name EQ

    forced_atom ::= AMP AMP atom

    lookahead ::= AMP atom
           | BANG atom
           | TILDE

    item ::= LBRACKET alts RBRACKET
           | atom QUESTION
           | atom STAR
           | atom PLUS
           | atom DOT atom PLUS
           | atom

    atom ::= LPAREN alts RPAREN
           | name
           | string

    action ::= ACTION

    name ::= IDENTIFIER

    string ::= STRING

    newline ::= NEWLINE | $empty

    indent ::= $empty

    dedent ::= $empty

    number ::= NUMBER

    opt_1 ::= metas | $empty

    list_2 ::= meta | list_2 meta

    list_3 ::= rule_ | list_3 rule_

    opt_4 ::= memoflag | $empty

    opt_5 ::= memoflag | $empty

    opt_6 ::= memoflag | $empty

    opt_7 ::= attribute | $empty

    opt_8 ::= STAR | $empty

    seq_9 ::= LBRACKET name opt_8 RBRACKET

    grp_10 ::= BAR alt

    list_11 ::= $empty | list_11 grp_10

    grp_12 ::= BAR alts newline

    list_13 ::= grp_12 | list_13 grp_12

    opt_14 ::= action | $empty

    opt_15 ::= action | $empty

    list_16 ::= named_item | list_16 named_item

    opt_17 ::= attribute_name | $empty

%End
