-- Generated parse-level parser
%Options la=2
%Options fp=KirikiriTjsParser
%options package=lpg.grammars.kirikiri_tjs
%options template=dtParserTemplateF.gi
%options import_terminals=KirikiriTjsLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules
    program ::= items
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
           | SEMI
           | HASH
%End
