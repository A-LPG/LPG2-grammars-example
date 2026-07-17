-- Smiles Parser (LPG)

%Options la=2
%Options fp=SmilesParser
%options package=lpg.grammars.smiles
%options template=dtParserTemplateF.gi
%options import_terminals=SmilesLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    smiles
%End

%Rules
    smiles ::= $empty
              | items

    items ::= item
            | items item

    item ::= LETTER
           | DIGIT
           | LBRACKET
           | RBRACKET
           | LPAREN
           | RPAREN
           | EQ
           | HASH
           | COLON
           | SLASH
           | BSLASH
           | ATAT
           | AT
           | PLUS
           | MINUS
           | PERCENT
           | STAR
           | DOT
%End
