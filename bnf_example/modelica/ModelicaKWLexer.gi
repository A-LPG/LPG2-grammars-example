-- Keyword filter for Modelica (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.modelica
%options template=KeywordTemplateF.gi
%options fp=ModelicaKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ALGORITHM
    AND
    ANNOTATION
    BLOCK
    BREAK
    CLASS
    CONNECT
    CONNECTOR
    CONSTANT
    CONSTRAINEDBY
    DER
    DISCRETE
    EACH
    ELSE
    ELSEIF
    ELSEWHEN
    ENCAPSULATED
    END
    ENUMERATION
    EQUATION
    EXPANDABLE
    EXTENDS
    EXTERNAL
    FALSE
    FINAL
    FLOW
    FOR
    FUNCTION
    IF
    IMPORT
    IMPURE
    IN
    INITIAL
    INNER
    INPUT
    LOOP
    MODEL
    NOT
    OPERATOR
    OR
    OUTER
    OUTPUT
    PACKAGE
    PARAMETER
    PARTIAL
    PROTECTED
    PUBLIC
    PURE
    RECORD
    REDECLARE
    REPLACEABLE
    RETURN
    STREAM
    THEN
    TRUE
    TYPE
    WHEN
    WHILE
    WITHIN
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c o n s t r a i n e d b y /.$setResult($_CONSTRAINEDBY);./
    Keyword ::= e n c a p s u l a t e d /.$setResult($_ENCAPSULATED);./
    Keyword ::= e n u m e r a t i o n /.$setResult($_ENUMERATION);./
    Keyword ::= r e p l a c e a b l e /.$setResult($_REPLACEABLE);./
    Keyword ::= a n n o t a t i o n /.$setResult($_ANNOTATION);./
    Keyword ::= e x p a n d a b l e /.$setResult($_EXPANDABLE);./
    Keyword ::= a l g o r i t h m /.$setResult($_ALGORITHM);./
    Keyword ::= c o n n e c t o r /.$setResult($_CONNECTOR);./
    Keyword ::= p a r a m e t e r /.$setResult($_PARAMETER);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= r e d e c l a r e /.$setResult($_REDECLARE);./
    Keyword ::= c o n s t a n t /.$setResult($_CONSTANT);./
    Keyword ::= d i s c r e t e /.$setResult($_DISCRETE);./
    Keyword ::= e l s e w h e n /.$setResult($_ELSEWHEN);./
    Keyword ::= e q u a t i o n /.$setResult($_EQUATION);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= o p e r a t o r /.$setResult($_OPERATOR);./
    Keyword ::= c o n n e c t /.$setResult($_CONNECT);./
    Keyword ::= e x t e n d s /.$setResult($_EXTENDS);./
    Keyword ::= i n i t i a l /.$setResult($_INITIAL);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p a r t i a l /.$setResult($_PARTIAL);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= i m p u r e /.$setResult($_IMPURE);./
    Keyword ::= o u t p u t /.$setResult($_OUTPUT);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r e c o r d /.$setResult($_RECORD);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s t r e a m /.$setResult($_STREAM);./
    Keyword ::= w i t h i n /.$setResult($_WITHIN);./
    Keyword ::= b l o c k /.$setResult($_BLOCK);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= i n p u t /.$setResult($_INPUT);./
    Keyword ::= m o d e l /.$setResult($_MODEL);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= e a c h /.$setResult($_EACH);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f l o w /.$setResult($_FLOW);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= p u r e /.$setResult($_PURE);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= d e r /.$setResult($_DER);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= o r /.$setResult($_OR);./
%End
