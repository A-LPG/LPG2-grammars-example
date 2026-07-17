-- Iri Parser (LPG) — curated subset
%Options la=2
%Options fp=IriParser
%options package=lpg.grammars.iri
%options template=dtParserTemplateF.gi
%options import_terminals=IriLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    parse
%End
%Rules

    parse ::= iri
    iri ::= SCHEME COLON SLASH SLASH authority path
    authority ::= IDENTIFIER | IDENTIFIER DOT IDENTIFIER | IDENTIFIER DOT IDENTIFIER DOT IDENTIFIER
                | IDENTIFIER DOT IDENTIFIER DOT IDENTIFIER DOT IDENTIFIER
    path ::= $empty | path SLASH IDENTIFIER

%End
