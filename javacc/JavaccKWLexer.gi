-- Keyword filter for Javacc (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.javacc
%options template=KeywordTemplateF.gi
%options fp=JavaccKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABSTRACT
    ASSERT
    BOOLEAN
    BREAK
    BYTE
    CASE
    CATCH
    CHAR
    CLASS
    CONST
    CONTINUE
    CPPCODE
    DEFAULT
    DO
    DOUBLE
    ELSE
    ENUM
    EOF_
    EXTENDS
    FALSE
    FINAL
    FINALLY
    FLOAT
    FOR
    GOTO
    IF
    IMPLEMENTS
    IMPORT
    INSTANCEOF
    INT
    INTERFACE
    JAVACODE
    LONG
    LOOKAHEAD
    MORE_
    NATIVE
    NEW
    NULL
    PACKAGE
    PRIVATE
    PROTECTED
    PUBLIC
    RETURN
    SHORT
    SKIP_
    SPECIAL_TOKEN
    STATIC
    STRICTFP
    SUPER
    SWITCH
    SYNCHRONIZED
    TEMPLATE
    THIS
    THROW
    THROWS
    TOKEN
    TOKEN_MGR_DECLS
    TRANSIENT
    TRUE
    TRY
    TYPENAME
    VOID
    VOLATILE
    WHILE
    IGNORE_CASE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s y n c h r o n i z e d /.$setResult($_SYNCHRONIZED);./
    Keyword ::= i m p l e m e n t s /.$setResult($_IMPLEMENTS);./
    Keyword ::= i n s t a n c e o f /.$setResult($_INSTANCEOF);./
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= l o o k a h e a d /.$setResult($_LOOKAHEAD);./
    Keyword ::= i g n o r e _ c a s e /.$setResult($_IGNORE_CASE);./
    Keyword ::= j a v a c o d e /.$setResult($_JAVACODE);./
    Keyword ::= t o k e n _ m g r _ d e c l s /.$setResult($_TOKEN_MGR_DECLS);./
    Keyword ::= s p e c i a l _ t o k e n /.$setResult($_SPECIAL_TOKEN);./
    Keyword ::= t e m p l a t e /.$setResult($_TEMPLATE);./
    Keyword ::= c p p c o d e /.$setResult($_CPPCODE);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= t r a n s i e n t /.$setResult($_TRANSIENT);./
    Keyword ::= a b s t r a c t /.$setResult($_ABSTRACT);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= s t r i c t f p /.$setResult($_STRICTFP);./
    Keyword ::= t y p e n a m e /.$setResult($_TYPENAME);./
    Keyword ::= v o l a t i l e /.$setResult($_VOLATILE);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= e x t e n d s /.$setResult($_EXTENDS);./
    Keyword ::= f i n a l l y /.$setResult($_FINALLY);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= a s s e r t /.$setResult($_ASSERT);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= n a t i v e /.$setResult($_NATIVE);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= t h r o w s /.$setResult($_THROWS);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= s h o r t /.$setResult($_SHORT);./
    Keyword ::= s u p e r /.$setResult($_SUPER);./
    Keyword ::= t h r o w /.$setResult($_THROW);./
    Keyword ::= t o k e n /.$setResult($_TOKEN);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= l o n g /.$setResult($_LONG);./
    Keyword ::= m o r e /.$setResult($_MORE_);./
    Keyword ::= n u l l /.$setResult($_NULL);./
    Keyword ::= s k i p /.$setResult($_SKIP_);./
    Keyword ::= t h i s /.$setResult($_THIS);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= v o i d /.$setResult($_VOID);./
    Keyword ::= e o f /.$setResult($_EOF_);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
%End
