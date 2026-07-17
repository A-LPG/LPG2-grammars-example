-- Creole Parser (LPG)
%Options la=2
%Options fp=CreoleParser
%options package=lpg.grammars.creole
%options template=dtParserTemplateF.gi
%options import_terminals=CreoleLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    document
%End
%Rules
    document ::= $empty | lines
    lines ::= line_part | lines line_part
    line_part ::= line NL | NL | line

    line ::= markup | line markup

    markup ::= bold | italics | href | title | hline | text_
             | listitem | image | tablerow | tableheader | nowiki

    -- text_ must start with TEXT so '//' can begin italics
    text_ ::= TEXT text_tail
    text_tail ::= $empty
                | text_tail TEXT
                | text_tail RSLASH
                | text_tail DBLSLASH text_

    bold ::= BOLD markups opt_bold
    opt_bold ::= $empty | BOLD
    markups ::= markup | markups markup

    italics ::= RSLASH RSLASH markups RSLASH RSLASH

    href ::= LBRACKET text_ opt_href_tail RBRACKET
           | LBRACE text_ PIPE markups RBRACE
    opt_href_tail ::= $empty | PIPE markups

    image ::= LBRACE text_ RBRACE

    hline ::= HLINE

    listitem ::= stars markup | hashes markup
    stars ::= STAR | stars STAR
    hashes ::= HASH | hashes HASH

    tableheader ::= header_cells PIPE opt_ws_text
    header_cells ::= PIPEEQ markups | header_cells PIPEEQ markups

    tablerow ::= row_cells PIPE opt_ws_text
    row_cells ::= PIPE markups | row_cells PIPE markups

    opt_ws_text ::= $empty | TEXT

    title ::= eqs markups opt_eqs
    eqs ::= EQ | eqs EQ
    opt_eqs ::= $empty | eqs

    nowiki ::= NOWIKI
%End
