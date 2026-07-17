-- Javadoc Parser (LPG)
%Options la=2
%Options fp=JavadocParser
%options package=lpg.grammars.javadoc
%options template=dtParserTemplateF.gi
%options import_terminals=JavadocLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    documentation
%End
%Rules
    documentation ::= JAVADOC_START content JAVADOC_END opt_nl
    content ::= $empty | content tok
    tok ::= NAME | TEXT_CONTENT | SPACE | NEWLINE | STAR | SLASH | AT | BRACE_OPEN | BRACE_CLOSE
    opt_nl ::= $empty | opt_nl NEWLINE
%End
