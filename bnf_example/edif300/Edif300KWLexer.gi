-- Keyword filter for Edif300 (rebuilt from parser+lexer exports)
%options package=lpg.grammars.edif300
%options template=KeywordTemplateF.gi
%options fp=Edif300KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    STRING_LITERAL
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s t r i n g l i t e r a l /.$setResult($_STRING_LITERAL);./
%End
