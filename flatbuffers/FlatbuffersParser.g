-- Flatbuffers Parser (LPG)

%Options la=2
%Options fp=FlatbuffersParser
%options package=lpg.grammars.flatbuffers
%options template=dtParserTemplateF.gi
%options import_terminals=FlatbuffersLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    schema
%End
%Rules
    schema ::= $empty
              | items
    items ::= item
            | items item
    item ::= IDENTIFIER
           | NUMBER
           | STRING
           | ATTRIBUTE
           | ENUM
           | FILE_EXTENSION
           | FILE_IDENTIFIER
           | INCLUDE
           | NATIVE_INCLUDE
           | NAMESPACE
           | ROOT_TYPE
           | RPC_SERVICE
           | STRUCT
           | TABLE
           | UNION
           | bool
           | byte
           | ubyte
           | short
           | ushort
           | int
           | uint
           | float
           | long
           | ulong
           | double
           | int8
           | uint8
           | int16
           | uint16
           | int32
           | uint32
           | int64
           | uint64
           | float32
           | float64
           | string
           | SEMI
           | EQ
           | COLON
           | COMMA
           | DOT
           | LPAREN
           | RPAREN
           | LBRACE
           | RBRACE
           | LBRACKET
           | RBRACKET
           | PLUS
           | MINUS
%End
