-- Keyword filter for Miniscript
%options package=lpg.grammars.miniscript
%options template=KeywordTemplateF.gi
%options fp=MiniscriptKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    AFTER
    ANDOR
    AND_B
    AND_N
    AND_V
    MULTI
    MULTI_A
    OLDER
    OR_B
    OR_C
    OR_D
    OR_I
    PK
    PKH
    PK_H
    PK_K
    THRESH
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= m u l t i _ a /.$setResult($_MULTI_A);./
    Keyword ::= a n d _ v /.$setResult($_AND_V);./
    Keyword ::= a n d _ b /.$setResult($_AND_B);./
    Keyword ::= a n d _ n /.$setResult($_AND_N);./
    Keyword ::= o r _ b /.$setResult($_OR_B);./
    Keyword ::= o r _ c /.$setResult($_OR_C);./
    Keyword ::= o r _ d /.$setResult($_OR_D);./
    Keyword ::= o r _ i /.$setResult($_OR_I);./
    Keyword ::= p k _ k /.$setResult($_PK_K);./
    Keyword ::= p k _ h /.$setResult($_PK_H);./
    Keyword ::= t h r e s h /.$setResult($_THRESH);./
    Keyword ::= a n d o r /.$setResult($_ANDOR);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= m u l t i /.$setResult($_MULTI);./
    Keyword ::= o l d e r /.$setResult($_OLDER);./
    Keyword ::= p k h /.$setResult($_PKH);./
    Keyword ::= p k /.$setResult($_PK);./
%End
