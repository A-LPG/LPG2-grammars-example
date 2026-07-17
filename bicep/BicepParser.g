-- Bicep Parser (LPG) — curated subset
%Options la=2
%Options fp=BicepParser
%options package=lpg.grammars.bicep
%options template=dtParserTemplateF.gi
%options import_terminals=BicepLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules

    file_ ::= stmt_list
    stmt_list ::= stmt | stmt_list stmt
    stmt ::= PARAM IDENTIFIER type_
           | VAR IDENTIFIER EQ expr
           | METADATA IDENTIFIER EQ expr
    type_ ::= STRING_T | INT_T | BOOL_T | OBJECT_T | ARRAY_T | IDENTIFIER
    expr ::= NUMBER | STRING | TRUE | FALSE | NULLLITERAL | IDENTIFIER | object_
    object_ ::= LBRACE RBRACE | LBRACE field_list RBRACE
    field_list ::= field | field_list field
    field ::= IDENTIFIER COLON expr

%End
