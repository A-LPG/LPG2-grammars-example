-- Keyword filter for Ctl (aligned to parser terminal names)
%options package=lpg.grammars.ctl
%options template=KeywordTemplateF.gi
%options fp=CtlKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ATOMIC
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a t o m i c /.$setResult($_ATOMIC);./
%End
