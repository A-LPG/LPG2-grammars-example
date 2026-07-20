-- Keyword filter
%options package=lpg.grammars.mdx
%options template=KeywordTemplateF.gi
%options fp=MdxKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    SELECT
    FROM
    WHERE
    ON
    COLUMNS
    ROWS
    PAGES
    SECTIONS
    CHAPTERS
    PROPERTIES
    CELL
    DIMENSION
    MEMBER
    SET
    AS
    AND
    OR
    NOT
    EMPTY
    NON
    AXIS
    WITH
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
    0 1 2 3 4 5 6 7 8 9
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
              | f r o m /.$setResult($_FROM);./
              | w h e r e /.$setResult($_WHERE);./
              | o n /.$setResult($_ON);./
              | c o l u m n s /.$setResult($_COLUMNS);./
              | r o w s /.$setResult($_ROWS);./
              | p a g e s /.$setResult($_PAGES);./
              | s e c t i o n s /.$setResult($_SECTIONS);./
              | c h a p t e r s /.$setResult($_CHAPTERS);./
              | p r o p e r t i e s /.$setResult($_PROPERTIES);./
              | c e l l /.$setResult($_CELL);./
              | d i m e n s i o n /.$setResult($_DIMENSION);./
              | m e m b e r /.$setResult($_MEMBER);./
              | s e t /.$setResult($_SET);./
              | a s /.$setResult($_AS);./
              | a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | n o t /.$setResult($_NOT);./
              | e m p t y /.$setResult($_EMPTY);./
              | n o n /.$setResult($_NON);./
              | a x i s /.$setResult($_AXIS);./
              | w i t h /.$setResult($_WITH);./
%End
