-- Keyword filter for Rego (aligned to parser terminal names)
%options package=lpg.grammars.rego
%options template=KeywordTemplateF.gi
%options fp=RegoKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    As
    Bool
    Default
    Else
    Import
    Not
    Null
    Package
    With
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= p a c k a g e /.$setResult($_Package);./
    Keyword ::= d e f a u l t /.$setResult($_Default);./
    Keyword ::= i m p o r t /.$setResult($_Import);./
    Keyword ::= f a l s e /.$setResult($_Bool);./
    Keyword ::= t r u e /.$setResult($_Bool);./
    Keyword ::= e l s e /.$setResult($_Else);./
    Keyword ::= n u l l /.$setResult($_Null);./
    Keyword ::= w i t h /.$setResult($_With);./
    Keyword ::= n o t /.$setResult($_Not);./
    Keyword ::= a s /.$setResult($_As);./
%End
