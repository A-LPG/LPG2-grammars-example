-- Keyword filter for Angelscript (real spellings from grammars-v4 angelscript.g4)
%options package=lpg.grammars.angelscript
%options template=KeywordTemplateF.gi
%options fp=AngelscriptKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABSTRACT
    AUTO
    BREAK
    CASE
    CATCH
    CLASS
    CONST
    CONTINUE
    DEFAULT
    DO
    ELSE
    ENUM
    EXTERNAL
    FINAL
    FOR
    FROM
    FUNCDEF
    FUNCTION
    GET
    IF
    IMPORT
    IN
    INOUT
    INTERFACE
    MIXIN
    NAMESPACE
    OUT
    PRIVATE
    PROTECTED
    RETURN
    SET
    SHARED
    SWITCH
    TRY
    TYPEDEF
    VOID
    WHILE
    PRIMTYPE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= f u n c d e f /.$setResult($_FUNCDEF);./
    Keyword ::= t y p e d e f /.$setResult($_TYPEDEF);./
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= n a m e s p a c e /.$setResult($_NAMESPACE);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= a b s t r a c t /.$setResult($_ABSTRACT);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= i n t 1 6 /.$setResult($_PRIMTYPE);./
    Keyword ::= i n t 3 2 /.$setResult($_PRIMTYPE);./
    Keyword ::= i n t 6 4 /.$setResult($_PRIMTYPE);./
    Keyword ::= u i n t 1 6 /.$setResult($_PRIMTYPE);./
    Keyword ::= u i n t 3 2 /.$setResult($_PRIMTYPE);./
    Keyword ::= u i n t 6 4 /.$setResult($_PRIMTYPE);./
    Keyword ::= d o u b l e /.$setResult($_PRIMTYPE);./
    Keyword ::= f l o a t /.$setResult($_PRIMTYPE);./
    Keyword ::= i n t 8 /.$setResult($_PRIMTYPE);./
    Keyword ::= u i n t 8 /.$setResult($_PRIMTYPE);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s h a r e d /.$setResult($_SHARED);./
    Keyword ::= u i n t /.$setResult($_PRIMTYPE);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= i n o u t /.$setResult($_INOUT);./
    Keyword ::= m i x i n /.$setResult($_MIXIN);./
    Keyword ::= v o i d /.$setResult($_PRIMTYPE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= a u t o /.$setResult($_AUTO);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= i n t /.$setResult($_PRIMTYPE);./
    Keyword ::= b o o l /.$setResult($_PRIMTYPE);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
%End
