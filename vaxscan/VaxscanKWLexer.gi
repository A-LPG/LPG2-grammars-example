-- Vaxscan keyword filter
%options package=lpg.grammars.vaxscan
%options template=KeywordTemplateF.gi
%options fp=VaxscanKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    MODULE
    END
    PROCEDURE
    BEGIN
    DECLARE
    INTEGER
    BOOLEAN
    TRUE
    FALSE
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
              | d e c l a r e /.$setResult($_DECLARE);./
              | i n t e g e r /.$setResult($_INTEGER);./
              | b o o l e a n /.$setResult($_BOOLEAN);./
              | m o d u l e /.$setResult($_MODULE);./
              | f a l s e /.$setResult($_FALSE);./
              | b e g i n /.$setResult($_BEGIN);./
              | t r u e /.$setResult($_TRUE);./
              | e n d /.$setResult($_END);./
%End
