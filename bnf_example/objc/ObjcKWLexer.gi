-- Keyword filter for Objc (aligned to parser terminal names)
%options package=lpg.grammars.objc
%options template=KeywordTemplateF.gi
%options fp=ObjcKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    AND
    ASSIGN
    AT
    ATOMIC
    ATTRIBUTE
    AUTO
    BANG
    BITAND
    BITOR
    BITXOR
    BLOCK
    BOOL
    BREAK
    BRIDGE
    BYCOPY
    BYREF
    CARET
    CASE
    CATCH
    CHAR
    CONST
    CONTINUE
    CONTRAVARIANT
    COPY
    COVARIANT
    DEC
    DEFAULT
    DEPRECATED
    DIRECT
    DO
    DOUBLE
    ELSE
    ENUM
    EQUAL
    EXTERN
    FALSE
    FINALLY
    FLOAT
    FOR
    GE
    GETTER
    GOTO
    ID
    IF
    IMP
    IN
    INC
    INLINE
    INOUT
    INT
    KINDOF
    KW_CLASS
    LBRACK
    LE
    LONG
    LP
    MINUSMINUS
    NIL
    NO
    NONATOMIC
    NONNULL
    NOTEQUAL
    NULLABLE
    NULL_
    ONEWAY
    OPTIONAL
    OR
    OUT
    PACKAGE
    PERCENT
    PLUSPLUS
    PRIVATE
    PROTECTED
    PROTOCOL_
    PUBLIC
    RBRACK
    READONLY
    READWRITE
    REGISTER
    REQUIRED
    RESTRICT
    RETAIN
    RETURN
    RP
    SEL
    SELF
    SETTER
    SHORT
    SIGNED
    SIZEOF
    STATIC
    STRONG
    STRUCT
    SUPER
    SWITCH
    TILDE
    TRUE
    TRY
    TYPEDEF
    TYPEOF
    UNDERSCORE
    UNION
    UNSIGNED
    UNUSED
    VOID
    VOLATILE
    WEAK
    WHILE
    YES
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c o n t r a v a r i a n t /.$setResult($_CONTRAVARIANT);./
    Keyword ::= d e p r e c a t e d /.$setResult($_DEPRECATED);./
    Keyword ::= m i n u s m i n u s /.$setResult($_MINUSMINUS);./
    Keyword ::= u n d e r s c o r e /.$setResult($_UNDERSCORE);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
    Keyword ::= c o v a r i a n t /.$setResult($_COVARIANT);./
    Keyword ::= n o n a t o m i c /.$setResult($_NONATOMIC);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= r e a d w r i t e /.$setResult($_READWRITE);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= n o t e q u a l /.$setResult($_NOTEQUAL);./
    Keyword ::= n u l l a b l e /.$setResult($_NULLABLE);./
    Keyword ::= o p t i o n a l /.$setResult($_OPTIONAL);./
    Keyword ::= p l u s p l u s /.$setResult($_PLUSPLUS);./
    Keyword ::= p r o t o c o l /.$setResult($_PROTOCOL_);./
    Keyword ::= r e a d o n l y /.$setResult($_READONLY);./
    Keyword ::= r e g i s t e r /.$setResult($_REGISTER);./
    Keyword ::= r e q u i r e d /.$setResult($_REQUIRED);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT);./
    Keyword ::= u n s i g n e d /.$setResult($_UNSIGNED);./
    Keyword ::= v o l a t i l e /.$setResult($_VOLATILE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= f i n a l l y /.$setResult($_FINALLY);./
    Keyword ::= n o n n u l l /.$setResult($_NONNULL);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= t y p e d e f /.$setResult($_TYPEDEF);./
    Keyword ::= a s s i g n /.$setResult($_ASSIGN);./
    Keyword ::= a t o m i c /.$setResult($_ATOMIC);./
    Keyword ::= b i t a n d /.$setResult($_BITAND);./
    Keyword ::= b i t x o r /.$setResult($_BITXOR);./
    Keyword ::= b r i d g e /.$setResult($_BRIDGE);./
    Keyword ::= b y c o p y /.$setResult($_BYCOPY);./
    Keyword ::= d i r e c t /.$setResult($_DIRECT);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e x t e r n /.$setResult($_EXTERN);./
    Keyword ::= g e t t e r /.$setResult($_GETTER);./
    Keyword ::= i n l i n e /.$setResult($_INLINE);./
    Keyword ::= l b r a c k /.$setResult($_LBRACK);./
    Keyword ::= o n e w a y /.$setResult($_ONEWAY);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r b r a c k /.$setResult($_RBRACK);./
    Keyword ::= r e t a i n /.$setResult($_RETAIN);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s e t t e r /.$setResult($_SETTER);./
    Keyword ::= s i g n e d /.$setResult($_SIGNED);./
    Keyword ::= s i z e o f /.$setResult($_SIZEOF);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= s t r o n g /.$setResult($_STRONG);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= t y p e o f /.$setResult($_TYPEOF);./
    Keyword ::= u n u s e d /.$setResult($_UNUSED);./
    Keyword ::= b i t o r /.$setResult($_BITOR);./
    Keyword ::= b l o c k /.$setResult($_BLOCK);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= b y r e f /.$setResult($_BYREF);./
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c l a s s /.$setResult($_KW_CLASS);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= e q u a l /.$setResult($_EQUAL);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= i n d o f /.$setResult($_KINDOF);./
    Keyword ::= i n o u t /.$setResult($_INOUT);./
    Keyword ::= s h o r t /.$setResult($_SHORT);./
    Keyword ::= s u p e r /.$setResult($_SUPER);./
    Keyword ::= t i l d e /.$setResult($_TILDE);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= a u t o /.$setResult($_AUTO);./
    Keyword ::= b a n g /.$setResult($_BANG);./
    Keyword ::= b o o l /.$setResult($_BOOL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= c o p y /.$setResult($_COPY);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= l o n g /.$setResult($_LONG);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= s e l f /.$setResult($_SELF);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= v o i d /.$setResult($_VOID);./
    Keyword ::= w e a k /.$setResult($_WEAK);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= d e c /.$setResult($_DEC);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i m p /.$setResult($_IMP);./
    Keyword ::= i n c /.$setResult($_INC);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= n i l /.$setResult($_NIL);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= s e l /.$setResult($_SEL);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= y e s /.$setResult($_YES);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= g e /.$setResult($_GE);./
    Keyword ::= i d /.$setResult($_ID);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= l e /.$setResult($_LE);./
    Keyword ::= l p /.$setResult($_LP);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= r p /.$setResult($_RP);./
%End
