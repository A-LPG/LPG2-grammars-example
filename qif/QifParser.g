-- AUTO-GENERATED from antlr/grammars-v4 qif by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=QifParser
%options package=lpg.grammars.qif
%options template=dtParserTemplateF.gi
%options import_terminals=QifLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    qif
%End

%Rules
    qif ::= list_1

    record ::= list_3 eor

    recordtype ::= TYPE TEXT

    date ::= D DATE

    total ::= T NUM

    check ::= N NUM

    state_ ::= C STATE

    memo ::= M TEXT

    payee ::= P TEXT

    accountorcategory ::= L grp_4

    account ::= LB ACCNTCATNAME RB

    category ::= ACCNTCATNAME

    eor ::= EOR

    list_1 ::= $empty | list_1 record

    grp_2 ::= recordtype | date | total | check | state_ | memo | payee | accountorcategory

    list_3 ::= $empty | list_3 grp_2

    grp_4 ::= account | category

%End
