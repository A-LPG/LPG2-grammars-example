-- Keyword filter for R
%options package=lpg.grammars.r
%options template=KeywordTemplateF.gi
%options fp=RKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    BREAK
    ELSE
    FALSE
    FOR
    FUNCTION
    IF
    IN
    INF
    NA
    NAN
    NEXT
    NULL
    REPEAT
    TRUE
    WHILE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= r e p e a t /.$setResult($_REPEAT);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n u l l /.$setResult($_NULL);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n f /.$setResult($_INF);./
    Keyword ::= n a n /.$setResult($_NAN);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= n a /.$setResult($_NA);./
%End
