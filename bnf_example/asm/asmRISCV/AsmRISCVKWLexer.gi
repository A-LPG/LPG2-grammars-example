-- Dummy keyword filter
%options package=lpg.grammars.asm.asmRISCV
%options template=KeywordTemplateF.gi
%options fp=AsmRISCVKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    X
    XREGS
    FREGS
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= z e r o /.$setResult($_XREGS);./
    Keyword ::= s 1 0 /.$setResult($_XREGS);./
    Keyword ::= s 1 1 /.$setResult($_XREGS);./
    Keyword ::= a 0 /.$setResult($_XREGS);./
    Keyword ::= a 1 /.$setResult($_XREGS);./
    Keyword ::= a 2 /.$setResult($_XREGS);./
    Keyword ::= a 3 /.$setResult($_XREGS);./
    Keyword ::= a 4 /.$setResult($_XREGS);./
    Keyword ::= a 5 /.$setResult($_XREGS);./
    Keyword ::= a 6 /.$setResult($_XREGS);./
    Keyword ::= a 7 /.$setResult($_XREGS);./
    Keyword ::= g p /.$setResult($_XREGS);./
    Keyword ::= r a /.$setResult($_XREGS);./
    Keyword ::= s 0 /.$setResult($_XREGS);./
    Keyword ::= s 1 /.$setResult($_XREGS);./
    Keyword ::= s 2 /.$setResult($_XREGS);./
    Keyword ::= s 3 /.$setResult($_XREGS);./
    Keyword ::= s 4 /.$setResult($_XREGS);./
    Keyword ::= s 5 /.$setResult($_XREGS);./
    Keyword ::= s 6 /.$setResult($_XREGS);./
    Keyword ::= s 7 /.$setResult($_XREGS);./
    Keyword ::= s 8 /.$setResult($_XREGS);./
    Keyword ::= s 9 /.$setResult($_XREGS);./
    Keyword ::= s p /.$setResult($_XREGS);./
    Keyword ::= t 0 /.$setResult($_XREGS);./
    Keyword ::= t 1 /.$setResult($_XREGS);./
    Keyword ::= t 2 /.$setResult($_XREGS);./
    Keyword ::= t 3 /.$setResult($_XREGS);./
    Keyword ::= t 4 /.$setResult($_XREGS);./
    Keyword ::= t 5 /.$setResult($_XREGS);./
    Keyword ::= t 6 /.$setResult($_XREGS);./
    Keyword ::= t p /.$setResult($_XREGS);./
    Keyword ::= f s 1 0 /.$setResult($_FREGS);./
    Keyword ::= f s 1 1 /.$setResult($_FREGS);./
    Keyword ::= f t 1 0 /.$setResult($_FREGS);./
    Keyword ::= f t 1 1 /.$setResult($_FREGS);./
    Keyword ::= f a 0 /.$setResult($_FREGS);./
    Keyword ::= f a 1 /.$setResult($_FREGS);./
    Keyword ::= f a 2 /.$setResult($_FREGS);./
    Keyword ::= f a 3 /.$setResult($_FREGS);./
    Keyword ::= f a 4 /.$setResult($_FREGS);./
    Keyword ::= f a 5 /.$setResult($_FREGS);./
    Keyword ::= f a 6 /.$setResult($_FREGS);./
    Keyword ::= f a 7 /.$setResult($_FREGS);./
    Keyword ::= f s 0 /.$setResult($_FREGS);./
    Keyword ::= f s 1 /.$setResult($_FREGS);./
    Keyword ::= f s 2 /.$setResult($_FREGS);./
    Keyword ::= f s 3 /.$setResult($_FREGS);./
    Keyword ::= f s 4 /.$setResult($_FREGS);./
    Keyword ::= f s 5 /.$setResult($_FREGS);./
    Keyword ::= f s 6 /.$setResult($_FREGS);./
    Keyword ::= f s 7 /.$setResult($_FREGS);./
    Keyword ::= f s 8 /.$setResult($_FREGS);./
    Keyword ::= f s 9 /.$setResult($_FREGS);./
    Keyword ::= f t 0 /.$setResult($_FREGS);./
    Keyword ::= f t 1 /.$setResult($_FREGS);./
    Keyword ::= f t 2 /.$setResult($_FREGS);./
    Keyword ::= f t 3 /.$setResult($_FREGS);./
    Keyword ::= f t 4 /.$setResult($_FREGS);./
    Keyword ::= f t 5 /.$setResult($_FREGS);./
    Keyword ::= f t 6 /.$setResult($_FREGS);./
    Keyword ::= f t 7 /.$setResult($_FREGS);./
    Keyword ::= f t 8 /.$setResult($_FREGS);./
    Keyword ::= f t 9 /.$setResult($_FREGS);./
    Keyword ::= x x x /.$setResult($_X);./
%End
