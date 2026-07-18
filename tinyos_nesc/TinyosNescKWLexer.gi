-- TinyOS/nesC keyword filter
%options package=lpg.grammars.tinyos_nesc
%options template=KeywordTemplateF.gi
%options fp=TinyosNescKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    CONFIGURATION
    MODULE
    IMPLEMENTATION
    COMPONENTS
    INTERFACE
    USES
    PROVIDES
    AS
    CALL
    EVENT
    COMMAND
    RETURN
    VOID
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= c o n f i g u r a t i o n /.$setResult($_CONFIGURATION);./
              | i m p l e m e n t a t i o n /.$setResult($_IMPLEMENTATION);./
              | c o m p o n e n t s /.$setResult($_COMPONENTS);./
              | i n t e r f a c e /.$setResult($_INTERFACE);./
              | p r o v i d e s /.$setResult($_PROVIDES);./
              | c o m m a n d /.$setResult($_COMMAND);./
              | m o d u l e /.$setResult($_MODULE);./
              | r e t u r n /.$setResult($_RETURN);./
              | e v e n t /.$setResult($_EVENT);./
              | u s e s /.$setResult($_USES);./
              | c a l l /.$setResult($_CALL);./
              | v o i d /.$setResult($_VOID);./
              | a s /.$setResult($_AS);./
%End
