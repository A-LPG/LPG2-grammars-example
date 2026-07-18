-- Keyword filter for Lambda (aligned to parser terminal names)
%options package=lpg.grammars.lambda
%options template=KeywordTemplateF.gi
%options fp=LambdaKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    LAMBDA
    VARIABLE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= v a r i a b l e /.$setResult($_VARIABLE);./
    Keyword ::= l a m b d a /.$setResult($_LAMBDA);./
%End
