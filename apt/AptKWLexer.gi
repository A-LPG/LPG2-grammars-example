-- APT option/type keywords (grammars-v4 apt.g4 OptionName + TypeR)
%options package=lpg.grammars.apt
%options template=KeywordTemplateF.gi
%options fp=AptKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    ARCH
    LANG
    TARGET
    TRUSTED
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    Minus ::= '-'
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= t r u s t e d /.$setResult($_TRUSTED);./
              | t a r g e t /.$setResult($_TARGET);./
              | a r c h /.$setResult($_ARCH);./
              | l a n g /.$setResult($_LANG);./
%End
