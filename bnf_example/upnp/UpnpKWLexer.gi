-- UPnP keywords
%options package=lpg.grammars.upnp
%options template=KeywordTemplateF.gi
%options fp=UpnpKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    AND
    OR
    CONTAINS
    DOESNOTCONTAIN
    DERIVEDFROM
    EXISTS
    TRUE
    FALSE
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | c o n t a i n s /.$setResult($_CONTAINS);./
              | d o e s n o t c o n t a i n /.$setResult($_DOESNOTCONTAIN);./
              | d e r i v e d f r o m /.$setResult($_DERIVEDFROM);./
              | e x i s t s /.$setResult($_EXISTS);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
%End
