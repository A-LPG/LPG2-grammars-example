-- Keyword filter stub for SwiftFin (no keywords; default IDENTIFIER only)
%options package=lpg.grammars.swift_fin
%options template=KeywordTemplateF.gi
%options fp=SwiftFinKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    IDENTIFIER
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= z z z /.$setResult($_IDENTIFIER);./
%End
