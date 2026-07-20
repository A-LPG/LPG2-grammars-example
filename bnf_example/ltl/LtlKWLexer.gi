-- Keyword filter for Ltl (aligned to parser terminal names)
%options package=lpg.grammars.ltl
%options template=KeywordTemplateF.gi
%options fp=LtlKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ATOMIC
    FALSE
    TRUE
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
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
%End
