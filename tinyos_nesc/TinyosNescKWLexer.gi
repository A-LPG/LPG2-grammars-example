-- Keyword filter
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
    VOID
    RETURN
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= c o n f i g u r a t i o n /.$setResult($_CONFIGURATION);./
              | m o d u l e /.$setResult($_MODULE);./
              | i m p l e m e n t a t i o n /.$setResult($_IMPLEMENTATION);./
              | c o m p o n e n t s /.$setResult($_COMPONENTS);./
              | i n t e r f a c e /.$setResult($_INTERFACE);./
              | u s e s /.$setResult($_USES);./
              | p r o v i d e s /.$setResult($_PROVIDES);./
              | a s /.$setResult($_AS);./
              | c a l l /.$setResult($_CALL);./
              | e v e n t /.$setResult($_EVENT);./
              | c o m m a n d /.$setResult($_COMMAND);./
              | v o i d /.$setResult($_VOID);./
              | r e t u r n /.$setResult($_RETURN);./
%End
