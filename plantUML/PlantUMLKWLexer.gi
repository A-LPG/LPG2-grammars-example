-- PlantUML keyword filter
%options package=lpg.grammars.plantUML
%options template=KeywordTemplateF.gi
%options fp=PlantUMLKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    CLASS
    ENUM
    INTERFACE
    ABSTRACT
    EXTENDS
    NULL_LITERAL
    IDENTIFIER
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= c l a s s /.$setResult($_CLASS);./
              | e n u m /.$setResult($_ENUM);./
              | i n t e r f a c e /.$setResult($_INTERFACE);./
              | a b s t r a c t /.$setResult($_ABSTRACT);./
              | e x t e n d s /.$setResult($_EXTENDS);./
              | n u l l /.$setResult($_NULL_LITERAL);./
%End
