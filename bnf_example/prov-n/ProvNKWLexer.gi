-- Keyword filter
%options package=lpg.grammars.prov_n
%options template=KeywordTemplateF.gi
%options fp=ProvNKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    DOCUMENT
    ENDDOCUMENT
    PREFIX
    DEFAULT
    ENTITY
    ACTIVITY
    AGENT
    WASGENERATEDBY
    USED
    WASINFORMEDBY
    WASSTARTEDBY
    WASENDEDBY
    WASINVALIDATEDBY
    WASDERIVEDFROM
    WASATTRIBUTEDTO
    WASASSOCIATEDWITH
    ACTEDONBEHALFOF
    WASINFLUENCEDBY
    ALTERNATEOF
    SPECIALIZATIONOF
    MENTIONOF
    HADMEMBER
    BUNDLE
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
    Keyword ::= d o c u m e n t /.$setResult($_DOCUMENT);./
              | e n d d o c u m e n t /.$setResult($_ENDDOCUMENT);./
              | p r e f i x /.$setResult($_PREFIX);./
              | d e f a u l t /.$setResult($_DEFAULT);./
              | e n t i t y /.$setResult($_ENTITY);./
              | a c t i v i t y /.$setResult($_ACTIVITY);./
              | a g e n t /.$setResult($_AGENT);./
              | w a s g e n e r a t e d b y /.$setResult($_WASGENERATEDBY);./
              | u s e d /.$setResult($_USED);./
              | w a s i n f o r m e d b y /.$setResult($_WASINFORMEDBY);./
              | w a s s t a r t e d b y /.$setResult($_WASSTARTEDBY);./
              | w a s e n d e d b y /.$setResult($_WASENDEDBY);./
              | w a s i n v a l i d a t e d b y /.$setResult($_WASINVALIDATEDBY);./
              | w a s d e r i v e d f r o m /.$setResult($_WASDERIVEDFROM);./
              | w a s a t t r i b u t e d t o /.$setResult($_WASATTRIBUTEDTO);./
              | w a s a s s o c i a t e d w i t h /.$setResult($_WASASSOCIATEDWITH);./
              | a c t e d o n b e h a l f o f /.$setResult($_ACTEDONBEHALFOF);./
              | w a s i n f l u e n c e d b y /.$setResult($_WASINFLUENCEDBY);./
              | a l t e r n a t e o f /.$setResult($_ALTERNATEOF);./
              | s p e c i a l i z a t i o n o f /.$setResult($_SPECIALIZATIONOF);./
              | m e n t i o n o f /.$setResult($_MENTIONOF);./
              | h a d m e m b e r /.$setResult($_HADMEMBER);./
              | b u n d l e /.$setResult($_BUNDLE);./
%End
