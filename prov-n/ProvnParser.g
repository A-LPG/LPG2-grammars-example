-- Provn Parser (LPG)

%Options la=2
%Options fp=ProvnParser
%options package=lpg.grammars.prov_n
%options template=dtParserTemplateF.gi
%options import_terminals=ProvnLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    document
%End
%Rules
    document ::= $empty
              | items
    items ::= item
            | items item
    item ::= IDENTIFIER
           | NUMBER
           | STRING
           | DOCUMENT
           | ENDDOCUMENT
           | PREFIX
           | DEFAULT
           | ENTITY
           | ACTIVITY
           | AGENT
           | WASGENERATEDBY
           | USED
           | WASINFORMEDBY
           | WASSTARTEDBY
           | WASENDEDBY
           | WASINVALIDATEDBY
           | WASDERIVEDFROM
           | WASATTRIBUTEDTO
           | WASASSOCIATEDWITH
           | ACTEDONBEHALFOF
           | WASINFLUENCEDBY
           | ALTERNATEOF
           | SPECIALIZATIONOF
           | MENTIONOF
           | HADMEMBER
           | BUNDLE
           | LPAREN
           | RPAREN
           | LBRACKET
           | RBRACKET
           | COMMA
           | EQ
           | COLON
           | MINUS
%End
