-- Keyword filter for Idl (aligned to parser terminal names)
%options package=lpg.grammars.idl
%options template=KeywordTemplateF.gi
%options fp=IdlKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    AMPERSAND
    AT
    CARET
    KW_ABSTRACT
    KW_ANY
    KW_ATTRIBUTE
    KW_BITFIELD
    KW_BITMASK
    KW_BITSET
    KW_BOOLEAN
    KW_CASE
    KW_CHAR
    KW_COMPONENT
    KW_CONST
    KW_CONSUMES
    KW_CONTEXT
    KW_CUSTOM
    KW_DEFAULT
    KW_DOUBLE
    KW_EMITS
    KW_ENUM
    KW_EVENTTYPE
    KW_EXCEPTION
    KW_FACTORY
    KW_FINDER
    KW_FIXED
    KW_FLOAT
    KW_GETRAISES
    KW_HOME
    KW_IMPORT
    KW_IN
    KW_INOUT
    KW_INTERFACE
    KW_LOCAL
    KW_LONG
    KW_MANAGES
    KW_MAP
    KW_MODULE
    KW_MULTIPLE
    KW_NATIVE
    KW_OBJECT
    KW_OCTET
    KW_ONEWAY
    KW_OUT
    KW_PRIMARYKEY
    KW_PRIVATE
    KW_PROVIDES
    KW_PUBLIC
    KW_PUBLISHES
    KW_RAISES
    KW_READONLY
    KW_SEQUENCE
    KW_SET
    KW_SETRAISES
    KW_SHORT
    KW_STRUCT
    KW_SUPPORTS
    KW_SWITCH
    KW_TRUNCATABLE
    KW_TYPEDEF
    KW_TYPEID
    KW_TYPEPREFIX
    KW_UNION
    KW_UNSIGNED
    KW_USES
    KW_VALUEBASE
    KW_VALUETYPE
    KW_VOID
    KW_WCHAR
    KW_WSTRING
    PERCENT
    PIPE
    STRING
    TILDE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= t r u n c a t a b l e /.$setResult($_KW_TRUNCATABLE);./
    Keyword ::= p r i m a r y k e y /.$setResult($_KW_PRIMARYKEY);./
    Keyword ::= t y p e p r e f i x /.$setResult($_KW_TYPEPREFIX);./
    Keyword ::= a m p e r s a n d /.$setResult($_AMPERSAND);./
    Keyword ::= a t t r i b u t e /.$setResult($_KW_ATTRIBUTE);./
    Keyword ::= c o m p o n e n t /.$setResult($_KW_COMPONENT);./
    Keyword ::= e v e n t t y p e /.$setResult($_KW_EVENTTYPE);./
    Keyword ::= e x c e p t i o n /.$setResult($_KW_EXCEPTION);./
    Keyword ::= g e t r a i s e s /.$setResult($_KW_GETRAISES);./
    Keyword ::= i n t e r f a c e /.$setResult($_KW_INTERFACE);./
    Keyword ::= p u b l i s h e s /.$setResult($_KW_PUBLISHES);./
    Keyword ::= s e t r a i s e s /.$setResult($_KW_SETRAISES);./
    Keyword ::= v a l u e b a s e /.$setResult($_KW_VALUEBASE);./
    Keyword ::= v a l u e t y p e /.$setResult($_KW_VALUETYPE);./
    Keyword ::= a b s t r a c t /.$setResult($_KW_ABSTRACT);./
    Keyword ::= b i t f i e l d /.$setResult($_KW_BITFIELD);./
    Keyword ::= c o n s u m e s /.$setResult($_KW_CONSUMES);./
    Keyword ::= m u l t i p l e /.$setResult($_KW_MULTIPLE);./
    Keyword ::= p r o v i d e s /.$setResult($_KW_PROVIDES);./
    Keyword ::= r e a d o n l y /.$setResult($_KW_READONLY);./
    Keyword ::= s e q u e n c e /.$setResult($_KW_SEQUENCE);./
    Keyword ::= s u p p o r t s /.$setResult($_KW_SUPPORTS);./
    Keyword ::= u n s i g n e d /.$setResult($_KW_UNSIGNED);./
    Keyword ::= b i t m a s k /.$setResult($_KW_BITMASK);./
    Keyword ::= b o o l e a n /.$setResult($_KW_BOOLEAN);./
    Keyword ::= c o n t e x t /.$setResult($_KW_CONTEXT);./
    Keyword ::= d e f a u l t /.$setResult($_KW_DEFAULT);./
    Keyword ::= f a c t o r y /.$setResult($_KW_FACTORY);./
    Keyword ::= m a n a g e s /.$setResult($_KW_MANAGES);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p r i v a t e /.$setResult($_KW_PRIVATE);./
    Keyword ::= t y p e d e f /.$setResult($_KW_TYPEDEF);./
    Keyword ::= w s t r i n g /.$setResult($_KW_WSTRING);./
    Keyword ::= b i t s e t /.$setResult($_KW_BITSET);./
    Keyword ::= c u s t o m /.$setResult($_KW_CUSTOM);./
    Keyword ::= d o u b l e /.$setResult($_KW_DOUBLE);./
    Keyword ::= f i n d e r /.$setResult($_KW_FINDER);./
    Keyword ::= i m p o r t /.$setResult($_KW_IMPORT);./
    Keyword ::= m o d u l e /.$setResult($_KW_MODULE);./
    Keyword ::= n a t i v e /.$setResult($_KW_NATIVE);./
    Keyword ::= o b j e c t /.$setResult($_KW_OBJECT);./
    Keyword ::= o n e w a y /.$setResult($_KW_ONEWAY);./
    Keyword ::= p u b l i c /.$setResult($_KW_PUBLIC);./
    Keyword ::= r a i s e s /.$setResult($_KW_RAISES);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s t r u c t /.$setResult($_KW_STRUCT);./
    Keyword ::= s w i t c h /.$setResult($_KW_SWITCH);./
    Keyword ::= t y p e i d /.$setResult($_KW_TYPEID);./
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= c o n s t /.$setResult($_KW_CONST);./
    Keyword ::= e m i t s /.$setResult($_KW_EMITS);./
    Keyword ::= f i x e d /.$setResult($_KW_FIXED);./
    Keyword ::= f l o a t /.$setResult($_KW_FLOAT);./
    Keyword ::= i n o u t /.$setResult($_KW_INOUT);./
    Keyword ::= l o c a l /.$setResult($_KW_LOCAL);./
    Keyword ::= o c t e t /.$setResult($_KW_OCTET);./
    Keyword ::= s h o r t /.$setResult($_KW_SHORT);./
    Keyword ::= t i l d e /.$setResult($_TILDE);./
    Keyword ::= u n i o n /.$setResult($_KW_UNION);./
    Keyword ::= w c h a r /.$setResult($_KW_WCHAR);./
    Keyword ::= c a s e /.$setResult($_KW_CASE);./
    Keyword ::= c h a r /.$setResult($_KW_CHAR);./
    Keyword ::= e n u m /.$setResult($_KW_ENUM);./
    Keyword ::= h o m e /.$setResult($_KW_HOME);./
    Keyword ::= l o n g /.$setResult($_KW_LONG);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= u s e s /.$setResult($_KW_USES);./
    Keyword ::= v o i d /.$setResult($_KW_VOID);./
    Keyword ::= a n y /.$setResult($_KW_ANY);./
    Keyword ::= m a p /.$setResult($_KW_MAP);./
    Keyword ::= o u t /.$setResult($_KW_OUT);./
    Keyword ::= s e t /.$setResult($_KW_SET);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= i n /.$setResult($_KW_IN);./
%End
