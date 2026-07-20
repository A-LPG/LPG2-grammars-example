-- Keyword filter for Css3 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.css3
%options template=KeywordTemplateF.gi
%options fp=Css3KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    X
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= x x x /.$setResult($_X);./
%End
