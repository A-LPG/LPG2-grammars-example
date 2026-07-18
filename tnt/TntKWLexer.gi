-- Keyword filter for Tnt (aligned to parser terminal names)
%options package=lpg.grammars.tnt
%options template=KeywordTemplateF.gi
%options fp=TntKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    EXISTS
    FOREVERY
    PRIME
    SUCCESSOR
    TILDE
    ZERO
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s u c c e s s o r /.$setResult($_SUCCESSOR);./
    Keyword ::= f o r e v e r y /.$setResult($_FOREVERY);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= p r i m e /.$setResult($_PRIME);./
    Keyword ::= t i l d e /.$setResult($_TILDE);./
    Keyword ::= z e r o /.$setResult($_ZERO);./
%End
