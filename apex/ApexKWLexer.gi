-- Keyword filter for Apex (aligned to parser terminal names)
%options package=lpg.grammars.apex
%options template=KeywordTemplateF.gi
%options fp=ApexKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABSTRACT
    ANDAND
    AT
    BANG
    BREAK
    BYTE
    CARET
    CATCH
    CHAR
    CLASS
    CONTINUE
    DEFAULT
    DO
    ELSE
    ENUM
    EXTENDS
    FATARROW
    FINAL
    FINALLY
    FLOAT
    FOR
    GET
    GLOBAL
    IF
    IMPLEMENTS
    IMPORT
    INSTANCEOF
    INT
    INTERFACE
    LTGT
    MINUSMINUS
    NATIVE
    NEW
    OROR
    OVERRIDE
    PACKAGE
    PERCENT
    PIPE
    PLUSPLUS
    PRIVATE
    PROTECTED
    PUBLIC
    RETURN
    RUNAS
    SET
    SHORT
    STATIC
    STRING
    SUPER
    SYNCHRONIZED
    TESTMETHOD
    THIS
    THROW
    THROWS
    TILDE
    TRANSIENT
    TRY
    VIRTUAL
    VOID
    WEBSERVICE
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
    Keyword ::= s y n c h r o n i z e d /.$setResult($_SYNCHRONIZED);./
    Keyword ::= i m p l e m e n t s /.$setResult($_IMPLEMENTS);./
    Keyword ::= i n s t a n c e o f /.$setResult($_INSTANCEOF);./
    Keyword ::= m i n u s m i n u s /.$setResult($_MINUSMINUS);./
    Keyword ::= t e s t m e t h o d /.$setResult($_TESTMETHOD);./
    Keyword ::= w e b s e r v i c e /.$setResult($_WEBSERVICE);./
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= t r a n s i e n t /.$setResult($_TRANSIENT);./
    Keyword ::= a b s t r a c t /.$setResult($_ABSTRACT);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= f a t a r r o w /.$setResult($_FATARROW);./
    Keyword ::= o v e r r i d e /.$setResult($_OVERRIDE);./
    Keyword ::= p l u s p l u s /.$setResult($_PLUSPLUS);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= e x t e n d s /.$setResult($_EXTENDS);./
    Keyword ::= f i n a l l y /.$setResult($_FINALLY);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= v i r t u a l /.$setResult($_VIRTUAL);./
    Keyword ::= a n d a n d /.$setResult($_ANDAND);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= n a t i v e /.$setResult($_NATIVE);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= t h r o w s /.$setResult($_THROWS);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= r u n a s /.$setResult($_RUNAS);./
    Keyword ::= s h o r t /.$setResult($_SHORT);./
    Keyword ::= s u p e r /.$setResult($_SUPER);./
    Keyword ::= t h r o w /.$setResult($_THROW);./
    Keyword ::= t i l d e /.$setResult($_TILDE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= b a n g /.$setResult($_BANG);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= l t g t /.$setResult($_LTGT);./
    Keyword ::= o r o r /.$setResult($_OROR);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= t h i s /.$setResult($_THIS);./
    Keyword ::= v o i d /.$setResult($_VOID);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
%End
