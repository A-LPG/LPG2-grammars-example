-- Cypher Parser (LPG) — curated subset
%Options la=2
%Options fp=CypherParser
%options package=lpg.grammars.cypher
%options template=dtParserTemplateF.gi
%options import_terminals=CypherLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    query
%End
%Rules

    query ::= MATCH pattern RETURN expr
    pattern ::= LPAREN IDENTIFIER RPAREN | LPAREN IDENTIFIER COLON IDENTIFIER RPAREN
    expr ::= IDENTIFIER | NUMBER | STRING | TRUE | FALSE | NULLLITERAL

%End
