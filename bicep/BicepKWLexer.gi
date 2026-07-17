-- Keyword filter
%options package=lpg.grammars.bicep
%options template=KeywordTemplateF.gi
%options fp=BicepKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    PARAM
    VAR
    RESOURCE
    MODULE
    OUTPUT
    METADATA
    TRUE
    FALSE
    NULLLITERAL
    STRING_T
    INT_T
    BOOL_T
    OBJECT_T
    ARRAY_T
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= p a r a m /.$setResult($_PARAM);./
              | v a r /.$setResult($_VAR);./
              | r e s o u r c e /.$setResult($_RESOURCE);./
              | m o d u l e /.$setResult($_MODULE);./
              | o u t p u t /.$setResult($_OUTPUT);./
              | m e t a d a t a /.$setResult($_METADATA);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n u l l /.$setResult($_NULLLITERAL);./
              | s t r i n g /.$setResult($_STRING_T);./
              | i n t /.$setResult($_INT_T);./
              | b o o l /.$setResult($_BOOL_T);./
              | o b j e c t /.$setResult($_OBJECT_T);./
              | a r r a y /.$setResult($_ARRAY_T);./
%End
