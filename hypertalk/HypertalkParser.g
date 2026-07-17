-- Generated parse-level parser
%Options la=2
%Options fp=HypertalkParser
%options package=lpg.grammars.hypertalk
%options template=dtParserTemplateF.gi
%options import_terminals=HypertalkLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    script
%End
%Rules
    script ::= items
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
