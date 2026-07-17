-- Lucene Parser (LPG) — Wave D curated subset
%Options la=2
%Options fp=LuceneParser
%options package=lpg.grammars.lucene
%options template=dtParserTemplateF.gi
%options import_terminals=LuceneLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    query
%End
%Rules

    query ::= clause_list
    clause_list ::= clause | clause_list opt_op clause
    opt_op ::= $empty | AND | OR
    clause ::= opt_not term
    opt_not ::= $empty | NOT
    term ::= IDENTIFIER
           | STRING
           | IDENTIFIER COLON IDENTIFIER
           | IDENTIFIER COLON STRING
           | LBRACKET IDENTIFIER TO IDENTIFIER RBRACKET

%End
