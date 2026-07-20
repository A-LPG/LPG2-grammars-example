-- SZF Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).

%Options la=2,ebnf
%Options fp=SzfParser
%options package=lpg.grammars.szf
%options template=dtParserTemplateF.gi
%options import_terminals=SzfLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= headers_opt

    headers_opt ::= header_*

    header_ ::= HEADER_START header_items_opt

    header_items_opt ::= header_item*

    header_item ::= keyvalue_
                   | region_

    region_ ::= REGION_START keyvalues_opt

    keyvalues_opt ::= keyvalue_*

    keyvalue_ ::= key_ EQUAL value_

    key_ ::= ID

    value_ ::= ID
              | NUM
%End
