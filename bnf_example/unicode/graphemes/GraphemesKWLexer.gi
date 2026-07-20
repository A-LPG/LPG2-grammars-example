-- Keyword filter (unused keywords kept for filter template)
%options package=lpg.grammars.unicode.graphemes
%options template=KeywordTemplateF.gi
%options fp=GraphemesKWLexer
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
    Keyword ::= i d e n t /.$setResult($_IDENTIFIER);./
%End
