%options package=lpg.grammars.iso8601
%options template=KeywordTemplateF.gi
%options fp=Iso8601KWLexer
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
