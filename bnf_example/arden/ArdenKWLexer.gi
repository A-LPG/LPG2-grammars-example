-- Keyword filter for Arden (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.arden
%options template=KeywordTemplateF.gi
%options fp=ArdenKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABS
    ACTION
    ADD
    AFTER
    AGGREGATE
    AGO
    ALL
    AND
    ANY
    APPLICABILITY
    ARCCOS
    ARCSIN
    ARCTAN
    ARDEN
    ARETRUE
    ARGUMENT
    AS
    AT
    ATTIME
    ATTRIBUTE
    AUTHOR
    AVERAGE
    BE
    BEFORE
    BOOLEAN
    BREAKLOOP
    BY
    CALL
    CASE
    CEILING
    CHARACTERS
    CITATIONS
    CLONE
    CONCLUDE
    COUNT
    CRISP
    CURRENTTIME
    DATA
    DATE
    DECREASE
    DEFAULT
    DEFUZZIFIED
    DELAY
    DESTINATION
    DO
    DURATION
    EARLIEST
    ELEMENTS
    ELSE
    ELSEIF
    END
    ENDDO
    ENDIF
    ENDSWITCH
    EQUAL
    EVENT
    EVENTTIME
    EVERY
    EVOKE
    EXP
    EXPLANATION
    EXTRACT
    FALSE
    FILENAME
    FIND
    FIRST
    FLOOR
    FOLLOWING
    FOR
    FORMATTED
    FROM
    FUZZIFIED
    FUZZY
    GREATER
    IF
    IN
    INCLUDE
    INCREASE
    INDEX
    INSTITUTION
    INT
    INTERFACE
    INTERVAL
    ISTRUE
    IT
    KEYWORDS
    KNOWLEDGE
    LANGUAGE
    LAST
    LATEST
    LEAST
    LEFT
    LENGTH
    LESS
    LET
    LIBRARY
    LINGUISTIC
    LINKS
    LIST
    LOCALIZED
    LOG
    LOG10
    LOGIC
    LOWERCASE
    MAINTENANCE
    MATCHES
    MEDIAN
    MERGE
    MESSAGE
    MLM
    MLMNAME
    MOST
    NAMES
    NEAREST
    NEW
    NO
    NOT
    NOW
    NULL
    NUMBEROP
    OBJECT
    OF
    OR
    PAST
    PATTERN
    PRECEDING
    PRESENT
    PRIORITY
    PURPOSE
    READ
    REMOVE
    REPLACE
    RESOURCES
    RETURN
    REVERSE
    RIGHT
    ROUND
    SAME
    SEQTO
    SET
    SLOPE
    SORT
    SPECIALIST
    SQRT
    STARTING
    STDDEV
    STRINGOP
    SUBLIST
    SUBSTRING
    SUM
    SURROUNDING
    SWITCH
    THAN
    THE
    THEN
    TIME
    TITLE
    TO
    TODAY
    TOMORROW
    TRIGGERTIME
    TRIM
    TRUE
    TRUNCATE
    TYPE
    UNTIL
    UPPERCASE
    URGENCY
    USING
    VALIDATION
    VARIABLE
    VARIANCE
    VERSION
    WHERE
    WHILE
    WITH
    WITHIN
    WRITE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a p p l i c a b i l i t y /.$setResult($_APPLICABILITY);./
    Keyword ::= c u r r e n t t i m e /.$setResult($_CURRENTTIME);./
    Keyword ::= d e f u z z i f i e d /.$setResult($_DEFUZZIFIED);./
    Keyword ::= d e s t i n a t i o n /.$setResult($_DESTINATION);./
    Keyword ::= e x p l a n a t i o n /.$setResult($_EXPLANATION);./
    Keyword ::= i n s t i t u t i o n /.$setResult($_INSTITUTION);./
    Keyword ::= m a i n t e n a n c e /.$setResult($_MAINTENANCE);./
    Keyword ::= s u r r o u n d i n g /.$setResult($_SURROUNDING);./
    Keyword ::= t r i g g e r t i m e /.$setResult($_TRIGGERTIME);./
    Keyword ::= c h a r a c t e r s /.$setResult($_CHARACTERS);./
    Keyword ::= l i n g u i s t i c /.$setResult($_LINGUISTIC);./
    Keyword ::= s p e c i a l i s t /.$setResult($_SPECIALIST);./
    Keyword ::= v a l i d a t i o n /.$setResult($_VALIDATION);./
    Keyword ::= a g g r e g a t e /.$setResult($_AGGREGATE);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
    Keyword ::= b r e a k l o o p /.$setResult($_BREAKLOOP);./
    Keyword ::= c i t a t i o n s /.$setResult($_CITATIONS);./
    Keyword ::= e n d s w i t c h /.$setResult($_ENDSWITCH);./
    Keyword ::= e v e n t t i m e /.$setResult($_EVENTTIME);./
    Keyword ::= f o l l o w i n g /.$setResult($_FOLLOWING);./
    Keyword ::= f o r m a t t e d /.$setResult($_FORMATTED);./
    Keyword ::= f u z z i f i e d /.$setResult($_FUZZIFIED);./
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= k n o w l e d g e /.$setResult($_KNOWLEDGE);./
    Keyword ::= l o c a l i z e d /.$setResult($_LOCALIZED);./
    Keyword ::= l o w e r c a s e /.$setResult($_LOWERCASE);./
    Keyword ::= p r e c e d i n g /.$setResult($_PRECEDING);./
    Keyword ::= r e s o u r c e s /.$setResult($_RESOURCES);./
    Keyword ::= s u b s t r i n g /.$setResult($_SUBSTRING);./
    Keyword ::= u p p e r c a s e /.$setResult($_UPPERCASE);./
    Keyword ::= a r g u m e n t /.$setResult($_ARGUMENT);./
    Keyword ::= c o n c l u d e /.$setResult($_CONCLUDE);./
    Keyword ::= d e c r e a s e /.$setResult($_DECREASE);./
    Keyword ::= d u r a t i o n /.$setResult($_DURATION);./
    Keyword ::= e a r l i e s t /.$setResult($_EARLIEST);./
    Keyword ::= e l e m e n t s /.$setResult($_ELEMENTS);./
    Keyword ::= f i l e n a m e /.$setResult($_FILENAME);./
    Keyword ::= i n c r e a s e /.$setResult($_INCREASE);./
    Keyword ::= i n t e r v a l /.$setResult($_INTERVAL);./
    Keyword ::= k e y w o r d s /.$setResult($_KEYWORDS);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE);./
    Keyword ::= p r i o r i t y /.$setResult($_PRIORITY);./
    Keyword ::= s t a r t i n g /.$setResult($_STARTING);./
    Keyword ::= t o m o r r o w /.$setResult($_TOMORROW);./
    Keyword ::= t r u n c a t e /.$setResult($_TRUNCATE);./
    Keyword ::= v a r i a b l e /.$setResult($_VARIABLE);./
    Keyword ::= v a r i a n c e /.$setResult($_VARIANCE);./
    Keyword ::= a r e t r u e /.$setResult($_ARETRUE);./
    Keyword ::= a v e r a g e /.$setResult($_AVERAGE);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= c e i l i n g /.$setResult($_CEILING);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= e x t r a c t /.$setResult($_EXTRACT);./
    Keyword ::= g r e a t e r /.$setResult($_GREATER);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= l i b r a r y /.$setResult($_LIBRARY);./
    Keyword ::= m a t c h e s /.$setResult($_MATCHES);./
    Keyword ::= m e s s a g e /.$setResult($_MESSAGE);./
    Keyword ::= m l m n a m e /.$setResult($_MLMNAME);./
    Keyword ::= n e a r e s t /.$setResult($_NEAREST);./
    Keyword ::= p a t t e r n /.$setResult($_PATTERN);./
    Keyword ::= p r e s e n t /.$setResult($_PRESENT);./
    Keyword ::= p u r p o s e /.$setResult($_PURPOSE);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= r e v e r s e /.$setResult($_REVERSE);./
    Keyword ::= s u b l i s t /.$setResult($_SUBLIST);./
    Keyword ::= u r g e n c y /.$setResult($_URGENCY);./
    Keyword ::= v e r s i o n /.$setResult($_VERSION);./
    Keyword ::= a c t i o n /.$setResult($_ACTION);./
    Keyword ::= a r c c o s /.$setResult($_ARCCOS);./
    Keyword ::= a r c s i n /.$setResult($_ARCSIN);./
    Keyword ::= a r c t a n /.$setResult($_ARCTAN);./
    Keyword ::= a t t i m e /.$setResult($_ATTIME);./
    Keyword ::= a u t h o r /.$setResult($_AUTHOR);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF);./
    Keyword ::= i s t r u e /.$setResult($_ISTRUE);./
    Keyword ::= l a t e s t /.$setResult($_LATEST);./
    Keyword ::= l e n g t h /.$setResult($_LENGTH);./
    Keyword ::= m e d i a n /.$setResult($_MEDIAN);./
    Keyword ::= n u m b e r /.$setResult($_NUMBEROP);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= r e m o v e /.$setResult($_REMOVE);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s t d d e v /.$setResult($_STDDEV);./
    Keyword ::= s t r i n g /.$setResult($_STRINGOP);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= w i t h i n /.$setResult($_WITHIN);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= a r d e n /.$setResult($_ARDEN);./
    Keyword ::= c l o n e /.$setResult($_CLONE);./
    Keyword ::= c o u n t /.$setResult($_COUNT);./
    Keyword ::= c r i s p /.$setResult($_CRISP);./
    Keyword ::= d e l a y /.$setResult($_DELAY);./
    Keyword ::= e n d d o /.$setResult($_ENDDO);./
    Keyword ::= e n d i f /.$setResult($_ENDIF);./
    Keyword ::= e q u a l /.$setResult($_EQUAL);./
    Keyword ::= e v e n t /.$setResult($_EVENT);./
    Keyword ::= e v e r y /.$setResult($_EVERY);./
    Keyword ::= e v o k e /.$setResult($_EVOKE);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f l o o r /.$setResult($_FLOOR);./
    Keyword ::= f u z z y /.$setResult($_FUZZY);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= l e a s t /.$setResult($_LEAST);./
    Keyword ::= l i n k s /.$setResult($_LINKS);./
    Keyword ::= l o g 1 0 /.$setResult($_LOG10);./
    Keyword ::= l o g i c /.$setResult($_LOGIC);./
    Keyword ::= m e r g e /.$setResult($_MERGE);./
    Keyword ::= n a m e s /.$setResult($_NAMES);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= r o u n d /.$setResult($_ROUND);./
    Keyword ::= s e q t o /.$setResult($_SEQTO);./
    Keyword ::= s l o p e /.$setResult($_SLOPE);./
    Keyword ::= t i t l e /.$setResult($_TITLE);./
    Keyword ::= t o d a y /.$setResult($_TODAY);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f i n d /.$setResult($_FIND);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l e s s /.$setResult($_LESS);./
    Keyword ::= l i s t /.$setResult($_LIST);./
    Keyword ::= m o s t /.$setResult($_MOST);./
    Keyword ::= n u l l /.$setResult($_NULL);./
    Keyword ::= p a s t /.$setResult($_PAST);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= s a m e /.$setResult($_SAME);./
    Keyword ::= s o r t /.$setResult($_SORT);./
    Keyword ::= s q r t /.$setResult($_SQRT);./
    Keyword ::= t h a n /.$setResult($_THAN);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t h e y /.$setResult($_IT);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r i m /.$setResult($_TRIM);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a g o /.$setResult($_AGO);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a v g /.$setResult($_AVERAGE);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e x p /.$setResult($_EXP);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= l e t /.$setResult($_LET);./
    Keyword ::= l o g /.$setResult($_LOG);./
    Keyword ::= m l m /.$setResult($_MLM);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= n o w /.$setResult($_NOW);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= t h e /.$setResult($_THE);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= b e /.$setResult($_BE);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i t /.$setResult($_IT);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
