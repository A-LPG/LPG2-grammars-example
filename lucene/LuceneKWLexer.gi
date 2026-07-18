-- Keyword filter for Lucene query language (AND/OR/NOT/TO)
%options package=lpg.grammars.lucene
%options template=KeywordTemplateF.gi
%options fp=LuceneKWLexer

%Include
    KWLexerMapF.gi
%End

%Export
    AND
    OR
    NOT
    TO
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= A N D /.$setResult($_AND);./
    Keyword ::= O R /.$setResult($_OR);./
    Keyword ::= N O T /.$setResult($_NOT);./
    Keyword ::= T O /.$setResult($_TO);./
%End
