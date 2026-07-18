-- Keyword filter for Sdl (aligned to parser terminal names)
%options package=lpg.grammars.sdl
%options template=KeywordTemplateF.gi
%options fp=SdlKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ADDRESS
    AGGREGATE
    ALIAS
    ALIGN
    ANY
    AT
    BANG
    BASEALIGN
    BASED
    BITFIELD
    BOOLEAN
    BYTE
    CARET
    CHARACTER
    COMMENT
    COMMON
    COMPLEX
    COUNTER
    DECIMAL
    DECLARE
    DEFAULT
    DESCRIPTOR
    DIMENSION
    ELSE
    END
    ENTRY
    EQUALS
    FILL
    GLOBAL
    IDENT
    IFLANGUAGE
    IFSYMBOL
    IN
    INCLUDE
    INCREMENT
    INTEGER
    ITEM
    LENGTH
    LINKAGE
    LIST
    LONGWORD
    MARKER
    MASK
    MODULE
    NAME
    NAMED
    NOALIGN
    OCTAWORD
    OPTIONAL
    ORIGIN
    OUT
    PARAMETER
    POINTER
    PRECISION
    PREFIX
    QUADWORD
    READ
    REFERENCE
    RETURNS
    SIGNED
    SIZEOF
    STRING
    STRUCTURE
    TAG
    TYPEDEF
    TYPENAME
    UNION
    UNSIGNED
    VALUE
    VARIABLE
    VARYING
    VOID
    WORD
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= d e s c r i p t o r /.$setResult($_DESCRIPTOR);./
    Keyword ::= i f l a n g u a g e /.$setResult($_IFLANGUAGE);./
    Keyword ::= a g g r e g a t e /.$setResult($_AGGREGATE);./
    Keyword ::= b a s e a l i g n /.$setResult($_BASEALIGN);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER);./
    Keyword ::= d i m e n s i o n /.$setResult($_DIMENSION);./
    Keyword ::= i n c r e m e n t /.$setResult($_INCREMENT);./
    Keyword ::= p a r a m e t e r /.$setResult($_PARAMETER);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION);./
    Keyword ::= r e f e r e n c e /.$setResult($_REFERENCE);./
    Keyword ::= s t r u c t u r e /.$setResult($_STRUCTURE);./
    Keyword ::= b i t f i e l d /.$setResult($_BITFIELD);./
    Keyword ::= i f s y m b o l /.$setResult($_IFSYMBOL);./
    Keyword ::= l o n g w o r d /.$setResult($_LONGWORD);./
    Keyword ::= o c t a w o r d /.$setResult($_OCTAWORD);./
    Keyword ::= o p t i o n a l /.$setResult($_OPTIONAL);./
    Keyword ::= q u a d w o r d /.$setResult($_QUADWORD);./
    Keyword ::= t y p e n a m e /.$setResult($_TYPENAME);./
    Keyword ::= u n s i g n e d /.$setResult($_UNSIGNED);./
    Keyword ::= v a r i a b l e /.$setResult($_VARIABLE);./
    Keyword ::= a d d r e s s /.$setResult($_ADDRESS);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= c o m m e n t /.$setResult($_COMMENT);./
    Keyword ::= c o m p l e x /.$setResult($_COMPLEX);./
    Keyword ::= c o u n t e r /.$setResult($_COUNTER);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= l i n k a g e /.$setResult($_LINKAGE);./
    Keyword ::= n o a l i g n /.$setResult($_NOALIGN);./
    Keyword ::= p o i n t e r /.$setResult($_POINTER);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= t y p e d e f /.$setResult($_TYPEDEF);./
    Keyword ::= v a r y i n g /.$setResult($_VARYING);./
    Keyword ::= c o m m o n /.$setResult($_COMMON);./
    Keyword ::= e q u a l s /.$setResult($_EQUALS);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= l e n g t h /.$setResult($_LENGTH);./
    Keyword ::= m a r k e r /.$setResult($_MARKER);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= o r i g i n /.$setResult($_ORIGIN);./
    Keyword ::= p r e f i x /.$setResult($_PREFIX);./
    Keyword ::= s i g n e d /.$setResult($_SIGNED);./
    Keyword ::= s i z e o f /.$setResult($_SIZEOF);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= a l i a s /.$setResult($_ALIAS);./
    Keyword ::= a l i g n /.$setResult($_ALIGN);./
    Keyword ::= b a s e d /.$setResult($_BASED);./
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= e n t r y /.$setResult($_ENTRY);./
    Keyword ::= i d e n t /.$setResult($_IDENT);./
    Keyword ::= n a m e d /.$setResult($_NAMED);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= v a l u e /.$setResult($_VALUE);./
    Keyword ::= b a n g /.$setResult($_BANG);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f i l l /.$setResult($_FILL);./
    Keyword ::= i t e m /.$setResult($_ITEM);./
    Keyword ::= l i s t /.$setResult($_LIST);./
    Keyword ::= m a s k /.$setResult($_MASK);./
    Keyword ::= n a m e /.$setResult($_NAME);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= v o i d /.$setResult($_VOID);./
    Keyword ::= w o r d /.$setResult($_WORD);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= t a g /.$setResult($_TAG);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= i n /.$setResult($_IN);./
%End
