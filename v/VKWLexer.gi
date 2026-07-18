-- Keyword filter for V (aligned to parser terminal names)
%options package=lpg.grammars.v
%options template=KeywordTemplateF.gi
%options fp=VKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ANDAND
    BANG
    BITCLEAR
    BREAK
    CARET
    CASE
    CONST
    CONTINUE
    DEFAULT
    ELSE
    FN
    FOR
    IF
    IMPORT
    IN
    INTERFACE
    LSHIFT
    MAP
    MINUSMINUS
    MODULE
    MUT
    OROR
    PERCENT
    PIPE
    PLUSPLUS
    PUB
    RETURN
    RSHIFT
    STRING
    STRUCT
    SWITCH
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= m i n u s m i n u s /.$setResult($_MINUSMINUS);./
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= b i t c l e a r /.$setResult($_BITCLEAR);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= p l u s p l u s /.$setResult($_PLUSPLUS);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= a n d a n d /.$setResult($_ANDAND);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= l s h i f t /.$setResult($_LSHIFT);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r s h i f t /.$setResult($_RSHIFT);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= b a n g /.$setResult($_BANG);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= o r o r /.$setResult($_OROR);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= m a p /.$setResult($_MAP);./
    Keyword ::= m u t /.$setResult($_MUT);./
    Keyword ::= p u b /.$setResult($_PUB);./
    Keyword ::= f n /.$setResult($_FN);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
%End
