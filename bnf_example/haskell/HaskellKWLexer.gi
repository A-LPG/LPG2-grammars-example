-- Keyword filter for Haskell (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.haskell
%options template=KeywordTemplateF.gi
%options fp=HaskellKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ANN
    ANYCLASS
    AS
    BY
    CAPI
    CASE
    CCALL
    CLASS
    COMPLETE
    CPPCALL
    CTYPE
    DATA
    DEFAULT
    DEPRECATED
    DERIVING
    DO
    ELSE
    EXPORT
    FAMILY
    FORALL
    FOREIGN
    GROUP
    HIDING
    IF
    IMPORT
    IN
    INCOHERENT
    INFIX
    INFIXL
    INFIXR
    INLINE
    INSTANCE
    INTERRUPTIBLE
    JSCALL
    LANGUAGE
    LET
    MDO
    MINIMAL
    MODULE
    NEWTYPE
    NOINLINE
    NOUNPACK
    OF
    OPTIONS
    OVERLAPPABLE
    OVERLAPPING
    OVERLAPS
    PATTERN
    QUALIFIED
    REC
    ROLE
    RULES
    SAFE
    SCC
    SOURCE
    SPECIALISE
    STDCALL
    STOCK
    THEN
    TYPE
    UNPACK
    UNSAFE
    USING
    VIA
    WARNING
    WHERE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= i n t e r r u p t i b l e /.$setResult($_INTERRUPTIBLE);./
    Keyword ::= o v e r l a p p a b l e /.$setResult($_OVERLAPPABLE);./
    Keyword ::= o v e r l a p p i n g /.$setResult($_OVERLAPPING);./
    Keyword ::= d e p r e c a t e d /.$setResult($_DEPRECATED);./
    Keyword ::= i n c o h e r e n t /.$setResult($_INCOHERENT);./
    Keyword ::= j a v a s c r i p t /.$setResult($_JSCALL);./
    Keyword ::= s p e c i a l i s e /.$setResult($_SPECIALISE);./
    Keyword ::= c p l u s p l u s /.$setResult($_CPPCALL);./
    Keyword ::= q u a l i f i e d /.$setResult($_QUALIFIED);./
    Keyword ::= a n y c l a s s /.$setResult($_ANYCLASS);./
    Keyword ::= c o m p l e t e /.$setResult($_COMPLETE);./
    Keyword ::= d e r i v i n g /.$setResult($_DERIVING);./
    Keyword ::= i n s t a n c e /.$setResult($_INSTANCE);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE);./
    Keyword ::= n o i n l i n e /.$setResult($_NOINLINE);./
    Keyword ::= n o u n p a c k /.$setResult($_NOUNPACK);./
    Keyword ::= o v e r l a p s /.$setResult($_OVERLAPS);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= f o r e i g n /.$setResult($_FOREIGN);./
    Keyword ::= m i n i m a l /.$setResult($_MINIMAL);./
    Keyword ::= n e w t y p e /.$setResult($_NEWTYPE);./
    Keyword ::= o p t i o n s /.$setResult($_OPTIONS);./
    Keyword ::= p a t t e r n /.$setResult($_PATTERN);./
    Keyword ::= s t d c a l l /.$setResult($_STDCALL);./
    Keyword ::= w a r n i n g /.$setResult($_WARNING);./
    Keyword ::= e x p o r t /.$setResult($_EXPORT);./
    Keyword ::= f a m i l y /.$setResult($_FAMILY);./
    Keyword ::= f o r a l l /.$setResult($_FORALL);./
    Keyword ::= h i d i n g /.$setResult($_HIDING);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= i n f i x l /.$setResult($_INFIXL);./
    Keyword ::= i n f i x r /.$setResult($_INFIXR);./
    Keyword ::= i n l i n e /.$setResult($_INLINE);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= s o u r c e /.$setResult($_SOURCE);./
    Keyword ::= u n p a c k /.$setResult($_UNPACK);./
    Keyword ::= u n s a f e /.$setResult($_UNSAFE);./
    Keyword ::= c c a l l /.$setResult($_CCALL);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= c t y p e /.$setResult($_CTYPE);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i n f i x /.$setResult($_INFIX);./
    Keyword ::= r u l e s /.$setResult($_RULES);./
    Keyword ::= s t o c k /.$setResult($_STOCK);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= c a p i /.$setResult($_CAPI);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= r o l e /.$setResult($_ROLE);./
    Keyword ::= s a f e /.$setResult($_SAFE);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= a n n /.$setResult($_ANN);./
    Keyword ::= l e t /.$setResult($_LET);./
    Keyword ::= m d o /.$setResult($_MDO);./
    Keyword ::= r e c /.$setResult($_REC);./
    Keyword ::= s c c /.$setResult($_SCC);./
    Keyword ::= v i a /.$setResult($_VIA);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= o f /.$setResult($_OF);./
%End
