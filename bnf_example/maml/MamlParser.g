-- MAML Parser (LPG)
-- Ported from antlr/grammars-v4 maml/MAML.g4

%Options la=2
%Options fp=MamlParser
%options package=lpg.grammars.maml
%options template=dtParserTemplateF.gi
%options import_terminals=MamlLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    maml
%End

%Rules
    maml ::= optNl value optNl

    optNl ::= $empty | NL

    value ::= object
            | array
            | STRING
            | RAW_STRING
            | NUMBER
            | TRUE
            | FALSE
            | NULLLITERAL

    object ::= LBRACE optNl RBRACE
             | LBRACE optNl members optSep RBRACE

    members ::= member
              | members separator member

    member ::= key optNl COLON optNl value

    key ::= IDENTIFIER
          | STRING
          | NUMBER
          | TRUE
          | FALSE
          | NULLLITERAL

    array ::= LBRACKET optNl RBRACKET
            | LBRACKET optNl items optSep RBRACKET

    items ::= value
            | items separator value

    separator ::= COMMA optNl
                | NL

    optSep ::= $empty | separator
%End
