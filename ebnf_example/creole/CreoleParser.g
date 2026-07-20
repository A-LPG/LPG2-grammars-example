-- Creole Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example; g4: creole/creole.g4).
%Options la=2,ebnf
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
    document ::= line_part*

    line_part ::= line NL | NL | line

    line ::= markup+

    markup ::= bold | italics | href | title | hline | text_
             | listitem | image | tablerow | tableheader | nowiki

    -- text_ must start with TEXT so '//' can begin italics
    text_ ::= TEXT text_tail
    text_tail ::= $empty
                | text_tail TEXT
                | text_tail RSLASH
                | text_tail DBLSLASH text_

    bold ::= BOLD markup+ BOLD?

    italics ::= RSLASH RSLASH markup+ RSLASH RSLASH

    href ::= LBRACKET text_ (PIPE markup+)? RBRACKET
           | LBRACE text_ PIPE markup+ RBRACE

    image ::= LBRACE text_ RBRACE

    hline ::= HLINE

    listitem ::= STAR+ markup | HASH+ markup

    tableheader ::= (PIPEEQ markup+)+ PIPE TEXT?

    tablerow ::= (PIPE markup+)+ PIPE TEXT?

    -- Keep eqs left-recursion: EQ+/EQ* shifts title/closing-equals conflicts.
    title ::= eqs markup+ opt_eqs
    eqs ::= EQ | eqs EQ
    opt_eqs ::= $empty | eqs

    nowiki ::= NOWIKI
%End
