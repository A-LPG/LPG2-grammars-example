-- Clojure Parser (LPG)
%Options la=2
%Options fp=ClojureParser
%options package=lpg.grammars.clojure
%options template=dtParserTemplateF.gi
%options import_terminals=ClojureLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules
    file_ ::= forms
    forms ::= $empty | forms form
    form ::= literal | list_ | vector | map_ | reader
    literal ::= STRING | NUMBER | CHARACTER | NIL | TRUE | FALSE | KEYWORD | IDENTIFIER
    list_ ::= LPAREN forms RPAREN
    vector ::= LBRACKET forms RBRACKET
    map_ ::= LBRACE forms RBRACE
    reader ::= QUOTE form | BACKTICK form | TILDE form | AT form | CARET form form
             | HASH LBRACE forms RBRACE | HASH LPAREN forms RPAREN | HASH form
%End
