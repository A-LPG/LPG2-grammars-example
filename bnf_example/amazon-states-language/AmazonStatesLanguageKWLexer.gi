-- Keyword filter for AmazonStatesLanguage (rebuilt from parser+lexer exports)
%options package=lpg.grammars.amazon_states_language
%options template=KeywordTemplateF.gi
%options fp=AmazonStatesLanguageKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    AND
    BACKOFFRATE
    BOOLEANEQUALS
    BOOLEANQUALSPATH
    BRANCHES
    CATCH
    CAUSE
    CAUSEPATH
    CHOICE
    CHOICES
    CSVHEADERLOCATION
    CSVHEADERS
    DEFAULT
    DISTRIBUTED
    END
    ERROR
    ERROREQUALS
    ERRORPATH
    EXECUTIONTYPE
    FAIL
    FALSE
    FULL
    HEARTBEATSECONDS
    HEARTBEATSECONDSPATH
    INLINE
    INPUTPATH
    INPUTTYPE
    INT
    INTERVALSECONDS
    ISBOOLEAN
    ISNULL
    ISNUMERIC
    ISPRESENT
    ISSTRING
    ISTIMESTAMP
    ITEMPROCESSOR
    ITEMREADER
    ITEMSELECTOR
    ITEMSPATH
    ITERATOR
    JITTERSTRATEGY
    LBRACK
    MAP
    MAXATTEMPTS
    MAXCONCURRENCY
    MAXDELAYSECONDS
    MAXITEMS
    MAXITEMSPATH
    MODE
    NEXT
    NONE
    NOT
    NULL
    NUMERICEQUALS
    NUMERICEQUALSPATH
    NUMERICGREATERTHAN
    NUMERICGREATERTHANEQUALS
    NUMERICGREATERTHANEQUALSPATH
    NUMERICGREATERTHANPATH
    NUMERICLESSTHAN
    NUMERICLESSTHANEQUALS
    NUMERICLESSTHANEQUALSPATH
    NUMERICLESSTHANPATH
    OR
    OUTPUTPATH
    PARALLEL
    PARAMETERS
    PASS
    PROCESSORCONFIG
    RBRACK
    READERCONFIG
    RESOURCE
    RESULT
    RESULTPATH
    RESULTSELECTOR
    RETRY
    SECONDS
    SECONDSPATH
    STANDARD
    STARTAT
    STATES
    STRINGDOLLAR
    STRINGEQUALS
    STRINGEQUALSPATH
    STRINGGREATERTHAN
    STRINGGREATERTHANEQUALS
    STRINGGREATERTHANEQUALSPATH
    STRINGGREATERTHANPATH
    STRINGLESSTHAN
    STRINGLESSTHANEQUALS
    STRINGLESSTHANEQUALSPATH
    STRINGLESSTHANPATH
    STRINGMATCHES
    STRINGPATH
    STRINGPATHCONTEXTOBJ
    SUCCEED
    TASK
    TIMEOUTSECONDS
    TIMEOUTSECONDSPATH
    TIMESTAMP
    TIMESTAMPEQUALS
    TIMESTAMPEQUALSPATH
    TIMESTAMPGREATERTHAN
    TIMESTAMPGREATERTHANEQUALS
    TIMESTAMPGREATERTHANEQUALSPATH
    TIMESTAMPGREATERTHANPATH
    TIMESTAMPLESSTHAN
    TIMESTAMPLESSTHANEQUALS
    TIMESTAMPLESSTHANEQUALSPATH
    TIMESTAMPLESSTHANPATH
    TIMESTAMPPATH
    TRUE
    TYPE
    VARIABLE
    VERSION
    WAIT
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= b a c k o f f r a t e /.$setResult($_BACKOFFRATE);./
    Keyword ::= b o o l e a n e q u a l s /.$setResult($_BOOLEANEQUALS);./
    Keyword ::= b o o l e a n q u a l s p a t h /.$setResult($_BOOLEANQUALSPATH);./
    Keyword ::= b r a n c h e s /.$setResult($_BRANCHES);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c a u s e /.$setResult($_CAUSE);./
    Keyword ::= c a u s e p a t h /.$setResult($_CAUSEPATH);./
    Keyword ::= c h o i c e /.$setResult($_CHOICE);./
    Keyword ::= c h o i c e s /.$setResult($_CHOICES);./
    Keyword ::= c s v h e a d e r l o c a t i o n /.$setResult($_CSVHEADERLOCATION);./
    Keyword ::= c s v h e a d e r s /.$setResult($_CSVHEADERS);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d i s t r i b u t e d /.$setResult($_DISTRIBUTED);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e r r o r /.$setResult($_ERROR);./
    Keyword ::= e r r o r e q u a l s /.$setResult($_ERROREQUALS);./
    Keyword ::= e r r o r p a t h /.$setResult($_ERRORPATH);./
    Keyword ::= e x e c u t i o n t y p e /.$setResult($_EXECUTIONTYPE);./
    Keyword ::= f a i l /.$setResult($_FAIL);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f u l l /.$setResult($_FULL);./
    Keyword ::= h e a r t b e a t s e c o n d s /.$setResult($_HEARTBEATSECONDS);./
    Keyword ::= h e a r t b e a t s e c o n d s p a t h /.$setResult($_HEARTBEATSECONDSPATH);./
    Keyword ::= i n l i n e /.$setResult($_INLINE);./
    Keyword ::= i n p u t p a t h /.$setResult($_INPUTPATH);./
    Keyword ::= i n p u t t y p e /.$setResult($_INPUTTYPE);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= i n t e r v a l s e c o n d s /.$setResult($_INTERVALSECONDS);./
    Keyword ::= i s b o o l e a n /.$setResult($_ISBOOLEAN);./
    Keyword ::= i s n u l l /.$setResult($_ISNULL);./
    Keyword ::= i s n u m e r i c /.$setResult($_ISNUMERIC);./
    Keyword ::= i s p r e s e n t /.$setResult($_ISPRESENT);./
    Keyword ::= i s s t r i n g /.$setResult($_ISSTRING);./
    Keyword ::= i s t i m e s t a m p /.$setResult($_ISTIMESTAMP);./
    Keyword ::= i t e m p r o c e s s o r /.$setResult($_ITEMPROCESSOR);./
    Keyword ::= i t e m r e a d e r /.$setResult($_ITEMREADER);./
    Keyword ::= i t e m s e l e c t o r /.$setResult($_ITEMSELECTOR);./
    Keyword ::= i t e m s p a t h /.$setResult($_ITEMSPATH);./
    Keyword ::= i t e r a t o r /.$setResult($_ITERATOR);./
    Keyword ::= j i t t e r s t r a t e g y /.$setResult($_JITTERSTRATEGY);./
    Keyword ::= l b r a c k /.$setResult($_LBRACK);./
    Keyword ::= m a p /.$setResult($_MAP);./
    Keyword ::= m a x a t t e m p t s /.$setResult($_MAXATTEMPTS);./
    Keyword ::= m a x c o n c u r r e n c y /.$setResult($_MAXCONCURRENCY);./
    Keyword ::= m a x d e l a y s e c o n d s /.$setResult($_MAXDELAYSECONDS);./
    Keyword ::= m a x i t e m s /.$setResult($_MAXITEMS);./
    Keyword ::= m a x i t e m s p a t h /.$setResult($_MAXITEMSPATH);./
    Keyword ::= m o d e /.$setResult($_MODE);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= n u l l /.$setResult($_NULL);./
    Keyword ::= n u m e r i c e q u a l s /.$setResult($_NUMERICEQUALS);./
    Keyword ::= n u m e r i c e q u a l s p a t h /.$setResult($_NUMERICEQUALSPATH);./
    Keyword ::= n u m e r i c g r e a t e r t h a n /.$setResult($_NUMERICGREATERTHAN);./
    Keyword ::= n u m e r i c g r e a t e r t h a n e q u a l s /.$setResult($_NUMERICGREATERTHANEQUALS);./
    Keyword ::= n u m e r i c g r e a t e r t h a n e q u a l s p a t h /.$setResult($_NUMERICGREATERTHANEQUALSPATH);./
    Keyword ::= n u m e r i c g r e a t e r t h a n p a t h /.$setResult($_NUMERICGREATERTHANPATH);./
    Keyword ::= n u m e r i c l e s s t h a n /.$setResult($_NUMERICLESSTHAN);./
    Keyword ::= n u m e r i c l e s s t h a n e q u a l s /.$setResult($_NUMERICLESSTHANEQUALS);./
    Keyword ::= n u m e r i c l e s s t h a n e q u a l s p a t h /.$setResult($_NUMERICLESSTHANEQUALSPATH);./
    Keyword ::= n u m e r i c l e s s t h a n p a t h /.$setResult($_NUMERICLESSTHANPATH);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= o u t p u t p a t h /.$setResult($_OUTPUTPATH);./
    Keyword ::= p a r a l l e l /.$setResult($_PARALLEL);./
    Keyword ::= p a r a m e t e r s /.$setResult($_PARAMETERS);./
    Keyword ::= p a s s /.$setResult($_PASS);./
    Keyword ::= p r o c e s s o r c o n f i g /.$setResult($_PROCESSORCONFIG);./
    Keyword ::= r b r a c k /.$setResult($_RBRACK);./
    Keyword ::= r e a d e r c o n f i g /.$setResult($_READERCONFIG);./
    Keyword ::= r e s o u r c e /.$setResult($_RESOURCE);./
    Keyword ::= r e s u l t /.$setResult($_RESULT);./
    Keyword ::= r e s u l t p a t h /.$setResult($_RESULTPATH);./
    Keyword ::= r e s u l t s e l e c t o r /.$setResult($_RESULTSELECTOR);./
    Keyword ::= r e t r y /.$setResult($_RETRY);./
    Keyword ::= s e c o n d s /.$setResult($_SECONDS);./
    Keyword ::= s e c o n d s p a t h /.$setResult($_SECONDSPATH);./
    Keyword ::= s t a n d a r d /.$setResult($_STANDARD);./
    Keyword ::= s t a r t a t /.$setResult($_STARTAT);./
    Keyword ::= s t a t e s /.$setResult($_STATES);./
    Keyword ::= s t r i n g d o l l a r /.$setResult($_STRINGDOLLAR);./
    Keyword ::= s t r i n g e q u a l s /.$setResult($_STRINGEQUALS);./
    Keyword ::= s t r i n g e q u a l s p a t h /.$setResult($_STRINGEQUALSPATH);./
    Keyword ::= s t r i n g g r e a t e r t h a n /.$setResult($_STRINGGREATERTHAN);./
    Keyword ::= s t r i n g g r e a t e r t h a n e q u a l s /.$setResult($_STRINGGREATERTHANEQUALS);./
    Keyword ::= s t r i n g g r e a t e r t h a n e q u a l s p a t h /.$setResult($_STRINGGREATERTHANEQUALSPATH);./
    Keyword ::= s t r i n g g r e a t e r t h a n p a t h /.$setResult($_STRINGGREATERTHANPATH);./
    Keyword ::= s t r i n g l e s s t h a n /.$setResult($_STRINGLESSTHAN);./
    Keyword ::= s t r i n g l e s s t h a n e q u a l s /.$setResult($_STRINGLESSTHANEQUALS);./
    Keyword ::= s t r i n g l e s s t h a n e q u a l s p a t h /.$setResult($_STRINGLESSTHANEQUALSPATH);./
    Keyword ::= s t r i n g l e s s t h a n p a t h /.$setResult($_STRINGLESSTHANPATH);./
    Keyword ::= s t r i n g m a t c h e s /.$setResult($_STRINGMATCHES);./
    Keyword ::= s t r i n g p a t h /.$setResult($_STRINGPATH);./
    Keyword ::= s t r i n g p a t h c o n t e x t o b j /.$setResult($_STRINGPATHCONTEXTOBJ);./
    Keyword ::= s u c c e e d /.$setResult($_SUCCEED);./
    Keyword ::= t a s k /.$setResult($_TASK);./
    Keyword ::= t i m e o u t s e c o n d s /.$setResult($_TIMEOUTSECONDS);./
    Keyword ::= t i m e o u t s e c o n d s p a t h /.$setResult($_TIMEOUTSECONDSPATH);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= t i m e s t a m p e q u a l s /.$setResult($_TIMESTAMPEQUALS);./
    Keyword ::= t i m e s t a m p e q u a l s p a t h /.$setResult($_TIMESTAMPEQUALSPATH);./
    Keyword ::= t i m e s t a m p g r e a t e r t h a n /.$setResult($_TIMESTAMPGREATERTHAN);./
    Keyword ::= t i m e s t a m p g r e a t e r t h a n e q u a l s /.$setResult($_TIMESTAMPGREATERTHANEQUALS);./
    Keyword ::= t i m e s t a m p g r e a t e r t h a n e q u a l s p a t h /.$setResult($_TIMESTAMPGREATERTHANEQUALSPATH);./
    Keyword ::= t i m e s t a m p g r e a t e r t h a n p a t h /.$setResult($_TIMESTAMPGREATERTHANPATH);./
    Keyword ::= t i m e s t a m p l e s s t h a n /.$setResult($_TIMESTAMPLESSTHAN);./
    Keyword ::= t i m e s t a m p l e s s t h a n e q u a l s /.$setResult($_TIMESTAMPLESSTHANEQUALS);./
    Keyword ::= t i m e s t a m p l e s s t h a n e q u a l s p a t h /.$setResult($_TIMESTAMPLESSTHANEQUALSPATH);./
    Keyword ::= t i m e s t a m p l e s s t h a n p a t h /.$setResult($_TIMESTAMPLESSTHANPATH);./
    Keyword ::= t i m e s t a m p p a t h /.$setResult($_TIMESTAMPPATH);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= v a r i a b l e /.$setResult($_VARIABLE);./
    Keyword ::= v e r s i o n /.$setResult($_VERSION);./
    Keyword ::= w a i t /.$setResult($_WAIT);./
%End
