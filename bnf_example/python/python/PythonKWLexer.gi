-- Keyword filter for Python (aligned to parser terminal names)
%options package=lpg.grammars.python.python
%options template=KeywordTemplateF.gi
%options fp=PythonKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    AND
    AS
    ASSERT
    ASYNC
    AT
    AWAIT
    BREAK
    CARET
    CLASS
    CONTINUE
    DEF
    DEL
    ELIF
    ELSE
    EXCEPT
    EXEC
    FALSE
    FINALLY
    FOR
    FROM
    GLOBAL
    IF
    IMPORT
    IN
    IS
    LAMBDA
    LSHIFT
    NONE
    NONLOCAL
    NOT
    OR
    PASS
    PERCENT
    PIPE
    PRINT
    RAISE
    RETURN
    RSHIFT
    SLASHSLASH
    STARSTAR
    STRING
    TILDE
    TRUE
    TRY
    WHILE
    WITH
    YIELD
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s l a s h s l a s h /.$setResult($_SLASHSLASH);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= n o n l o c a l /.$setResult($_NONLOCAL);./
    Keyword ::= s t a r s t a r /.$setResult($_STARSTAR);./
    Keyword ::= f i n a l l y /.$setResult($_FINALLY);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= a s s e r t /.$setResult($_ASSERT);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= l a m b d a /.$setResult($_LAMBDA);./
    Keyword ::= l s h i f t /.$setResult($_LSHIFT);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r s h i f t /.$setResult($_RSHIFT);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= a s y n c /.$setResult($_ASYNC);./
    Keyword ::= a w a i t /.$setResult($_AWAIT);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= p r i n t /.$setResult($_PRINT);./
    Keyword ::= r a i s e /.$setResult($_RAISE);./
    Keyword ::= t i l d e /.$setResult($_TILDE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= y i e l d /.$setResult($_YIELD);./
    Keyword ::= e l i f /.$setResult($_ELIF);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x e c /.$setResult($_EXEC);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= p a s s /.$setResult($_PASS);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= d e f /.$setResult($_DEF);./
    Keyword ::= d e l /.$setResult($_DEL);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= o r /.$setResult($_OR);./
%End
