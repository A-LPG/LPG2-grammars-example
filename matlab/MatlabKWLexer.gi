-- Keyword filter for Matlab
%options package=lpg.grammars.matlab
%options template=KeywordTemplateF.gi
%options fp=MatlabKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    BREAK
    CLEAR
    ELSE
    ELSEIF
    END
    FOR
    FUNCTION
    GLOBAL
    IF
    RETURN
    TRANSPOSE
    WHILE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= t r a n s p o s e /.$setResult($_TRANSPOSE);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c l e a r /.$setResult($_CLEAR);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i f /.$setResult($_IF);./
%End
