-- Keyword filter for calculator function names and constants
-- Source: antlr/grammars-v4 calculator/calculator.g4 (BSD)
--
-- Keywords apply only to identifiers (via checkForKeyWord).
-- Scientific exponents use E/e inside SCIENTIFIC_NUMBER, not this filter.

%options package=lpg.grammars.calculator
%options template=KeywordTemplateF.gi
%options fp=CalculatorKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    COS
    SIN
    TAN
    ACOS
    ASIN
    ATAN
    LN
    LOG
    SQRT
    PI
    EULER
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
    Keyword ::= c o s       /.$setResult($_COS);./
              | s i n       /.$setResult($_SIN);./
              | t a n       /.$setResult($_TAN);./
              | a c o s     /.$setResult($_ACOS);./
              | a s i n     /.$setResult($_ASIN);./
              | a t a n     /.$setResult($_ATAN);./
              | l n         /.$setResult($_LN);./
              | l o g       /.$setResult($_LOG);./
              | s q r t     /.$setResult($_SQRT);./
              | p i         /.$setResult($_PI);./
              | e           /.$setResult($_EULER);./
              | i           /.$setResult($_I);./
%End
