-- Keyword filter
%options package=lpg.grammars.yini
%options template=KeywordTemplateF.gi
%options fp=YiniKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    YES
    NO
    TRUE
    FALSE
    NULL
    ON
    OFF
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
    Keyword ::= y e s /.$setResult($_YES);./
              | n o /.$setResult($_NO);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n u l l /.$setResult($_NULL);./
              | o n /.$setResult($_ON);./
              | o f f /.$setResult($_OFF);./
%End
