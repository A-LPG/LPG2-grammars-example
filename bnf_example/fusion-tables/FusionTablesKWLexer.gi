-- Keyword filter for Fusion Tables SQL subset
%options package=lpg.grammars.fusion_tables
%options template=KeywordTemplateF.gi
%options fp=FusionTablesKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    K_CREATE
    K_TABLE
    K_VIEW
    K_AS
    K_SELECT
    K_FROM
    K_WHERE
    K_INSERT
    K_INTO
    K_VALUES
    K_UPDATE
    K_SET
    K_DELETE
    K_DROP
    K_SHOW
    K_TABLES
    K_DESCRIBE
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= d e s c r i b e /.$setResult($_K_DESCRIBE);./
              | v a l u e s /.$setResult($_K_VALUES);./
              | i n s e r t /.$setResult($_K_INSERT);./
              | u p d a t e /.$setResult($_K_UPDATE);./
              | d e l e t e /.$setResult($_K_DELETE);./
              | c r e a t e /.$setResult($_K_CREATE);./
              | s e l e c t /.$setResult($_K_SELECT);./
              | t a b l e s /.$setResult($_K_TABLES);./
              | w h e r e /.$setResult($_K_WHERE);./
              | t a b l e /.$setResult($_K_TABLE);./
              | i n t o /.$setResult($_K_INTO);./
              | f r o m /.$setResult($_K_FROM);./
              | d r o p /.$setResult($_K_DROP);./
              | s h o w /.$setResult($_K_SHOW);./
              | v i e w /.$setResult($_K_VIEW);./
              | s e t /.$setResult($_K_SET);./
              | a s /.$setResult($_K_AS);./
%End
