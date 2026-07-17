-- Keyword filter
%options package=lpg.grammars.thrift
%options template=KeywordTemplateF.gi
%options fp=ThriftKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    TYPEDEF
    STRUCT
    EXCEPTION
    SERVICE
    REQUIRED
    OPTIONAL
    VOID
    BOOL
    BYTE
    I16
    I32
    I64
    DOUBLE
    STRING
    BINARY
    MAP
    SET
    LIST
    ENUM
    CONST
    INCLUDE
    NAMESPACE
    EXTENDS
    THROWS
    ONEWAY
    UNION
    SENUM
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= t y p e d e f /.$setResult($_TYPEDEF);./
              | s t r u c t /.$setResult($_STRUCT);./
              | e x c e p t i o n /.$setResult($_EXCEPTION);./
              | s e r v i c e /.$setResult($_SERVICE);./
              | r e q u i r e d /.$setResult($_REQUIRED);./
              | o p t i o n a l /.$setResult($_OPTIONAL);./
              | v o i d /.$setResult($_VOID);./
              | b o o l /.$setResult($_BOOL);./
              | b y t e /.$setResult($_BYTE);./
              | i 1 6 /.$setResult($_I16);./
              | i 3 2 /.$setResult($_I32);./
              | i 6 4 /.$setResult($_I64);./
              | d o u b l e /.$setResult($_DOUBLE);./
              | s t r i n g /.$setResult($_STRING);./
              | b i n a r y /.$setResult($_BINARY);./
              | m a p /.$setResult($_MAP);./
              | s e t /.$setResult($_SET);./
              | l i s t /.$setResult($_LIST);./
              | e n u m /.$setResult($_ENUM);./
              | c o n s t /.$setResult($_CONST);./
              | i n c l u d e /.$setResult($_INCLUDE);./
              | n a m e s p a c e /.$setResult($_NAMESPACE);./
              | e x t e n d s /.$setResult($_EXTENDS);./
              | t h r o w s /.$setResult($_THROWS);./
              | o n e w a y /.$setResult($_ONEWAY);./
              | u n i o n /.$setResult($_UNION);./
              | s e n u m /.$setResult($_SENUM);./
%End
