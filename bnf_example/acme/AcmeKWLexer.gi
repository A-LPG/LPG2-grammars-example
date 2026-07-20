-- Keyword filter for Acme (aligned to parser terminal names)
%options package=lpg.grammars.acme
%options template=KeywordTemplateF.gi
%options fp=AcmeKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABSTRACT
    ANALYSIS
    AND
    ANY
    ASSIGN
    ATTACHEDPORTS
    ATTACHEDROLES
    ATTACHMENT
    BACKSLASH
    BANG
    BINDINGS
    COLLECT
    COMPONENT
    COMPONENTS
    CONNECTOR
    CONNECTORS
    CONTAINASSIGN
    DESIGN
    DISTINCT
    DOLLAR
    DOUBLE
    ELEMENT
    ENUM
    EXISTS
    EXTENDED
    EXTENDS
    EXTERNAL
    FALSE
    FAMILY
    FINAL
    FLOAT
    FORALL
    GE
    GROUP
    GROUPS
    HEURISTIC
    IFF
    IMPLIES
    IMPORT
    IN
    INT
    INVARIANT
    LE
    MEMBERS
    NE
    NEW
    OR
    PERCENT
    PORT
    PORTS
    POWER
    PRIVATE
    PROPBEGIN
    PROPEND
    PROPERTIES
    PROPERTY
    PUBLIC
    RECORD
    REM
    REPRESENTATION
    REPRESENTATIONS
    ROLE
    ROLES
    RULE
    SELECT
    SEMICOLON
    SEQUENCE
    SET
    STRING
    STYLE
    SYSTEM
    TO
    TRUE
    TYPE
    UNIQUE
    VIEW
    WITH
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= r e p r e s e n t a t i o n s /.$setResult($_REPRESENTATIONS);./
    Keyword ::= r e p r e s e n t a t i o n /.$setResult($_REPRESENTATION);./
    Keyword ::= a t t a c h e d p o r t s /.$setResult($_ATTACHEDPORTS);./
    Keyword ::= a t t a c h e d r o l e s /.$setResult($_ATTACHEDROLES);./
    Keyword ::= c o n t a i n a s s i g n /.$setResult($_CONTAINASSIGN);./
    Keyword ::= a t t a c h m e n t /.$setResult($_ATTACHMENT);./
    Keyword ::= c o m p o n e n t s /.$setResult($_COMPONENTS);./
    Keyword ::= c o n n e c t o r s /.$setResult($_CONNECTORS);./
    Keyword ::= p r o p e r t i e s /.$setResult($_PROPERTIES);./
    Keyword ::= b a c k s l a s h /.$setResult($_BACKSLASH);./
    Keyword ::= c o m p o n e n t /.$setResult($_COMPONENT);./
    Keyword ::= c o n n e c t o r /.$setResult($_CONNECTOR);./
    Keyword ::= h e u r i s t i c /.$setResult($_HEURISTIC);./
    Keyword ::= i n v a r i a n t /.$setResult($_INVARIANT);./
    Keyword ::= p r o p b e g i n /.$setResult($_PROPBEGIN);./
    Keyword ::= s e m i c o l o n /.$setResult($_SEMICOLON);./
    Keyword ::= a b s t r a c t /.$setResult($_ABSTRACT);./
    Keyword ::= a n a l y s i s /.$setResult($_ANALYSIS);./
    Keyword ::= b i n d i n g s /.$setResult($_BINDINGS);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= e x t e n d e d /.$setResult($_EXTENDED);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= p r o p e r t y /.$setResult($_PROPERTY);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= c o l l e c t /.$setResult($_COLLECT);./
    Keyword ::= e l e m e n t /.$setResult($_ELEMENT);./
    Keyword ::= e x t e n d s /.$setResult($_EXTENDS);./
    Keyword ::= i m p l i e s /.$setResult($_IMPLIES);./
    Keyword ::= m e m b e r s /.$setResult($_MEMBERS);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= p r o p e n d /.$setResult($_PROPEND);./
    Keyword ::= a s s i g n /.$setResult($_ASSIGN);./
    Keyword ::= d e s i g n /.$setResult($_DESIGN);./
    Keyword ::= d o l l a r /.$setResult($_DOLLAR);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= f a m i l y /.$setResult($_FAMILY);./
    Keyword ::= f o r a l l /.$setResult($_FORALL);./
    Keyword ::= g r o u p s /.$setResult($_GROUPS);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r e c o r d /.$setResult($_RECORD);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s y s t e m /.$setResult($_SYSTEM);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= p o r t s /.$setResult($_PORTS);./
    Keyword ::= p o w e r /.$setResult($_POWER);./
    Keyword ::= r o l e s /.$setResult($_ROLES);./
    Keyword ::= s t y l e /.$setResult($_STYLE);./
    Keyword ::= b a n g /.$setResult($_BANG);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= p o r t /.$setResult($_PORT);./
    Keyword ::= r o l e /.$setResult($_ROLE);./
    Keyword ::= r u l e /.$setResult($_RULE);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= i f f /.$setResult($_IFF);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= r e m /.$setResult($_REM);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= g e /.$setResult($_GE);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= l e /.$setResult($_LE);./
    Keyword ::= n e /.$setResult($_NE);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
