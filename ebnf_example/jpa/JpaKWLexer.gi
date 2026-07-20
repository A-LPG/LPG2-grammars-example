-- Keyword filter for Jpa (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.jpa
%options template=KeywordTemplateF.gi
%options fp=JpaKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABS
    ALL
    AND
    ANY
    AS
    ASC
    AVG
    BETWEEN
    BOTH
    BY
    CONCAT
    COUNT
    DELETE
    DESC
    DISTINCT
    EMPTY
    ESCAPE
    EXISTS
    FETCH
    FROM
    GROUP
    HAVING
    IN
    INNER
    IS
    JOIN
    LEADING
    LEFT
    LENGTH
    LIKE
    LOCATE
    LOWER
    MAX
    MEMBER
    MIN
    MOD
    NEW
    NOT
    NULL_LITERAL
    OBJECT
    OF
    OR
    ORDER
    OUTER
    SELECT
    SET
    SIZE
    SOME
    SQRT
    SUBSTRING
    SUM
    TRAILING
    TRIM
    UPDATE
    UPPER
    WHERE
    boolean_literal
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s u b s t r i n g /.$setResult($_SUBSTRING);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= t r a i l i n g /.$setResult($_TRAILING);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= l e a d i n g /.$setResult($_LEADING);./
    Keyword ::= c o n c a t /.$setResult($_CONCAT);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= l e n g t h /.$setResult($_LENGTH);./
    Keyword ::= l o c a t e /.$setResult($_LOCATE);./
    Keyword ::= m e m b e r /.$setResult($_MEMBER);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= c o u n t /.$setResult($_COUNT);./
    Keyword ::= e m p t y /.$setResult($_EMPTY);./
    Keyword ::= f a l s e /.$setResult($_boolean_literal);./
    Keyword ::= f e t c h /.$setResult($_FETCH);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= l o w e r /.$setResult($_LOWER);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= u p p e r /.$setResult($_UPPER);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= b o t h /.$setResult($_BOTH);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= n u l l /.$setResult($_NULL_LITERAL);./
    Keyword ::= s i z e /.$setResult($_SIZE);./
    Keyword ::= s o m e /.$setResult($_SOME);./
    Keyword ::= s q r t /.$setResult($_SQRT);./
    Keyword ::= t r i m /.$setResult($_TRIM);./
    Keyword ::= t r u e /.$setResult($_boolean_literal);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= a v g /.$setResult($_AVG);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o r /.$setResult($_OR);./
%End
