-- Redcode keywords
%options package=lpg.grammars.redcode
%options template=KeywordTemplateF.gi
%options fp=RedcodeKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    DAT
    MOV
    ADD
    SUB
    MUL
    DIV
    MOD
    JMP
    JMZ
    JMN
    DJN
    CMP
    SLT
    SPL
    ORG
    DJZ
    A
    B
    AB
    BA
    F
    X
    I
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= d a t /.$setResult($_DAT);./
              | m o v /.$setResult($_MOV);./
              | a d d /.$setResult($_ADD);./
              | s u b /.$setResult($_SUB);./
              | m u l /.$setResult($_MUL);./
              | d i v /.$setResult($_DIV);./
              | m o d /.$setResult($_MOD);./
              | j m p /.$setResult($_JMP);./
              | j m z /.$setResult($_JMZ);./
              | j m n /.$setResult($_JMN);./
              | d j n /.$setResult($_DJN);./
              | c m p /.$setResult($_CMP);./
              | s l t /.$setResult($_SLT);./
              | s p l /.$setResult($_SPL);./
              | o r g /.$setResult($_ORG);./
              | d j z /.$setResult($_DJZ);./
              | a /.$setResult($_A);./
              | b /.$setResult($_B);./
              | a b /.$setResult($_AB);./
              | b a /.$setResult($_BA);./
              | f /.$setResult($_F);./
              | x /.$setResult($_X);./
              | i /.$setResult($_I);./
%End
