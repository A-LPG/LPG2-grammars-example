-- Keyword filter for Java language subset (statements/expressions)
%options package=lpg.grammars.java.java
%options template=KeywordTemplateF.gi
%options fp=JavaKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    PACKAGE
    IMPORT
    PUBLIC
    PRIVATE
    STATIC
    CLASS
    VOID
    BOOLEAN
    INT
    IF
    ELSE
    WHILE
    RETURN
    NEW
    TRUE
    FALSE
    NULL
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
              | i m p o r t /.$setResult($_IMPORT);./
              | p u b l i c /.$setResult($_PUBLIC);./
              | p r i v a t e /.$setResult($_PRIVATE);./
              | s t a t i c /.$setResult($_STATIC);./
              | c l a s s /.$setResult($_CLASS);./
              | v o i d /.$setResult($_VOID);./
              | b o o l e a n /.$setResult($_BOOLEAN);./
              | i n t /.$setResult($_INT);./
              | i f /.$setResult($_IF);./
              | e l s e /.$setResult($_ELSE);./
              | w h i l e /.$setResult($_WHILE);./
              | r e t u r n /.$setResult($_RETURN);./
              | n e w /.$setResult($_NEW);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n u l l /.$setResult($_NULL);./
%End
