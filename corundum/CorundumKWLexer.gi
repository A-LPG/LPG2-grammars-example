-- Keyword filter for Corundum (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.corundum
%options template=KeywordTemplateF.gi
%options fp=CorundumKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    BREAK
    DEF
    ELSE
    ELSIF
    END
    FALSE
    FOR
    IF
    NIL
    PIR
    REQUIRE
    RETRY
    RETURN
    TRUE
    UNLESS
    WHILE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= r e q u i r e /.$setResult($_REQUIRE);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= u n l e s s /.$setResult($_UNLESS);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= e l s i f /.$setResult($_ELSIF);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= r e t r y /.$setResult($_RETRY);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= d e f /.$setResult($_DEF);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= n i l /.$setResult($_NIL);./
    Keyword ::= p i r /.$setResult($_PIR);./
    Keyword ::= i f /.$setResult($_IF);./
%End
