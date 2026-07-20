%options package=lpg.grammars.orwell
%options template=KeywordTemplateF.gi
%options fp=OrwellKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    IF WHERE OTHERWISE ELSE
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= o t h e r w i s e /.$setResult($_OTHERWISE);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= i f /.$setResult($_IF);./
%End
