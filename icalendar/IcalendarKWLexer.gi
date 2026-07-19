-- Dummy keyword filter (char-level lexer emits tokens directly)
%options package=lpg.grammars.icalendar
%options template=KeywordTemplateF.gi
%options fp=IcalendarKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    IDENTIFIER
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= $empty
%End
