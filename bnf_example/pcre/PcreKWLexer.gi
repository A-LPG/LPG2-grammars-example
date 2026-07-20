-- Dummy KW filter (PCRE is character-level; IDENTIFIER kept for template)
%options package=lpg.grammars.pcre
%options template=KeywordTemplateF.gi
%options fp=PcreKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    X
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= x x x /.$setResult($_X);./
%End
