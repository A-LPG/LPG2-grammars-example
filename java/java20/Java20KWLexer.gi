-- Keyword filter for Java20 (aligned to parser terminal names)
%options package=lpg.grammars.java.java20
%options template=KeywordTemplateF.gi
%options fp=Java20KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABSTRACT
    ANDAND
    ASSERT
    AT
    BANG
    BOOLEAN
    BREAK
    BYTE
    CARET
    CASE
    CATCH
    CHAR
    CLASS
    COLONCOLON
    CONTINUE
    DEFAULT
    DO
    DOUBLE
    ELSE
    ENUM
    EXPORTS
    EXTENDS
    FINAL
    FINALLY
    FLOAT
    FOR
    IF
    IMPLEMENTS
    IMPORT
    INSTANCEOF
    INT
    INTERFACE
    LONG
    LSHIFT
    LTGT
    MINUSMINUS
    MODULE
    NATIVE
    NEW
    OPEN
    OPENS
    OROR
    PACKAGE
    PERCENT
    PERMITS
    PIPE
    PLUSPLUS
    PRIVATE
    PROTECTED
    PROVIDES
    PUBLIC
    RECORD
    REQUIRES
    RETURN
    RSHIFT
    SEALED
    SHORT
    STATIC
    STRICTFP
    SUPER
    SWITCH
    SYNCHRONIZED
    THIS
    THROW
    THROWS
    TILDE
    TO
    TRANSIENT
    TRANSITIVE
    TRY
    TextBlock
    URSHIFT
    USES
    VAR
    VOID
    VOLATILE
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
    Keyword ::= s y n c h r o n i z e d /.$setResult($_SYNCHRONIZED);./
    Keyword ::= c o l o n c o l o n /.$setResult($_COLONCOLON);./
    Keyword ::= i m p l e m e n t s /.$setResult($_IMPLEMENTS);./
    Keyword ::= i n s t a n c e o f /.$setResult($_INSTANCEOF);./
    Keyword ::= m i n u s m i n u s /.$setResult($_MINUSMINUS);./
    Keyword ::= t r a n s i t i v e /.$setResult($_TRANSITIVE);./
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= t e x t b l o c k /.$setResult($_TextBlock);./
    Keyword ::= t r a n s i e n t /.$setResult($_TRANSIENT);./
    Keyword ::= a b s t r a c t /.$setResult($_ABSTRACT);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= p l u s p l u s /.$setResult($_PLUSPLUS);./
    Keyword ::= p r o v i d e s /.$setResult($_PROVIDES);./
    Keyword ::= r e q u i r e s /.$setResult($_REQUIRES);./
    Keyword ::= s t r i c t f p /.$setResult($_STRICTFP);./
    Keyword ::= v o l a t i l e /.$setResult($_VOLATILE);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= e x p o r t s /.$setResult($_EXPORTS);./
    Keyword ::= e x t e n d s /.$setResult($_EXTENDS);./
    Keyword ::= f i n a l l y /.$setResult($_FINALLY);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p e r m i t s /.$setResult($_PERMITS);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= u r s h i f t /.$setResult($_URSHIFT);./
    Keyword ::= a n d a n d /.$setResult($_ANDAND);./
    Keyword ::= a s s e r t /.$setResult($_ASSERT);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= l s h i f t /.$setResult($_LSHIFT);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= n a t i v e /.$setResult($_NATIVE);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r e c o r d /.$setResult($_RECORD);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r s h i f t /.$setResult($_RSHIFT);./
    Keyword ::= s e a l e d /.$setResult($_SEALED);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= t h r o w s /.$setResult($_THROWS);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= o p e n s /.$setResult($_OPENS);./
    Keyword ::= s h o r t /.$setResult($_SHORT);./
    Keyword ::= s u p e r /.$setResult($_SUPER);./
    Keyword ::= t h r o w /.$setResult($_THROW);./
    Keyword ::= t i l d e /.$setResult($_TILDE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= y i e l d /.$setResult($_YIELD);./
    Keyword ::= b a n g /.$setResult($_BANG);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= l o n g /.$setResult($_LONG);./
    Keyword ::= l t g t /.$setResult($_LTGT);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= o r o r /.$setResult($_OROR);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= t h i s /.$setResult($_THIS);./
    Keyword ::= u s e s /.$setResult($_USES);./
    Keyword ::= v o i d /.$setResult($_VOID);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= v a r /.$setResult($_VAR);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= t o /.$setResult($_TO);./
%End
