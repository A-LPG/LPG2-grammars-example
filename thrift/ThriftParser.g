-- Thrift Parser (LPG) — curated subset
%Options la=2
%Options fp=ThriftParser
%options package=lpg.grammars.thrift
%options template=dtParserTemplateF.gi
%options import_terminals=ThriftLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    document
%End
%Rules
    document ::= def_list
    def_list ::= $empty | def_list definition
    definition ::= typedef_ | struct_ | exception_ | service_
    typedef_ ::= TYPEDEF field_type IDENTIFIER
    struct_ ::= STRUCT IDENTIFIER LBRACE field_list RBRACE
    exception_ ::= EXCEPTION IDENTIFIER LBRACE field_list RBRACE
    service_ ::= SERVICE IDENTIFIER LBRACE func_list RBRACE
    field_list ::= $empty | field_list field
    field ::= INTEGER COLON REQUIRED field_type IDENTIFIER
            | INTEGER COLON OPTIONAL field_type IDENTIFIER
            | INTEGER COLON field_type IDENTIFIER
            | field_type IDENTIFIER
    func_list ::= $empty | func_list function_
    function_ ::= VOID IDENTIFIER LPAREN RPAREN
                | field_type IDENTIFIER LPAREN field_list RPAREN
    field_type ::= BOOL | BYTE | I16 | I32 | I64 | DOUBLE | STRING | BINARY | IDENTIFIER
                 | LIST LT field_type GT | SET LT field_type GT
                 | MAP LT field_type COMMA field_type GT
%End
