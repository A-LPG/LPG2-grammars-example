-- Keyword filter for AsnAsn3gpp (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.asn.asn_3gpp
%options template=KeywordTemplateF.gi
%options fp=AsnAsn3gppKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABSENT_LITERAL
    ABSTRACT_SYNTAX_LITERAL
    ALL_LITERAL
    APPLICATION_LITERAL
    AUTOMATIC_LITERAL
    BEGIN_LITERAL
    BIT_LITERAL
    BOOLEAN_LITERAL
    BY_LITERAL
    CHARACTER_LITERAL
    CHOICE_LITERAL
    CLASS_LITERAL
    COMPONENTS_LITERAL
    COMPONENT_LITERAL
    CONSTRAINED_LITERAL
    CONTAINING_LITERAL
    DEFAULT_LITERAL
    DEFINITIONS_LITERAL
    EMBEDDED_LITERAL
    ENCODED_LITERAL
    END_LITERAL
    ENUMERATED_LITERAL
    EXCEPT_LITERAL
    EXPLICIT_LITERAL
    EXPORTS_LITERAL
    EXTENSIBILITY_LITERAL
    EXTERNAL_LITERAL
    FALSE_LITERAL
    FROM_LITERAL
    IDENTIFIER_LITERAL
    IMPLICIT_LITERAL
    IMPLIED_LITERAL
    IMPORTS_LITERAL
    INCLUDES_LITERAL
    INSTANCE_LITERAL
    INTEGER_LITERAL
    INTERSECTION_LITERAL
    MAX_LITERAL
    MINUS_INFINITY_LITERAL
    MIN_LITERAL
    NULL_LITERAL
    OBJECT_LITERAL
    OCTET_LITERAL
    OF_LITERAL
    OPTIONAL_LITERAL
    PATTERN_LITERAL
    PDV_LITERAL
    PLUS_INFINITY_LITERAL
    PRESENT_LITERAL
    PRIVATE_LITERAL
    REAL_LITERAL
    RELATIVE_OID_LITERAL
    SEQUENCE_LITERAL
    SET_LITERAL
    SIZE_LITERAL
    STRING_LITERAL
    SYNTAX_LITERAL
    TAGS_LITERAL
    TRUE_LITERAL
    TYPE_IDENTIFIER_LITERAL
    UNION_LITERAL
    UNIQUE_LITERAL
    UNIVERSAL_LITERAL
    WITH_LITERAL
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a b s t r a c t s y n t a x /.$setResult($_ABSTRACT_SYNTAX_LITERAL);./
    Keyword ::= t y p e i d e n t i f i e r /.$setResult($_TYPE_IDENTIFIER_LITERAL);./
    Keyword ::= e x t e n s i b i l i t y /.$setResult($_EXTENSIBILITY_LITERAL);./
    Keyword ::= m i n u s i n f i n i t y /.$setResult($_MINUS_INFINITY_LITERAL);./
    Keyword ::= i n t e r s e c t i o n /.$setResult($_INTERSECTION_LITERAL);./
    Keyword ::= p l u s i n f i n i t y /.$setResult($_PLUS_INFINITY_LITERAL);./
    Keyword ::= a p p l i c a t i o n /.$setResult($_APPLICATION_LITERAL);./
    Keyword ::= c o n s t r a i n e d /.$setResult($_CONSTRAINED_LITERAL);./
    Keyword ::= d e f i n i t i o n s /.$setResult($_DEFINITIONS_LITERAL);./
    Keyword ::= r e l a t i v e o i d /.$setResult($_RELATIVE_OID_LITERAL);./
    Keyword ::= c o m p o n e n t s /.$setResult($_COMPONENTS_LITERAL);./
    Keyword ::= c o n t a i n i n g /.$setResult($_CONTAINING_LITERAL);./
    Keyword ::= e n u m e r a t e d /.$setResult($_ENUMERATED_LITERAL);./
    Keyword ::= i d e n t i f i e r /.$setResult($_IDENTIFIER_LITERAL);./
    Keyword ::= a u t o m a t i c /.$setResult($_AUTOMATIC_LITERAL);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER_LITERAL);./
    Keyword ::= c o m p o n e n t /.$setResult($_COMPONENT_LITERAL);./
    Keyword ::= u n i v e r s a l /.$setResult($_UNIVERSAL_LITERAL);./
    Keyword ::= e m b e d d e d /.$setResult($_EMBEDDED_LITERAL);./
    Keyword ::= e x p l i c i t /.$setResult($_EXPLICIT_LITERAL);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL_LITERAL);./
    Keyword ::= i m p l i c i t /.$setResult($_IMPLICIT_LITERAL);./
    Keyword ::= i n c l u d e s /.$setResult($_INCLUDES_LITERAL);./
    Keyword ::= i n s t a n c e /.$setResult($_INSTANCE_LITERAL);./
    Keyword ::= o p t i o n a l /.$setResult($_OPTIONAL_LITERAL);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE_LITERAL);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN_LITERAL);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT_LITERAL);./
    Keyword ::= e n c o d e d /.$setResult($_ENCODED_LITERAL);./
    Keyword ::= e x p o r t s /.$setResult($_EXPORTS_LITERAL);./
    Keyword ::= i m p l i e d /.$setResult($_IMPLIED_LITERAL);./
    Keyword ::= i m p o r t s /.$setResult($_IMPORTS_LITERAL);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER_LITERAL);./
    Keyword ::= p a t t e r n /.$setResult($_PATTERN_LITERAL);./
    Keyword ::= p r e s e n t /.$setResult($_PRESENT_LITERAL);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE_LITERAL);./
    Keyword ::= a b s e n t /.$setResult($_ABSENT_LITERAL);./
    Keyword ::= c h o i c e /.$setResult($_CHOICE_LITERAL);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT_LITERAL);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT_LITERAL);./
    Keyword ::= s t r i n g /.$setResult($_STRING_LITERAL);./
    Keyword ::= s y n t a x /.$setResult($_SYNTAX_LITERAL);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE_LITERAL);./
    Keyword ::= b e g i n /.$setResult($_BEGIN_LITERAL);./
    Keyword ::= c l a s s /.$setResult($_CLASS_LITERAL);./
    Keyword ::= f a l s e /.$setResult($_FALSE_LITERAL);./
    Keyword ::= o c t e t /.$setResult($_OCTET_LITERAL);./
    Keyword ::= u n i o n /.$setResult($_UNION_LITERAL);./
    Keyword ::= f r o m /.$setResult($_FROM_LITERAL);./
    Keyword ::= n u l l /.$setResult($_NULL_LITERAL);./
    Keyword ::= r e a l /.$setResult($_REAL_LITERAL);./
    Keyword ::= s i z e /.$setResult($_SIZE_LITERAL);./
    Keyword ::= t a g s /.$setResult($_TAGS_LITERAL);./
    Keyword ::= t r u e /.$setResult($_TRUE_LITERAL);./
    Keyword ::= w i t h /.$setResult($_WITH_LITERAL);./
    Keyword ::= a l l /.$setResult($_ALL_LITERAL);./
    Keyword ::= b i t /.$setResult($_BIT_LITERAL);./
    Keyword ::= e n d /.$setResult($_END_LITERAL);./
    Keyword ::= m a x /.$setResult($_MAX_LITERAL);./
    Keyword ::= m i n /.$setResult($_MIN_LITERAL);./
    Keyword ::= p d v /.$setResult($_PDV_LITERAL);./
    Keyword ::= s e t /.$setResult($_SET_LITERAL);./
    Keyword ::= b y /.$setResult($_BY_LITERAL);./
    Keyword ::= o f /.$setResult($_OF_LITERAL);./
%End
