--
-- The LEG Keyword Lexer
--
%options package=org.eclipse.imp.leg.parser
%options template=KeywordTemplateF.gi

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    -- List all the keywords the kwlexer will export to the lexer and parser
    boolean
    double
    else
    false
    if
    int
    return
    true
    void
    while
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Start
    -- The Goal for the parser is a single Keyword
    Keyword
%End

%Rules
    Keyword ::= b o o l e a n  /.$setResult($_boolean);./
              | d o u b l e    /.$setResult($_double);./
              | e l s e        /.$setResult($_else);./
              | f a l s e      /.$setResult($_false);./
              | i f            /.$setResult($_if);./
              | i n t          /.$setResult($_int);./
              | v o i d        /.$setResult($_void);./
              | r e t u r n    /.$setResult($_return);./
              | t r u e        /.$setResult($_true);./
              | w h i l e      /.$setResult($_while);./
%End
