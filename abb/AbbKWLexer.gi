-- Keyword filter
%options package=lpg.grammars.abb
%options template=KeywordTemplateF.gi
%options fp=AbbKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    MODULE
    ENDMODULE
    PROC
    ENDPROC
    LOCAL
    CONST
    PERS
    VAR
    TOOLDATA
    WOBJDATA
    SPEEDDATA
    ZONEDATA
    CLOCK
    BOOL
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
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
              | e n d m o d u l e /.$setResult($_ENDMODULE);./
              | p r o c /.$setResult($_PROC);./
              | e n d p r o c /.$setResult($_ENDPROC);./
              | l o c a l /.$setResult($_LOCAL);./
              | c o n s t /.$setResult($_CONST);./
              | p e r s /.$setResult($_PERS);./
              | v a r /.$setResult($_VAR);./
              | t o o l d a t a /.$setResult($_TOOLDATA);./
              | w o b j d a t a /.$setResult($_WOBJDATA);./
              | s p e e d d a t a /.$setResult($_SPEEDDATA);./
              | z o n e d a t a /.$setResult($_ZONEDATA);./
              | c l o c k /.$setResult($_CLOCK);./
              | b o o l /.$setResult($_BOOL);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
%End
