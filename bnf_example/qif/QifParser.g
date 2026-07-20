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

    -- qif_record (not record): Java 14+ forbids type name "record"
    qif_record ::= list_3 qif_eor

    recordtype ::= TYPE TEXT

    date ::= DATED

    total ::= TAMOUNT

    check ::= NAMOUNT

    memo ::= MTEXT

    payee ::= PTEXT

    -- legacy two-token shapes (unused by curated examples)
    grp_date ::= DATE | TEXT

    grp_num ::= NUM | TEXT

    state_ ::= C XMARK

    accountorcategory ::= L grp_4

    account ::= LB TEXT RB

    category ::= TEXT

    qif_eor ::= CARET

    list_1 ::= $empty | list_1 qif_record

    grp_2 ::= recordtype | date | total | check | state_ | memo | payee | accountorcategory

    list_3 ::= $empty | list_3 grp_2

    grp_4 ::= account | category

%End
