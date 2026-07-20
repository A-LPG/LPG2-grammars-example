-- Keyword filter for Smalltalk (aligned to parser terminal names)
%options package=lpg.grammars.smalltalk
%options template=KeywordTemplateF.gi
%options fp=SmalltalkKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ASSIGNMENT
    CARROT
    HASH
    KEYWORD
    PERIOD
    PIPE
    STRING
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a s s i g n m e n t /.$setResult($_ASSIGNMENT);./
    Keyword ::= c a r r o t /.$setResult($_CARROT);./
    Keyword ::= e y w o r d /.$setResult($_KEYWORD);./
    Keyword ::= p e r i o d /.$setResult($_PERIOD);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= h a s h /.$setResult($_HASH);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
%End
