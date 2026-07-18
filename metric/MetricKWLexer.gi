-- Keyword filter for Metric (aligned to parser terminal names)
%options package=lpg.grammars.metric
%options template=KeywordTemplateF.gi
%options fp=MetricKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    CARET
    INTE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= i n t e /.$setResult($_INTE);./
%End
