-- Keyword filter for Codeql (aligned to parser terminal names)
%options package=lpg.grammars.codeql
%options template=KeywordTemplateF.gi
%options fp=CodeqlKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABSTRACT
    ADDITIONAL
    AND
    ANY
    AS
    ASC
    ATLOWERID
    AVG
    BINDINGSET
    BOOLEAN
    BY
    CACHED
    CLASS
    COLONCOLON
    CONCAT
    COUNT
    DATE
    DEFAULT
    DEPRECATED
    DESC
    DONTCARE
    DOTDOT
    ELSE
    EXISTS
    EXTENDS
    EXTENSIBLE
    EXTERNAL
    FALSE
    FINAL
    FLOAT
    FORALL
    FOREX
    FROM
    IF
    IMPLEMENTS
    IMPLIES
    IMPORT
    IN
    INLINE
    INSTANCEOF
    INT
    LANGUAGE
    LIBRARY
    LOWERID
    MAX
    MIN
    MODULE
    MONOTONICAGGREGATES
    NEWTYPE
    NOINLINE
    NOMAGIC
    NONE
    NOOPT
    NOT
    OR
    ORDER
    OVERRIDE
    PERCENT
    PIPE
    PRAGMA
    PREDICATE
    PRIVATE
    QUERY
    RANK
    RESULT
    SELECT
    SIGNATURE
    STRICTCONCAT
    STRICTCOUNT
    STRICTSUM
    STRING
    SUM
    SUPER
    THEN
    THIS
    TRANSIENT
    TRUE
    UNIQUE
    UPPERID
    WHERE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= m o n o t o n i c a g g r e g a t e s /.$setResult($_MONOTONICAGGREGATES);./
    Keyword ::= s t r i c t c o n c a t /.$setResult($_STRICTCONCAT);./
    Keyword ::= s t r i c t c o u n t /.$setResult($_STRICTCOUNT);./
    Keyword ::= a d d i t i o n a l /.$setResult($_ADDITIONAL);./
    Keyword ::= b i n d i n g s e t /.$setResult($_BINDINGSET);./
    Keyword ::= c o l o n c o l o n /.$setResult($_COLONCOLON);./
    Keyword ::= d e p r e c a t e d /.$setResult($_DEPRECATED);./
    Keyword ::= e x t e n s i b l e /.$setResult($_EXTENSIBLE);./
    Keyword ::= i m p l e m e n t s /.$setResult($_IMPLEMENTS);./
    Keyword ::= i n s t a n c e o f /.$setResult($_INSTANCEOF);./
    Keyword ::= a t l o w e r i d /.$setResult($_ATLOWERID);./
    Keyword ::= p r e d i c a t e /.$setResult($_PREDICATE);./
    Keyword ::= s i g n a t u r e /.$setResult($_SIGNATURE);./
    Keyword ::= s t r i c t s u m /.$setResult($_STRICTSUM);./
    Keyword ::= t r a n s i e n t /.$setResult($_TRANSIENT);./
    Keyword ::= a b s t r a c t /.$setResult($_ABSTRACT);./
    Keyword ::= d o n t c a r e /.$setResult($_DONTCARE);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE);./
    Keyword ::= n o i n l i n e /.$setResult($_NOINLINE);./
    Keyword ::= o v e r r i d e /.$setResult($_OVERRIDE);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= e x t e n d s /.$setResult($_EXTENDS);./
    Keyword ::= i m p l i e s /.$setResult($_IMPLIES);./
    Keyword ::= l i b r a r y /.$setResult($_LIBRARY);./
    Keyword ::= l o w e r i d /.$setResult($_LOWERID);./
    Keyword ::= n e w t y p e /.$setResult($_NEWTYPE);./
    Keyword ::= n o m a g i c /.$setResult($_NOMAGIC);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= u p p e r i d /.$setResult($_UPPERID);./
    Keyword ::= c a c h e d /.$setResult($_CACHED);./
    Keyword ::= c o n c a t /.$setResult($_CONCAT);./
    Keyword ::= d o t d o t /.$setResult($_DOTDOT);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= f o r a l l /.$setResult($_FORALL);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= i n l i n e /.$setResult($_INLINE);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= p r a g m a /.$setResult($_PRAGMA);./
    Keyword ::= r e s u l t /.$setResult($_RESULT);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= c o u n t /.$setResult($_COUNT);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= f o r e x /.$setResult($_FOREX);./
    Keyword ::= n o o p t /.$setResult($_NOOPT);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= q u e r y /.$setResult($_QUERY);./
    Keyword ::= s u p e r /.$setResult($_SUPER);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= r a n k /.$setResult($_RANK);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t h i s /.$setResult($_THIS);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= a v g /.$setResult($_AVG);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= o r /.$setResult($_OR);./
%End
