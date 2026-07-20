-- SZF Parser (LPG)

%Options la=2
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

    headers_opt ::= $empty
                  | headers

    headers ::= header_
              | headers header_

    header_ ::= HEADER_START header_items_opt

    header_items_opt ::= $empty
                       | header_items

    header_items ::= header_item
                   | header_items header_item

    header_item ::= keyvalue_
                  | region_

    region_ ::= REGION_START keyvalues_opt

    keyvalues_opt ::= $empty
                    | keyvalues

    keyvalues ::= keyvalue_
                | keyvalues keyvalue_

    keyvalue_ ::= key_ EQUAL value_

    key_ ::= ID
    value_ ::= ID
             | NUM
%End
