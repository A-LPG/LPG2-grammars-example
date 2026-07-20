-- Keyword filter for Scss (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.scss
%options template=KeywordTemplateF.gi
%options fp=ScssKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    And
    As
    False
    From
    If
    In
    Not
    Only
    Or
    Through
    Time
    To
    True
    Using
    With
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= t h r o u g h /.$setResult($_Through);./
    Keyword ::= f a l s e /.$setResult($_False);./
    Keyword ::= u s i n g /.$setResult($_Using);./
    Keyword ::= f r o m /.$setResult($_From);./
    Keyword ::= o n l y /.$setResult($_Only);./
    Keyword ::= t r u e /.$setResult($_True);./
    Keyword ::= w i t h /.$setResult($_With);./
    Keyword ::= a n d /.$setResult($_And);./
    Keyword ::= n o t /.$setResult($_Not);./
    Keyword ::= a s /.$setResult($_As);./
    Keyword ::= i f /.$setResult($_If);./
    Keyword ::= i n /.$setResult($_In);./
    Keyword ::= m s /.$setResult($_Time);./
    Keyword ::= o r /.$setResult($_Or);./
    Keyword ::= t o /.$setResult($_To);./
    Keyword ::= s /.$setResult($_Time);./
%End
