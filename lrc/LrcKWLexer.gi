-- Keyword filter for Lrc (aligned to parser terminal names)
%options package=lpg.grammars.lrc
%options template=KeywordTemplateF.gi
%options fp=LrcKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    LB
    RB
    TEXT
    TIMESTAMP
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= t e x t /.$setResult($_TEXT);./
    Keyword ::= l b /.$setResult($_LB);./
    Keyword ::= r b /.$setResult($_RB);./
%End
