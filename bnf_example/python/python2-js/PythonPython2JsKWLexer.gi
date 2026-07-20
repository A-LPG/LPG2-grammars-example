-- Keyword filter for PythonPython2Js (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.python.python2_js
%options template=KeywordTemplateF.gi
%options fp=PythonPython2JsKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    PASS
    CONTINUE
    BREAK
    AND
    AS
    ASSERT
    CLASS
    DEF
    DEL
    ELIF
    ELSE
    EXCEPT
    EXEC
    FINALLY
    FOR
    FROM
    GLOBAL
    IF
    IMPORT
    IN
    IS
    LAMBDA
    NOT
    OR
    RAISE
    RETURN
    TRY
    WHILE
    WITH
    YIELD
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= f i n a l l y /.$setResult($_FINALLY);./
    Keyword ::= a s s e r t /.$setResult($_ASSERT);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= l a m b d a /.$setResult($_LAMBDA);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= r a i s e /.$setResult($_RAISE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= y i e l d /.$setResult($_YIELD);./
    Keyword ::= e l i f /.$setResult($_ELIF);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x e c /.$setResult($_EXEC);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= p a s s /.$setResult($_PASS);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= d e f /.$setResult($_DEF);./
    Keyword ::= d e l /.$setResult($_DEL);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= o r /.$setResult($_OR);./
%End
