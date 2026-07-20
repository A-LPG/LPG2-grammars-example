-- Keyword filter for Limbo (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.limbo
%options template=KeywordTemplateF.gi
%options fp=LimboKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ADT
    ALT
    ARRAY
    BREAK
    CASE
    CHAN
    CON
    CONTINUE
    CYCLICOPT
    DO
    ELSE
    EXIT
    FN
    FOR
    IF
    IMPLEMENT
    IMPORT
    INCLUDE
    LIST
    LOAD
    MODULE
    NIL
    OF
    OR
    PICK
    REF
    REFOPT
    RETURN
    SELF
    SPAWN
    TO
    TYPE
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
    Keyword ::= c y c l i c o p t /.$setResult($_CYCLICOPT);./
    Keyword ::= i m p l e m e n t /.$setResult($_IMPLEMENT);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= r e f o p t /.$setResult($_REFOPT);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= s p a w n /.$setResult($_SPAWN);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c h a n /.$setResult($_CHAN);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= l i s t /.$setResult($_LIST);./
    Keyword ::= l o a d /.$setResult($_LOAD);./
    Keyword ::= p i c k /.$setResult($_PICK);./
    Keyword ::= s e l f /.$setResult($_SELF);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= a d t /.$setResult($_ADT);./
    Keyword ::= a l t /.$setResult($_ALT);./
    Keyword ::= c o n /.$setResult($_CON);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= n i l /.$setResult($_NIL);./
    Keyword ::= r e f /.$setResult($_REF);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= f n /.$setResult($_FN);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
