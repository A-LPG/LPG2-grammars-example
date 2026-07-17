-- Keyword filter for Chip-8 mnemonics (case-insensitive via folded map).
%options package=lpg.grammars.chip8
%options template=KeywordTemplateF.gi
%options fp=Chip8KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    CLS
    RET
    SYS
    JP
    CALL
    SE
    SNE
    LD
    ADD
    OR
    AND
    XOR
    SUB
    SHR
    SUBN
    SHL
    RND
    DRW
    SKP
    SKNP
    I
    DT
    ST
    F
    B
    K
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c l s /.$setResult($_CLS);./
              | r e t /.$setResult($_RET);./
              | s y s /.$setResult($_SYS);./
              | j p /.$setResult($_JP);./
              | c a l l /.$setResult($_CALL);./
              | s e /.$setResult($_SE);./
              | s n e /.$setResult($_SNE);./
              | l d /.$setResult($_LD);./
              | a d d /.$setResult($_ADD);./
              | o r /.$setResult($_OR);./
              | a n d /.$setResult($_AND);./
              | x o r /.$setResult($_XOR);./
              | s u b /.$setResult($_SUB);./
              | s h r /.$setResult($_SHR);./
              | s u b n /.$setResult($_SUBN);./
              | s h l /.$setResult($_SHL);./
              | r n d /.$setResult($_RND);./
              | d r w /.$setResult($_DRW);./
              | s k p /.$setResult($_SKP);./
              | s k n p /.$setResult($_SKNP);./
              | i /.$setResult($_I);./
              | d t /.$setResult($_DT);./
              | s t /.$setResult($_ST);./
              | f /.$setResult($_F);./
              | b /.$setResult($_B);./
              | k /.$setResult($_K);./
%End
