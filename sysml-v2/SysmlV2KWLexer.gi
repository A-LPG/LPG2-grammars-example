-- Keyword filter for SysmlV2 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sysml_v2
%options template=KeywordTemplateF.gi
%options fp=SysmlV2KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABOUT
    ABSTRACT
    ACCEPT
    ACTION
    ACTOR
    AFTER
    ALIAS
    ALL
    ALLOCATE
    ALLOCATION
    ANALYSIS
    AND
    AS
    ASSERT
    ASSIGN
    ASSOC
    ASSUME
    AT
    ATTRIBUTE
    BEHAVIOR
    BIND
    BINDING
    BOOL
    BY
    CALC
    CASE
    CHAINS
    CLASS
    CLASSIFIER
    COMMENT
    COMPOSITE
    CONCERN
    CONJUGATE
    CONJUGATES
    CONJUGATION
    CONNECT
    CONNECTION
    CONNECTOR
    CONST
    CONSTANT
    CONSTRAINT
    CROSSES
    DATATYPE
    DECIDE
    DEF
    DEFAULT
    DEFINED
    DEPENDENCY
    DERIVED
    DIFFERENCES
    DISJOINING
    DISJOINT
    DO
    DOC
    ELSE
    END
    ENTRY
    ENUM
    EVENT
    EXHIBIT
    EXIT
    EXPOSE
    EXPR
    FALSE
    FEATURE
    FEATURED
    FEATURING
    FILTER
    FIRST
    FLOW
    FOR
    FORK
    FRAME
    FROM
    FUNCTION
    HASTYPE
    IF
    IMPLIES
    IMPORT
    IN
    INCLUDE
    INDIVIDUAL
    INOUT
    INTERACTION
    INTERFACE
    INTERSECTS
    INV
    INVERSE
    INVERTING
    ISTYPE
    ITEM
    JOIN
    LANGUAGE
    LIBRARY
    LOCALE
    LOOP
    MEMBER
    MERGE
    MESSAGE
    META
    METACLASS
    METADATA
    MULTIPLICITY
    NAMESPACE
    NEW
    NONUNIQUE
    NOT
    NULL
    OBJECTIVE
    OCCURRENCE
    OF
    OR
    ORDERED
    OUT
    PACKAGE
    PARALLEL
    PART
    PERFORM
    PORT
    PORTION
    PREDICATE
    PRIVATE
    PROTECTED
    PUBLIC
    REDEFINES
    REDEFINITION
    REF
    REFERENCES
    RENDER
    RENDERING
    REP
    REQUIRE
    REQUIREMENT
    RETURN
    SATISFY
    SEND
    SNAPSHOT
    SPECIALIZATION
    SPECIALIZES
    STAKEHOLDER
    STANDARD
    STATE
    STEP
    STRUCT
    SUBCLASSIFIER
    SUBJECT
    SUBSET
    SUBSETS
    SUBTYPE
    SUCCESSION
    TERMINATE
    THEN
    TIMESLICE
    TO
    TRANSITION
    TRUE
    TYPE
    TYPED
    TYPING
    UNIONS
    UNTIL
    USE
    VAR
    VARIANT
    VARIATION
    VERIFICATION
    VERIFY
    VIA
    VIEW
    VIEWPOINT
    WHEN
    WHILE
    XOR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s p e c i a l i z a t i o n /.$setResult($_SPECIALIZATION);./
    Keyword ::= s u b c l a s s i f i e r /.$setResult($_SUBCLASSIFIER);./
    Keyword ::= m u l t i p l i c i t y /.$setResult($_MULTIPLICITY);./
    Keyword ::= r e d e f i n i t i o n /.$setResult($_REDEFINITION);./
    Keyword ::= v e r i f i c a t i o n /.$setResult($_VERIFICATION);./
    Keyword ::= c o n j u g a t i o n /.$setResult($_CONJUGATION);./
    Keyword ::= d i f f e r e n c e s /.$setResult($_DIFFERENCES);./
    Keyword ::= i n t e r a c t i o n /.$setResult($_INTERACTION);./
    Keyword ::= r e q u i r e m e n t /.$setResult($_REQUIREMENT);./
    Keyword ::= s p e c i a l i z e s /.$setResult($_SPECIALIZES);./
    Keyword ::= s t a k e h o l d e r /.$setResult($_STAKEHOLDER);./
    Keyword ::= a l l o c a t i o n /.$setResult($_ALLOCATION);./
    Keyword ::= c l a s s i f i e r /.$setResult($_CLASSIFIER);./
    Keyword ::= c o n j u g a t e s /.$setResult($_CONJUGATES);./
    Keyword ::= c o n n e c t i o n /.$setResult($_CONNECTION);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= d e p e n d e n c y /.$setResult($_DEPENDENCY);./
    Keyword ::= d i s j o i n i n g /.$setResult($_DISJOINING);./
    Keyword ::= i n d i v i d u a l /.$setResult($_INDIVIDUAL);./
    Keyword ::= i n t e r s e c t s /.$setResult($_INTERSECTS);./
    Keyword ::= o c c u r r e n c e /.$setResult($_OCCURRENCE);./
    Keyword ::= r e f e r e n c e s /.$setResult($_REFERENCES);./
    Keyword ::= s u c c e s s i o n /.$setResult($_SUCCESSION);./
    Keyword ::= t r a n s i t i o n /.$setResult($_TRANSITION);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
    Keyword ::= c o m p o s i t e /.$setResult($_COMPOSITE);./
    Keyword ::= c o n j u g a t e /.$setResult($_CONJUGATE);./
    Keyword ::= c o n n e c t o r /.$setResult($_CONNECTOR);./
    Keyword ::= f e a t u r i n g /.$setResult($_FEATURING);./
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= i n v e r t i n g /.$setResult($_INVERTING);./
    Keyword ::= m e t a c l a s s /.$setResult($_METACLASS);./
    Keyword ::= n a m e s p a c e /.$setResult($_NAMESPACE);./
    Keyword ::= n o n u n i q u e /.$setResult($_NONUNIQUE);./
    Keyword ::= o b j e c t i v e /.$setResult($_OBJECTIVE);./
    Keyword ::= p r e d i c a t e /.$setResult($_PREDICATE);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= r e d e f i n e s /.$setResult($_REDEFINES);./
    Keyword ::= r e n d e r i n g /.$setResult($_RENDERING);./
    Keyword ::= t e r m i n a t e /.$setResult($_TERMINATE);./
    Keyword ::= t i m e s l i c e /.$setResult($_TIMESLICE);./
    Keyword ::= v a r i a t i o n /.$setResult($_VARIATION);./
    Keyword ::= v i e w p o i n t /.$setResult($_VIEWPOINT);./
    Keyword ::= a b s t r a c t /.$setResult($_ABSTRACT);./
    Keyword ::= a l l o c a t e /.$setResult($_ALLOCATE);./
    Keyword ::= a n a l y s i s /.$setResult($_ANALYSIS);./
    Keyword ::= b e h a v i o r /.$setResult($_BEHAVIOR);./
    Keyword ::= c o n s t a n t /.$setResult($_CONSTANT);./
    Keyword ::= d a t a t y p e /.$setResult($_DATATYPE);./
    Keyword ::= d i s j o i n t /.$setResult($_DISJOINT);./
    Keyword ::= f e a t u r e d /.$setResult($_FEATURED);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE);./
    Keyword ::= m e t a d a t a /.$setResult($_METADATA);./
    Keyword ::= p a r a l l e l /.$setResult($_PARALLEL);./
    Keyword ::= s n a p s h o t /.$setResult($_SNAPSHOT);./
    Keyword ::= s t a n d a r d /.$setResult($_STANDARD);./
    Keyword ::= b i n d i n g /.$setResult($_BINDING);./
    Keyword ::= c o m m e n t /.$setResult($_COMMENT);./
    Keyword ::= c o n c e r n /.$setResult($_CONCERN);./
    Keyword ::= c o n n e c t /.$setResult($_CONNECT);./
    Keyword ::= c r o s s e s /.$setResult($_CROSSES);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d e f i n e d /.$setResult($_DEFINED);./
    Keyword ::= d e r i v e d /.$setResult($_DERIVED);./
    Keyword ::= e x h i b i t /.$setResult($_EXHIBIT);./
    Keyword ::= f e a t u r e /.$setResult($_FEATURE);./
    Keyword ::= h a s t y p e /.$setResult($_HASTYPE);./
    Keyword ::= i m p l i e s /.$setResult($_IMPLIES);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= i n v e r s e /.$setResult($_INVERSE);./
    Keyword ::= l i b r a r y /.$setResult($_LIBRARY);./
    Keyword ::= m e s s a g e /.$setResult($_MESSAGE);./
    Keyword ::= o r d e r e d /.$setResult($_ORDERED);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p e r f o r m /.$setResult($_PERFORM);./
    Keyword ::= p o r t i o n /.$setResult($_PORTION);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= r e q u i r e /.$setResult($_REQUIRE);./
    Keyword ::= s a t i s f y /.$setResult($_SATISFY);./
    Keyword ::= s u b j e c t /.$setResult($_SUBJECT);./
    Keyword ::= s u b s e t s /.$setResult($_SUBSETS);./
    Keyword ::= s u b t y p e /.$setResult($_SUBTYPE);./
    Keyword ::= v a r i a n t /.$setResult($_VARIANT);./
    Keyword ::= a c c e p t /.$setResult($_ACCEPT);./
    Keyword ::= a c t i o n /.$setResult($_ACTION);./
    Keyword ::= a s s e r t /.$setResult($_ASSERT);./
    Keyword ::= a s s i g n /.$setResult($_ASSIGN);./
    Keyword ::= a s s u m e /.$setResult($_ASSUME);./
    Keyword ::= c h a i n s /.$setResult($_CHAINS);./
    Keyword ::= d e c i d e /.$setResult($_DECIDE);./
    Keyword ::= e x p o s e /.$setResult($_EXPOSE);./
    Keyword ::= f i l t e r /.$setResult($_FILTER);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= i s t y p e /.$setResult($_ISTYPE);./
    Keyword ::= l o c a l e /.$setResult($_LOCALE);./
    Keyword ::= m e m b e r /.$setResult($_MEMBER);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r e n d e r /.$setResult($_RENDER);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= s u b s e t /.$setResult($_SUBSET);./
    Keyword ::= t y p i n g /.$setResult($_TYPING);./
    Keyword ::= u n i o n s /.$setResult($_UNIONS);./
    Keyword ::= v e r i f y /.$setResult($_VERIFY);./
    Keyword ::= a b o u t /.$setResult($_ABOUT);./
    Keyword ::= a c t o r /.$setResult($_ACTOR);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= a l i a s /.$setResult($_ALIAS);./
    Keyword ::= a s s o c /.$setResult($_ASSOC);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= e n t r y /.$setResult($_ENTRY);./
    Keyword ::= e v e n t /.$setResult($_EVENT);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f r a m e /.$setResult($_FRAME);./
    Keyword ::= i n o u t /.$setResult($_INOUT);./
    Keyword ::= m e r g e /.$setResult($_MERGE);./
    Keyword ::= s t a t e /.$setResult($_STATE);./
    Keyword ::= t y p e d /.$setResult($_TYPED);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= b i n d /.$setResult($_BIND);./
    Keyword ::= b o o l /.$setResult($_BOOL);./
    Keyword ::= c a l c /.$setResult($_CALC);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= e x p r /.$setResult($_EXPR);./
    Keyword ::= f l o w /.$setResult($_FLOW);./
    Keyword ::= f o r k /.$setResult($_FORK);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= i t e m /.$setResult($_ITEM);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= m e t a /.$setResult($_META);./
    Keyword ::= n u l l /.$setResult($_NULL);./
    Keyword ::= p a r t /.$setResult($_PART);./
    Keyword ::= p o r t /.$setResult($_PORT);./
    Keyword ::= s e n d /.$setResult($_SEND);./
    Keyword ::= s t e p /.$setResult($_STEP);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= d e f /.$setResult($_DEF);./
    Keyword ::= d o c /.$setResult($_DOC);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n v /.$setResult($_INV);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= r e f /.$setResult($_REF);./
    Keyword ::= r e p /.$setResult($_REP);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= v a r /.$setResult($_VAR);./
    Keyword ::= v i a /.$setResult($_VIA);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
