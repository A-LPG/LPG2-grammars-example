-- Alloy keywords
%options package=lpg.grammars.alloy
%options template=KeywordTemplateF.gi
%options fp=AlloyKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    MODULE OPEN AS ABSTRACT SIG EXTENDS INN LONE SOME ONE DISJ
    FACT PRED FUN ASSERT RUN CHECK FOR BUT EXACTLY
    THIS NONE UNIV IDEN NOTT NO SET ALL SUM ORR ANDD IFF IMPLIES ELSE LET
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
              | o p e n /.$setResult($_OPEN);./
              | a s /.$setResult($_AS);./
              | a b s t r a c t /.$setResult($_ABSTRACT);./
              | s i g /.$setResult($_SIG);./
              | e x t e n d s /.$setResult($_EXTENDS);./
              | i n /.$setResult($_INN);./
              | l o n e /.$setResult($_LONE);./
              | s o m e /.$setResult($_SOME);./
              | o n e /.$setResult($_ONE);./
              | d i s j /.$setResult($_DISJ);./
              | f a c t /.$setResult($_FACT);./
              | p r e d /.$setResult($_PRED);./
              | f u n /.$setResult($_FUN);./
              | a s s e r t /.$setResult($_ASSERT);./
              | r u n /.$setResult($_RUN);./
              | c h e c k /.$setResult($_CHECK);./
              | f o r /.$setResult($_FOR);./
              | b u t /.$setResult($_BUT);./
              | e x a c t l y /.$setResult($_EXACTLY);./
              | t h i s /.$setResult($_THIS);./
              | n o n e /.$setResult($_NONE);./
              | u n i v /.$setResult($_UNIV);./
              | i d e n /.$setResult($_IDEN);./
              | n o t /.$setResult($_NOTT);./
              | n o /.$setResult($_NO);./
              | s e t /.$setResult($_SET);./
              | a l l /.$setResult($_ALL);./
              | s u m /.$setResult($_SUM);./
              | o r /.$setResult($_ORR);./
              | a n d /.$setResult($_ANDD);./
              | i f f /.$setResult($_IFF);./
              | i m p l i e s /.$setResult($_IMPLIES);./
              | e l s e /.$setResult($_ELSE);./
              | l e t /.$setResult($_LET);./
%End
