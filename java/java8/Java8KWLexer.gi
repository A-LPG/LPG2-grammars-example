-- Keyword filter for Java8 (aligned to parser terminal names)
%options package=lpg.grammars.java.java8
%options template=KeywordTemplateF.gi
%options fp=Java8KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABSTRACT
    AMPEQ
    ASSERT
    BOOLEAN
    BREAK
    BYTE
    BooleanLiteral
    CARETEQ
    CASE
    CATCH
    CHAR
    CLASS
    CONTINUE
    DEFAULT
    DO
    DOUBLE
    ELSE
    ENUM
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
    LSHIFTEQ
    MINUSEQ
    NATIVE
    NEW
    NOTEQ
    NullLiteral
    PACKAGE
    PERCENTEQ
    PIPEEQ
    PLUSEQ
    PRIVATE
    PROTECTED
    PUBLIC
    RETURN
    RSHIFTEQ
    SHORT
    SLASHEQ
    STAREQ
    STATIC
    STRICTFP
    SUPER
    SWITCH
    SYNCHRONIZED
    THIS
    THROW
    THROWS
    TRANSIENT
    TRY
    URSHIFTEQ
    VOID
    VOLATILE
    WHILE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= t r u e /.$setResult($_BooleanLiteral);./
    Keyword ::= f a l s e /.$setResult($_BooleanLiteral);./
    Keyword ::= n u l l /.$setResult($_NullLiteral);./
    Keyword ::= b o o l e a n l i t e r a l /.$setResult($_BooleanLiteral);./
    Keyword ::= s y n c h r o n i z e d /.$setResult($_SYNCHRONIZED);./
    Keyword ::= n u l l l i t e r a l /.$setResult($_NullLiteral);./
    Keyword ::= i m p l e m e n t s /.$setResult($_IMPLEMENTS);./
    Keyword ::= i n s t a n c e o f /.$setResult($_INSTANCEOF);./
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= p e r c e n t e q /.$setResult($_PERCENTEQ);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= t r a n s i e n t /.$setResult($_TRANSIENT);./
    Keyword ::= u r s h i f t e q /.$setResult($_URSHIFTEQ);./
    Keyword ::= a b s t r a c t /.$setResult($_ABSTRACT);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= l s h i f t e q /.$setResult($_LSHIFTEQ);./
    Keyword ::= r s h i f t e q /.$setResult($_RSHIFTEQ);./
    Keyword ::= s t r i c t f p /.$setResult($_STRICTFP);./
    Keyword ::= v o l a t i l e /.$setResult($_VOLATILE);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= c a r e t e q /.$setResult($_CARETEQ);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= e x t e n d s /.$setResult($_EXTENDS);./
    Keyword ::= f i n a l l y /.$setResult($_FINALLY);./
    Keyword ::= m i n u s e q /.$setResult($_MINUSEQ);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= s l a s h e q /.$setResult($_SLASHEQ);./
    Keyword ::= a s s e r t /.$setResult($_ASSERT);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= n a t i v e /.$setResult($_NATIVE);./
    Keyword ::= p i p e e q /.$setResult($_PIPEEQ);./
    Keyword ::= p l u s e q /.$setResult($_PLUSEQ);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s t a r e q /.$setResult($_STAREQ);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= t h r o w s /.$setResult($_THROWS);./
    Keyword ::= a m p e q /.$setResult($_AMPEQ);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= n o t e q /.$setResult($_NOTEQ);./
    Keyword ::= s h o r t /.$setResult($_SHORT);./
    Keyword ::= s u p e r /.$setResult($_SUPER);./
    Keyword ::= t h r o w /.$setResult($_THROW);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= l o n g /.$setResult($_LONG);./
    Keyword ::= t h i s /.$setResult($_THIS);./
    Keyword ::= v o i d /.$setResult($_VOID);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
%End
