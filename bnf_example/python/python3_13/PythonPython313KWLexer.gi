-- Keyword filter for PythonPython313 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.python.python3_13
%options template=KeywordTemplateF.gi
%options fp=PythonPython313KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    AND
    AS
    ASSERT
    ASYNC
    AWAIT
    BREAK
    CLASS
    CONTINUE
    DEF
    DEL
    ELIF
    ELSE
    EXCEPT
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
    NAME_OR_CASE
    NAME_OR_MATCH
    NAME_OR_TYPE
    NONE
    NONLOCAL
    NOT
    OR
    PASS
    RAISE
    RETURN
    TRUE
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
    Keyword ::= n o n l o c a l /.$setResult($_NONLOCAL);./
    Keyword ::= f i n a l l y /.$setResult($_FINALLY);./
    Keyword ::= a s s e r t /.$setResult($_ASSERT);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= l a m b d a /.$setResult($_LAMBDA);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= a s y n c /.$setResult($_ASYNC);./
    Keyword ::= a w a i t /.$setResult($_AWAIT);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= m a t c h /.$setResult($_NAME_OR_MATCH);./
    Keyword ::= r a i s e /.$setResult($_RAISE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= y i e l d /.$setResult($_YIELD);./
    Keyword ::= c a s e /.$setResult($_NAME_OR_CASE);./
    Keyword ::= e l i f /.$setResult($_ELIF);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= p a s s /.$setResult($_PASS);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_NAME_OR_TYPE);./
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
