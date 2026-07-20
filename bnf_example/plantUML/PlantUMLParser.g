-- AUTO-GENERATED from antlr/grammars-v4 plantUML by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=PlantUMLParser
%options package=lpg.grammars.plantUML
%options template=dtParserTemplateF.gi
%options import_terminals=PlantUMLLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    entry_
%End

%Rules
    entry_ ::= uml

    uml ::= list_2 STARTUML opt_3 list_5 ENDUML list_7

    class_dclr ::= opt_8 CLASS ident opt_9 opt_10 opt_13

    class_body ::= CLASS_BODY_START list_14 BODY_CLOSE

    body_content ::= BODY_INLINE_BRACES
           | BODY_OPEN
           | BODY_CONTENT
           | BODY_NL
           | nested_body

    nested_body ::= BODY_OPEN list_15 BODY_CLOSE

    class_type ::= grp_16

    stereotype ::= STEREOTYPE_TEXT

    extension_dclr ::= EXTENDS ident

    ident ::= IDENTIFIER

    enum_dclr ::= ENUM ident opt_17 opt_18

    association_dclr ::= association_left grp_19

    relation ::= opt_21 list_23 opt_24

    association_left ::= ident opt_25

    association_right ::= opt_26 ident

    association_detail ::= ASSOC_DETAIL

    association_name ::= AFTER_COLON_TEXT

    associative_class_dclr ::= LPAREN ident COMMA ident RPAREN grp_27 ident opt_28
           | ident grp_29 LPAREN ident COMMA ident RPAREN opt_30

    grp_1 ::= NEWLINE | COMMENT

    list_2 ::= $empty | list_2 grp_1

    opt_3 ::= IDENTIFIER | $empty

    grp_4 ::= NEWLINE | class_dclr | enum_dclr | association_dclr | associative_class_dclr | COMMENT

    list_5 ::= $empty | list_5 grp_4

    grp_6 ::= NEWLINE | COMMENT

    list_7 ::= $empty | list_7 grp_6

    opt_8 ::= class_type | $empty

    opt_9 ::= stereotype | $empty

    opt_10 ::= extension_dclr | $empty

    opt_11 ::= NEWLINE | $empty

    seq_12 ::= opt_11 class_body

    opt_13 ::= seq_12 | $empty

    list_14 ::= $empty | list_14 body_content

    list_15 ::= $empty | list_15 body_content

    grp_16 ::= ABSTRACT | INTERFACE

    opt_17 ::= stereotype | $empty

    opt_18 ::= class_body | $empty

    opt_20 ::= association_name | $empty

    grp_19 ::= relation association_right opt_20 | association_name

    opt_21 ::= LT | $empty

    grp_22 ::= DOUBLE_DOT | DASH | PIPE_GT | LT_PIPE | O | CARET | STAR

    list_23 ::= $empty | list_23 grp_22

    opt_24 ::= GT | $empty

    opt_25 ::= association_detail | $empty

    opt_26 ::= association_detail | $empty

    grp_27 ::= DOT | DOUBLE_DOT

    opt_28 ::= association_name | $empty

    grp_29 ::= DOT | DOUBLE_DOT

    opt_30 ::= association_name | $empty

%End
