-- Keyword filter for Atl (aligned to parser terminal names)
%options package=lpg.grammars.atl
%options template=KeywordTemplateF.gi
%options fp=AtlKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABSTRACT
    AND
    BAG
    BOOLEAN
    COLLECTION
    CONTEXT
    CREATE
    DEF
    DISTINCT
    DIV
    DO
    ELSE
    ENDIF
    ENDPOINT
    ENTRYPOINT
    EXTENDS
    FALSE
    FLOAT
    FOR
    FOREACH
    FROM
    HELPER
    IF
    IMPLIES
    IN
    INTEGER
    ITERATE
    LAZY
    LET
    LIBRARY
    MAP
    MAPSTO
    MOD
    MODULE
    NODEFAULT
    NOT
    OCLANY
    OCLTYPE
    OCLUNDEFINED
    OR
    ORDEREDSET
    QUERY
    REAL
    RECEIVE
    REFINING
    RULE
    SEQUENCE
    SET
    STRING
    SUPER
    THEN
    TO
    TRUE
    TUPLE
    TUPLETYPE
    UNIQUE
    USES
    USING
    XOR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= o c l u n d e f i n e d /.$setResult($_OCLUNDEFINED);./
    Keyword ::= c o l l e c t i o n /.$setResult($_COLLECTION);./
    Keyword ::= e n t r y p o i n t /.$setResult($_ENTRYPOINT);./
    Keyword ::= o r d e r e d s e t /.$setResult($_ORDEREDSET);./
    Keyword ::= n o d e f a u l t /.$setResult($_NODEFAULT);./
    Keyword ::= t u p l e t y p e /.$setResult($_TUPLETYPE);./
    Keyword ::= a b s t r a c t /.$setResult($_ABSTRACT);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= e n d p o i n t /.$setResult($_ENDPOINT);./
    Keyword ::= r e f i n i n g /.$setResult($_REFINING);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= c o n t e x t /.$setResult($_CONTEXT);./
    Keyword ::= e x t e n d s /.$setResult($_EXTENDS);./
    Keyword ::= f o r e a c h /.$setResult($_FOREACH);./
    Keyword ::= i m p l i e s /.$setResult($_IMPLIES);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= i t e r a t e /.$setResult($_ITERATE);./
    Keyword ::= l i b r a r y /.$setResult($_LIBRARY);./
    Keyword ::= o c l t y p e /.$setResult($_OCLTYPE);./
    Keyword ::= r e c e i v e /.$setResult($_RECEIVE);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= h e l p e r /.$setResult($_HELPER);./
    Keyword ::= m a p s t o /.$setResult($_MAPSTO);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= o c l a n y /.$setResult($_OCLANY);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= e n d i f /.$setResult($_ENDIF);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= q u e r y /.$setResult($_QUERY);./
    Keyword ::= s u p e r /.$setResult($_SUPER);./
    Keyword ::= t u p l e /.$setResult($_TUPLE);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= l a z y /.$setResult($_LAZY);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= r u l e /.$setResult($_RULE);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= u s e s /.$setResult($_USES);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= b a g /.$setResult($_BAG);./
    Keyword ::= d e f /.$setResult($_DEF);./
    Keyword ::= d i v /.$setResult($_DIV);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= l e t /.$setResult($_LET);./
    Keyword ::= m a p /.$setResult($_MAP);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
