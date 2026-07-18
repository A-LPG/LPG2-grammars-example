-- Keyword filter for Webidl (aligned to parser terminal names)
%options package=lpg.grammars.webidl
%options template=KeywordTemplateF.gi
%options fp=WebidlKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ANY
    ARRAYBUFFER
    ASYNC
    ATTRIBUTE
    BIGINT
    BOOLEAN
    BYTE
    BYTESTRING
    CALLBACK
    CONST
    CONSTRUCTOR
    DATAVIEW
    DELETER
    DICTIONARY
    DOMSTRING
    DOUBLE
    ENUM
    FALSE
    FLOAT
    FROZENARRAY
    GETTER
    INCLUDES
    INFINITY
    INHERIT
    INTERFACE
    ITERABLE
    LONG
    MAPLIKE
    MIXIN
    NAMESPACE
    NAN
    OBJECT
    OBSERVABLEARRAY
    OCTET
    OPTIONAL
    OR
    PARTIAL
    PROMISE
    READONLY
    RECORD
    REQUIRED
    SEQUENCE
    SETLIKE
    SETTER
    SHORT
    STATIC
    STRINGIFIER
    SYMBOL
    TRUE
    TYPEDEF
    UNDEFINED
    UNRESTRICTED
    UNSIGNED
    USVSTRING
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= o b s e r v a b l e a r r a y /.$setResult($_OBSERVABLEARRAY);./
    Keyword ::= u n r e s t r i c t e d /.$setResult($_UNRESTRICTED);./
    Keyword ::= a r r a y b u f f e r /.$setResult($_ARRAYBUFFER);./
    Keyword ::= c o n s t r u c t o r /.$setResult($_CONSTRUCTOR);./
    Keyword ::= f r o z e n a r r a y /.$setResult($_FROZENARRAY);./
    Keyword ::= s t r i n g i f i e r /.$setResult($_STRINGIFIER);./
    Keyword ::= b y t e s t r i n g /.$setResult($_BYTESTRING);./
    Keyword ::= d i c t i o n a r y /.$setResult($_DICTIONARY);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
    Keyword ::= d o m s t r i n g /.$setResult($_DOMSTRING);./
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= n a m e s p a c e /.$setResult($_NAMESPACE);./
    Keyword ::= u n d e f i n e d /.$setResult($_UNDEFINED);./
    Keyword ::= u s v s t r i n g /.$setResult($_USVSTRING);./
    Keyword ::= c a l l b a c k /.$setResult($_CALLBACK);./
    Keyword ::= d a t a v i e w /.$setResult($_DATAVIEW);./
    Keyword ::= i n c l u d e s /.$setResult($_INCLUDES);./
    Keyword ::= i n f i n i t y /.$setResult($_INFINITY);./
    Keyword ::= i t e r a b l e /.$setResult($_ITERABLE);./
    Keyword ::= o p t i o n a l /.$setResult($_OPTIONAL);./
    Keyword ::= r e a d o n l y /.$setResult($_READONLY);./
    Keyword ::= r e q u i r e d /.$setResult($_REQUIRED);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= u n s i g n e d /.$setResult($_UNSIGNED);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= d e l e t e r /.$setResult($_DELETER);./
    Keyword ::= i n h e r i t /.$setResult($_INHERIT);./
    Keyword ::= m a p l i k e /.$setResult($_MAPLIKE);./
    Keyword ::= p a r t i a l /.$setResult($_PARTIAL);./
    Keyword ::= p r o m i s e /.$setResult($_PROMISE);./
    Keyword ::= s e t l i k e /.$setResult($_SETLIKE);./
    Keyword ::= t y p e d e f /.$setResult($_TYPEDEF);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= g e t t e r /.$setResult($_GETTER);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= r e c o r d /.$setResult($_RECORD);./
    Keyword ::= s e t t e r /.$setResult($_SETTER);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= s y m b o l /.$setResult($_SYMBOL);./
    Keyword ::= a s y n c /.$setResult($_ASYNC);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= m i x i n /.$setResult($_MIXIN);./
    Keyword ::= o c t e t /.$setResult($_OCTET);./
    Keyword ::= s h o r t /.$setResult($_SHORT);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= l o n g /.$setResult($_LONG);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= n a n /.$setResult($_NAN);./
    Keyword ::= o r /.$setResult($_OR);./
%End
