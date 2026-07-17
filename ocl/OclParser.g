-- Ocl Parser (LPG)

%Options la=2
%Options fp=OclParser
%options package=lpg.grammars.ocl
%options template=dtParserTemplateF.gi
%options import_terminals=OclLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    specification
%End
%Rules
    specification ::= $empty
              | items
    items ::= item
            | items item
    item ::= IDENTIFIER
           | NUMBER
           | STRING
           | PACKAGE
           | ENDPACKAGE
           | CONTEXT
           | INV
           | PRE
           | POST
           | DEF
           | BODY
           | INIT
           | DERIVE
           | IF
           | THEN
           | ELSE
           | ENDIF
           | LET
           | IN
           | AND
           | OR
           | XOR
           | NOT
           | IMPLIES
           | TRUE
           | FALSE
           | NULL
           | INVALID
           | SELF
           | RESULT
           | EQ
           | COLON
           | COMMA
           | DOT
           | LBRACE
           | RBRACE
           | LBRACKET
           | RBRACKET
           | LPAREN
           | RPAREN
           | PLUS
           | MINUS
           | STAR
           | SLASH
           | LT
           | GT
           | BANG
           | PIPE
           | SEMI
%End
