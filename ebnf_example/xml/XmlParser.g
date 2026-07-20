-- XML Parser (LPG) — curated language subset
-- EBNF port: %Options ebnf (twin: bnf_example).
-- optional prolog, elements with attributes and nested content

%Options la=2,ebnf
%Options fp=XmlParser
%options package=lpg.grammars.xml
%options template=dtParserTemplateF.gi
%options import_terminals=XmlLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    document
%End

%Rules
    document ::= prolog element
                | element

    prolog ::= LANGLE QUEST name attr_list QUEST RANGLE
              | LANGLE QUEST name QUEST RANGLE

    element ::= empty_element
               | start_tag content end_tag

    empty_element ::= LANGLE name attr_list SLASH RANGLE
                     | LANGLE name SLASH RANGLE

    start_tag ::= LANGLE name attr_list RANGLE
                 | LANGLE name RANGLE

    end_tag ::= LANGLE SLASH name RANGLE

    content ::= content_item*

    content_item ::= element
                    | text

    attr_list ::= attr+

    attr ::= name EQ attr_value

    attr_value ::= STRING
                  | NUMBER

    name ::= IDENTIFIER
            | name MINUS IDENTIFIER
            | name COLON IDENTIFIER
            | name DOT IDENTIFIER

    text ::= text_atom+

    text_atom ::= IDENTIFIER
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
                 | BACKSLASH
                 | QUOTE
                 | SEMI
                 | HASH
                 | LPAREN
                 | RPAREN
                 | LBRACE
                 | RBRACE
                 | LBRACKET
                 | RBRACKET
%End
