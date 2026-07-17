-- Generated parse-level parser
%Options la=2
%Options fp=MooParser
%options package=lpg.grammars.moo
%options template=dtParserTemplateF.gi
%options import_terminals=MooLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    prog
%End
%Rules
    prog ::= items
            | $empty
    items ::= item
            | items item
    item ::= atom
           | paren
           | brace
           | bracket
    paren ::= LPAREN RPAREN
            | LPAREN items RPAREN
    brace ::= LBRACE RBRACE
            | LBRACE items RBRACE
    bracket ::= LBRACKET RBRACKET
              | LBRACKET items RBRACKET
    atom ::= IDENTIFIER
           | NUMBER
           | STRING
           | COMMA
           | DOT
           | COLON
           | EQ
           | PLUS
           | MINUS
           | STAR
           | SLASH
           | AMP
           | BAR
           | CARET
           | BANG
           | QUEST
           | AT
           | DOLLAR
           | PERCENT
           | TILDE
           | BACKTICK
           | LANGLE
           | RANGLE
           | BACKSLASH
           | QUOTE
           | HASH
%End
