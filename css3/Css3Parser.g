-- Css3 Parser (LPG) — curated subset
%Options la=2
%Options fp=Css3Parser
%options package=lpg.grammars.css3
%options template=dtParserTemplateF.gi
%options import_terminals=Css3Lexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    stylesheet
%End
%Rules

    stylesheet ::= rule_list
    rule_list ::= rule_ | rule_list rule_
    rule_ ::= selector_list LBRACE decl_list RBRACE
    selector_list ::= selector | selector_list COMMA selector
    selector ::= IDENTIFIER | DOT IDENTIFIER | HASH_ID
    decl_list ::= $empty | decl_list declaration
    declaration ::= IDENTIFIER COLON value SEMI
    value ::= IDENTIFIER | NUMBER | STRING | HASH_ID

%End
