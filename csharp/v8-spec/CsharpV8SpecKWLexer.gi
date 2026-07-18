-- Keyword filter for CsharpV8Spec
%options package=lpg.grammars.csharp.v8_spec
%options template=KeywordTemplateF.gi
%options fp=CsharpV8SpecKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABSTRACT
    ASYNC
    BASE
    BOOL
    BREAK
    CATCH
    CLASS
    CONST
    CONTINUE
    ELSE
    FALSE
    FINALLY
    FOR
    FOREACH
    IF
    IN
    INT
    INTERFACE
    NAMESPACE
    NEW
    NULL
    OVERRIDE
    PARTIAL
    PRIVATE
    PROTECTED
    PUBLIC
    READONLY
    RETURN
    SEALED
    STATIC
    STRING_KW
    STRUCT
    THIS
    THROW
    TRUE
    TRY
    USING
    VAR
    VIRTUAL
    VOID
    WHILE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= n a m e s p a c e /.$setResult($_NAMESPACE);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= a b s t r a c t /.$setResult($_ABSTRACT);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= o v e r r i d e /.$setResult($_OVERRIDE);./
    Keyword ::= r e a d o n l y /.$setResult($_READONLY);./
    Keyword ::= f i n a l l y /.$setResult($_FINALLY);./
    Keyword ::= f o r e a c h /.$setResult($_FOREACH);./
    Keyword ::= p a r t i a l /.$setResult($_PARTIAL);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= v i r t u a l /.$setResult($_VIRTUAL);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s e a l e d /.$setResult($_SEALED);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= s t r i n g /.$setResult($_STRING_KW);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= a s y n c /.$setResult($_ASYNC);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= t h r o w /.$setResult($_THROW);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= b a s e /.$setResult($_BASE);./
    Keyword ::= b o o l /.$setResult($_BOOL);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= n u l l /.$setResult($_NULL);./
    Keyword ::= t h i s /.$setResult($_THIS);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= v o i d /.$setResult($_VOID);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= v a r /.$setResult($_VAR);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
%End
