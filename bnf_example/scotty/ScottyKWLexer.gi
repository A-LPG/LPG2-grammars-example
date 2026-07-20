-- Keyword filter for Scotty (aligned to parser terminal names)
%options package=lpg.grammars.scotty
%options template=KeywordTemplateF.gi
%options fp=ScottyKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    EQUAL
    FUN
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= e q u a l /.$setResult($_EQUAL);./
    Keyword ::= f u n /.$setResult($_FUN);./
%End
