%options package=lpg.grammars.smiles
%options template=KeywordTemplateF.gi
%options fp=SmilesKWLexer
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
