-- PlyParser (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options la=2
%Options fp=PlyParser
%options package=lpg.grammars.ply
%options template=dtParserTemplateF.gi
%options import_terminals=PlyLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    ply
%End

%Rules
    ply ::= header
          | header vertices
          | header vertices faces
          | header faces

    header ::= plydeclaration format_ header_items end_header

    header_items ::= $empty
                   | header_items element
                   | header_items property_

    end_header ::= END_HEADER EOL

    format_ ::= FORMAT ASCII_1_0 EOL

    element ::= ELEMENT string number EOL

    property_ ::= scalarproperty | listproperty

    scalarproperty ::= PROPERTY type_ string EOL

    listproperty ::= PROPERTY LIST type_ type_ string EOL

    type_ ::= CHAR | UCHAR | SHORT | USHORT | INT | UINT | FLOAT | DOUBLE | FLOAT32 | UINT8 | INT32

    plydeclaration ::= PLY EOL

    vertices ::= vertex
               | vertices vertex

    faces ::= face
            | faces face

    vertex ::= number number number EOL

    face ::= number number number numbers EOL

    numbers ::= number
              | numbers number

    number ::= NUMBER
    string ::= IDENTIFIER
%End
