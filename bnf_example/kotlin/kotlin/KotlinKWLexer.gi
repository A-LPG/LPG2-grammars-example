-- Keyword filter for Kotlin
%options package=lpg.grammars.kotlin.kotlin
%options template=KeywordTemplateF.gi
%options fp=KotlinKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABSTRACT
    AS
    BREAK
    CATCH
    CLASS
    COMPANION
    CONTINUE
    DATA
    ELSE
    FALSE
    FINAL
    FINALLY
    FOR
    FUN
    IF
    IMPORT
    IN
    INLINE
    INTERNAL
    IS
    NULL
    OBJECT
    OPEN
    OVERRIDE
    PACKAGE
    PRIVATE
    PROTECTED
    PUBLIC
    RETURN
    SEALED
    SUPER
    SUSPEND
    THIS
    THROW
    TRUE
    TRY
    VAL
    VAR
    WHEN
    WHILE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c o m p a n i o n /.$setResult($_COMPANION);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= a b s t r a c t /.$setResult($_ABSTRACT);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= i n t e r n a l /.$setResult($_INTERNAL);./
    Keyword ::= o v e r r i d e /.$setResult($_OVERRIDE);./
    Keyword ::= f i n a l l y /.$setResult($_FINALLY);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= s u s p e n d /.$setResult($_SUSPEND);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= i n l i n e /.$setResult($_INLINE);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s e a l e d /.$setResult($_SEALED);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= s u p e r /.$setResult($_SUPER);./
    Keyword ::= t h r o w /.$setResult($_THROW);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= n u l l /.$setResult($_NULL);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= t h i s /.$setResult($_THIS);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= f u n /.$setResult($_FUN);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= v a l /.$setResult($_VAL);./
    Keyword ::= v a r /.$setResult($_VAR);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
%End
