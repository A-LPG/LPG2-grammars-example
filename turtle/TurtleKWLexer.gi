-- Keyword filter
%options package=lpg.grammars.turtle
%options template=KeywordTemplateF.gi
%options fp=TurtleKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    PREFIX
    BASE
    A
    TRUE
    FALSE
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
    0 1 2 3 4 5 6 7 8 9
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= p r e f i x /.$setResult($_PREFIX);./
              | b a s e /.$setResult($_BASE);./
              | a /.$setResult($_A);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
%End
