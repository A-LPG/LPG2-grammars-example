-- HTML Parser (LPG) — curated language subset
-- EBNF port: %Options ebnf (twin: bnf_example).
-- document of elements / text / attributes (not a generic token soup)

%Options la=2,ebnf
%Options fp=HtmlParser
%options package=lpg.grammars.html
%options template=dtParserTemplateF.gi
%options import_terminals=HtmlLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    document
%End

%Rules
    document ::= node_list
               | $empty

    node_list ::= node
                | node_list node

    node ::= element
           | doctype
           | text

    doctype ::= LANGLE BANG name name_list RANGLE

    name_list ::= name
                | name_list name

    element ::= empty_element
              | start_tag content end_tag

    empty_element ::= LANGLE name attr_list SLASH RANGLE
                    | LANGLE name SLASH RANGLE

    start_tag ::= LANGLE name attr_list RANGLE
                | LANGLE name RANGLE

    end_tag ::= LANGLE SLASH name RANGLE

    content ::= $empty
              | node_list

    attr_list ::= attr
                | attr_list attr

    attr ::= name EQ attr_value
           | name

    attr_value ::= STRING
                 | NUMBER
                 | IDENTIFIER

    name ::= IDENTIFIER
           | name MINUS IDENTIFIER
           | name COLON IDENTIFIER
           | name DOT IDENTIFIER

    text ::= text_atom
           | text text_atom

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
