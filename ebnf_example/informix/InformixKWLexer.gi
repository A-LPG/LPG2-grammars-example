-- Keyword filter for Informix (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.informix
%options template=KeywordTemplateF.gi
%options fp=InformixKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABSOLUTE
    ACCEPT
    AFTER
    AGGREGATE
    ALL
    ALLOCATE
    AND
    ANY
    ARRAY
    AS
    ASC
    ASCII
    AT
    ATTRIBUTE
    ATTRIBUTES
    AVERAGE
    AVG
    BEFORE
    BEGIN
    BETWEEN
    BIGINT
    BLACK
    BLINK
    BLUE
    BOLD
    BORDER
    BOTTOM
    BUFFERED
    BY
    BYTE
    CACHE
    CALL
    CASE
    CHAR
    CHARARACTER
    CHECK
    CLEAR
    CLIPPED
    CLOSE
    CLUSTER
    COLUMN
    COLUMNS
    COMMAND
    COMMENT
    COMMIT
    COMMITTED
    CONSTANT
    CONSTRAINED
    CONSTRAINT
    CONSTRUCT
    CONTINUE
    COPY
    COUNT
    CRCOLS
    CREATE
    CURRENT
    CURSOR
    CYAN
    DATABASE
    DATE
    DATETIME
    DAY
    DEALLOCATE
    DEC
    DECIMAL
    DECLARE
    DECODE
    DEFAULT
    DEFAULTS
    DEFER
    DEFINE
    DELETE
    DELIMITER
    DESC
    DIM
    DIMENSIONS
    DIRTY
    DISPLAY
    DISTINCT
    DO
    DOUBLE
    DOWN
    DROP
    DYNAMIC
    ELSE
    END
    ERROR
    ESCAPE
    EVERY
    EXCLUSIVE
    EXEC
    EXECUTE
    EXISTS
    EXIT
    EXPLAIN
    EXTEND
    EXTENT
    EXTERNAL
    FALSE
    FETCH
    FIELD
    FILE
    FINISH
    FIRST
    FLOAT
    FLUSH
    FOR
    FOREACH
    FORM
    FORMAT
    FORMONLY
    FOUND
    FRACTION
    FREE
    FROM
    FUNCTION
    GET_FLDBUF
    GLOBALS
    GO
    GOTO
    GREEN
    GROUP
    HAVING
    HEADER
    HELP
    HIDE
    HOLD
    HOUR
    IF
    IN
    INDEX
    INDICATOR
    INFIELD
    INITIALIZE
    INNER
    INPUT
    INSERT
    INSTRUCTIONS
    INT
    INTEGER
    INTERRUPT
    INTERVAL
    INTO
    INVISIBLE
    IS
    ISNULL
    ISOLATION
    JOIN
    KEY
    LABEL
    LAST
    LEFT
    LENGTH
    LET
    LIKE
    LINE
    LINENO
    LINES
    LOAD
    LOCATE
    LOCK
    LOG
    LONG
    MAGENTA
    MAIN
    MARGIN
    MATCHES
    MAX
    MDY
    MENU
    MESSAGE
    MIN
    MINUTE
    MOD
    MODE
    MODULE
    MONEY
    MONTH
    NAME
    NCHAR
    NEED
    NEW
    NEXT
    NO
    NORMAL
    NOT
    NOTFOUND
    NOW
    NULL_
    NUMERIC
    NVARCHAR
    NVL
    OF
    OFF
    ON
    OPEN
    OPTION
    OPTIONS
    OR
    ORD
    ORDER
    OTHERWISE
    OUTER
    OUTPUT
    PAGE
    PAGENO
    PAUSE
    PERCENT
    PIPE
    PRECISION
    PREPARE
    PREVIOUS
    PRINT
    PRINTER
    PROGRAM
    PROMPT
    PUT
    QUIT
    READ
    REAL
    RECORD
    RED
    RELATIVE
    REMOVE
    REOPTIMIZATION
    REPEAT
    REPEATABLE
    REPORT
    RESIZE
    RETURN
    RETURNING
    REVERSE
    RIGHT
    ROLLBACK
    ROW
    ROWS
    RUN
    SCREEN
    SCROLL
    SECOND
    SELECT
    SET
    SHARE
    SHOW
    SIZE
    SKIP2
    SLEEP
    SMALLFLOAT
    SMALLINT
    SPACE
    SPACES
    SQL
    SQLERROR
    SQLWARNING
    STABILITY
    START
    STATISTICS
    STATUS
    STOP
    SUM
    TABLE
    TABLES
    TEMP
    TERMINATE
    TEXT
    THEN
    THROUGH
    THRU
    TIME
    TO
    TODAY
    TOP
    TRAILER
    TRUE
    TYPE
    UNCONSTRAINED
    UNDERLINE
    UNION
    UNIQUE
    UNITS
    UNLOAD
    UP
    UPDATE
    USER
    USING
    VALIDATE
    VALUES
    VARCHAR
    VIEW
    WAIT
    WAITING
    WARNING
    WEEKDAY
    WHEN
    WHENEVER
    WHERE
    WHILE
    WHITE
    WINDOW
    WITH
    WITHOUT
    WORDWRAP
    WORK
    YEAR
    YELLOW
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= r e o p t i m i z a t i o n /.$setResult($_REOPTIMIZATION);./
    Keyword ::= u n c o n s t r a i n e d /.$setResult($_UNCONSTRAINED);./
    Keyword ::= i n s t r u c t i o n s /.$setResult($_INSTRUCTIONS);./
    Keyword ::= c h a r a r a c t e r /.$setResult($_CHARARACTER);./
    Keyword ::= c o n s t r a i n e d /.$setResult($_CONSTRAINED);./
    Keyword ::= a t t r i b u t e s /.$setResult($_ATTRIBUTES);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= d e a l l o c a t e /.$setResult($_DEALLOCATE);./
    Keyword ::= d i m e n s i o n s /.$setResult($_DIMENSIONS);./
    Keyword ::= i n i t i a l i z e /.$setResult($_INITIALIZE);./
    Keyword ::= r e p e a t a b l e /.$setResult($_REPEATABLE);./
    Keyword ::= s m a l l f l o a t /.$setResult($_SMALLFLOAT);./
    Keyword ::= s q l w a r n i n g /.$setResult($_SQLWARNING);./
    Keyword ::= s t a t i s t i c s /.$setResult($_STATISTICS);./
    Keyword ::= a g g r e g a t e /.$setResult($_AGGREGATE);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
    Keyword ::= c o m m i t t e d /.$setResult($_COMMITTED);./
    Keyword ::= c o n s t r u c t /.$setResult($_CONSTRUCT);./
    Keyword ::= d e l i m i t e r /.$setResult($_DELIMITER);./
    Keyword ::= e x c l u s i v e /.$setResult($_EXCLUSIVE);./
    Keyword ::= g e t f l d b u f /.$setResult($_GET_FLDBUF);./
    Keyword ::= i n d i c a t o r /.$setResult($_INDICATOR);./
    Keyword ::= i n t e r r u p t /.$setResult($_INTERRUPT);./
    Keyword ::= i n v i s i b l e /.$setResult($_INVISIBLE);./
    Keyword ::= i s o l a t i o n /.$setResult($_ISOLATION);./
    Keyword ::= o t h e r w i s e /.$setResult($_OTHERWISE);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION);./
    Keyword ::= r e t u r n i n g /.$setResult($_RETURNING);./
    Keyword ::= s t a b i l i t y /.$setResult($_STABILITY);./
    Keyword ::= t e r m i n a t e /.$setResult($_TERMINATE);./
    Keyword ::= u n d e r l i n e /.$setResult($_UNDERLINE);./
    Keyword ::= a b s o l u t e /.$setResult($_ABSOLUTE);./
    Keyword ::= a l l o c a t e /.$setResult($_ALLOCATE);./
    Keyword ::= b u f f e r e d /.$setResult($_BUFFERED);./
    Keyword ::= c o n s t a n t /.$setResult($_CONSTANT);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE);./
    Keyword ::= d a t e t i m e /.$setResult($_DATETIME);./
    Keyword ::= d e f a u l t s /.$setResult($_DEFAULTS);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= f o r m o n l y /.$setResult($_FORMONLY);./
    Keyword ::= f r a c t i o n /.$setResult($_FRACTION);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= i n t e r v a l /.$setResult($_INTERVAL);./
    Keyword ::= n o t f o u n d /.$setResult($_NOTFOUND);./
    Keyword ::= n v a r c h a r /.$setResult($_NVARCHAR);./
    Keyword ::= p r e v i o u s /.$setResult($_PREVIOUS);./
    Keyword ::= r e l a t i v e /.$setResult($_RELATIVE);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT);./
    Keyword ::= s q l e r r o r /.$setResult($_SQLERROR);./
    Keyword ::= v a l i d a t e /.$setResult($_VALIDATE);./
    Keyword ::= w h e n e v e r /.$setResult($_WHENEVER);./
    Keyword ::= w o r d w r a p /.$setResult($_WORDWRAP);./
    Keyword ::= a v e r a g e /.$setResult($_AVERAGE);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= c l i p p e d /.$setResult($_CLIPPED);./
    Keyword ::= c l u s t e r /.$setResult($_CLUSTER);./
    Keyword ::= c o l u m n s /.$setResult($_COLUMNS);./
    Keyword ::= c o m m a n d /.$setResult($_COMMAND);./
    Keyword ::= c o m m e n t /.$setResult($_COMMENT);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d i s p l a y /.$setResult($_DISPLAY);./
    Keyword ::= d y n a m i c /.$setResult($_DYNAMIC);./
    Keyword ::= e x e c u t e /.$setResult($_EXECUTE);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN);./
    Keyword ::= f o r e a c h /.$setResult($_FOREACH);./
    Keyword ::= g l o b a l s /.$setResult($_GLOBALS);./
    Keyword ::= i n f i e l d /.$setResult($_INFIELD);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= m a g e n t a /.$setResult($_MAGENTA);./
    Keyword ::= m a t c h e s /.$setResult($_MATCHES);./
    Keyword ::= m e s s a g e /.$setResult($_MESSAGE);./
    Keyword ::= n u m e r i c /.$setResult($_NUMERIC);./
    Keyword ::= o p t i o n s /.$setResult($_OPTIONS);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p r e p a r e /.$setResult($_PREPARE);./
    Keyword ::= p r i n t e r /.$setResult($_PRINTER);./
    Keyword ::= p r o g r a m /.$setResult($_PROGRAM);./
    Keyword ::= r e v e r s e /.$setResult($_REVERSE);./
    Keyword ::= t h r o u g h /.$setResult($_THROUGH);./
    Keyword ::= t r a i l e r /.$setResult($_TRAILER);./
    Keyword ::= v a r c h a r /.$setResult($_VARCHAR);./
    Keyword ::= w a i t i n g /.$setResult($_WAITING);./
    Keyword ::= w a r n i n g /.$setResult($_WARNING);./
    Keyword ::= w e e k d a y /.$setResult($_WEEKDAY);./
    Keyword ::= w i t h o u t /.$setResult($_WITHOUT);./
    Keyword ::= a c c e p t /.$setResult($_ACCEPT);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= b o r d e r /.$setResult($_BORDER);./
    Keyword ::= b o t t o m /.$setResult($_BOTTOM);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c o m m i t /.$setResult($_COMMIT);./
    Keyword ::= c r c o l s /.$setResult($_CRCOLS);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= c u r s o r /.$setResult($_CURSOR);./
    Keyword ::= d e c o d e /.$setResult($_DECODE);./
    Keyword ::= d e f i n e /.$setResult($_DEFINE);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= e x t e n d /.$setResult($_EXTEND);./
    Keyword ::= e x t e n t /.$setResult($_EXTENT);./
    Keyword ::= f i n i s h /.$setResult($_FINISH);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= h e a d e r /.$setResult($_HEADER);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= i s n u l l /.$setResult($_ISNULL);./
    Keyword ::= l e n g t h /.$setResult($_LENGTH);./
    Keyword ::= l i n e n o /.$setResult($_LINENO);./
    Keyword ::= l o c a t e /.$setResult($_LOCATE);./
    Keyword ::= m a r g i n /.$setResult($_MARGIN);./
    Keyword ::= m i n u t e /.$setResult($_MINUTE);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= n o r m a l /.$setResult($_NORMAL);./
    Keyword ::= o p t i o n /.$setResult($_OPTION);./
    Keyword ::= o u t p u t /.$setResult($_OUTPUT);./
    Keyword ::= p a g e n o /.$setResult($_PAGENO);./
    Keyword ::= p r o m p t /.$setResult($_PROMPT);./
    Keyword ::= r e c o r d /.$setResult($_RECORD);./
    Keyword ::= r e m o v e /.$setResult($_REMOVE);./
    Keyword ::= r e p e a t /.$setResult($_REPEAT);./
    Keyword ::= r e p o r t /.$setResult($_REPORT);./
    Keyword ::= r e s i z e /.$setResult($_RESIZE);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s c r e e n /.$setResult($_SCREEN);./
    Keyword ::= s c r o l l /.$setResult($_SCROLL);./
    Keyword ::= s e c o n d /.$setResult($_SECOND);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s p a c e s /.$setResult($_SPACES);./
    Keyword ::= s t a t u s /.$setResult($_STATUS);./
    Keyword ::= t a b l e s /.$setResult($_TABLES);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= u n l o a d /.$setResult($_UNLOAD);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= w i n d o w /.$setResult($_WINDOW);./
    Keyword ::= y e l l o w /.$setResult($_YELLOW);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= a s c i i /.$setResult($_ASCII);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= b l a c k /.$setResult($_BLACK);./
    Keyword ::= b l i n k /.$setResult($_BLINK);./
    Keyword ::= c a c h e /.$setResult($_CACHE);./
    Keyword ::= c h e c k /.$setResult($_CHECK);./
    Keyword ::= c l e a r /.$setResult($_CLEAR);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c o u n t /.$setResult($_COUNT);./
    Keyword ::= d e f e r /.$setResult($_DEFER);./
    Keyword ::= d i r t y /.$setResult($_DIRTY);./
    Keyword ::= e r r o r /.$setResult($_ERROR);./
    Keyword ::= e v e r y /.$setResult($_EVERY);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f e t c h /.$setResult($_FETCH);./
    Keyword ::= f i e l d /.$setResult($_FIELD);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= f l u s h /.$setResult($_FLUSH);./
    Keyword ::= f o u n d /.$setResult($_FOUND);./
    Keyword ::= g r e e n /.$setResult($_GREEN);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= i n p u t /.$setResult($_INPUT);./
    Keyword ::= l a b e l /.$setResult($_LABEL);./
    Keyword ::= l i n e s /.$setResult($_LINES);./
    Keyword ::= m o n e y /.$setResult($_MONEY);./
    Keyword ::= m o n t h /.$setResult($_MONTH);./
    Keyword ::= n c h a r /.$setResult($_NCHAR);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= p a u s e /.$setResult($_PAUSE);./
    Keyword ::= p r i n t /.$setResult($_PRINT);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= s h a r e /.$setResult($_SHARE);./
    Keyword ::= s l e e p /.$setResult($_SLEEP);./
    Keyword ::= s p a c e /.$setResult($_SPACE);./
    Keyword ::= s t a r t /.$setResult($_START);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= t o d a y /.$setResult($_TODAY);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u n i t s /.$setResult($_UNITS);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= w h i t e /.$setResult($_WHITE);./
    Keyword ::= b l u e /.$setResult($_BLUE);./
    Keyword ::= b o l d /.$setResult($_BOLD);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= c o p y /.$setResult($_COPY);./
    Keyword ::= c y a n /.$setResult($_CYAN);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d o w n /.$setResult($_DOWN);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x e c /.$setResult($_EXEC);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= f o r m /.$setResult($_FORM);./
    Keyword ::= f r e e /.$setResult($_FREE);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= h e l p /.$setResult($_HELP);./
    Keyword ::= h i d e /.$setResult($_HIDE);./
    Keyword ::= h o l d /.$setResult($_HOLD);./
    Keyword ::= h o u r /.$setResult($_HOUR);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l i n e /.$setResult($_LINE);./
    Keyword ::= l o a d /.$setResult($_LOAD);./
    Keyword ::= l o c k /.$setResult($_LOCK);./
    Keyword ::= l o n g /.$setResult($_LONG);./
    Keyword ::= m a i n /.$setResult($_MAIN);./
    Keyword ::= m e n u /.$setResult($_MENU);./
    Keyword ::= m o d e /.$setResult($_MODE);./
    Keyword ::= n a m e /.$setResult($_NAME);./
    Keyword ::= n e e d /.$setResult($_NEED);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= p a g e /.$setResult($_PAGE);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= q u i t /.$setResult($_QUIT);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= s h o w /.$setResult($_SHOW);./
    Keyword ::= s i z e /.$setResult($_SIZE);./
    Keyword ::= s k i p /.$setResult($_SKIP2);./
    Keyword ::= s t o p /.$setResult($_STOP);./
    Keyword ::= t e m p /.$setResult($_TEMP);./
    Keyword ::= t e x t /.$setResult($_TEXT);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t h r u /.$setResult($_THRU);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= u s e r /.$setResult($_USER);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= w a i t /.$setResult($_WAIT);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= w o r k /.$setResult($_WORK);./
    Keyword ::= y e a r /.$setResult($_YEAR);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= a v g /.$setResult($_AVG);./
    Keyword ::= d a y /.$setResult($_DAY);./
    Keyword ::= d e c /.$setResult($_DEC);./
    Keyword ::= d i m /.$setResult($_DIM);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= l e t /.$setResult($_LET);./
    Keyword ::= l o g /.$setResult($_LOG);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m d y /.$setResult($_MDY);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= n o w /.$setResult($_NOW);./
    Keyword ::= n v l /.$setResult($_NVL);./
    Keyword ::= o f f /.$setResult($_OFF);./
    Keyword ::= o r d /.$setResult($_ORD);./
    Keyword ::= p u t /.$setResult($_PUT);./
    Keyword ::= r e d /.$setResult($_RED);./
    Keyword ::= r o w /.$setResult($_ROW);./
    Keyword ::= r u n /.$setResult($_RUN);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s q l /.$setResult($_SQL);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= t o p /.$setResult($_TOP);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= g o /.$setResult($_GO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
    Keyword ::= u p /.$setResult($_UP);./
%End
