-- Keyword filter for Mumps (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.mumps
%options template=KeywordTemplateF.gi
%options fp=MumpsKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    BREAK
    CLOSE
    DO
    ELSE
    FOR
    GOTO
    HALT
    HANG
    IF
    JOB
    KILL
    LOCK
    MERGE
    NEW
    OPEN
    QUIT
    READ
    SET
    TCOMMIT
    TRESTART
    TROLLBACK
    TSTART
    USE
    VIEW
    WRITE
    XECUTE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= t r o l l b a c k /.$setResult($_TROLLBACK);./
    Keyword ::= t r e s t a r t /.$setResult($_TRESTART);./
    Keyword ::= t c o m m i t /.$setResult($_TCOMMIT);./
    Keyword ::= t s t a r t /.$setResult($_TSTART);./
    Keyword ::= x e c u t e /.$setResult($_XECUTE);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= m e r g e /.$setResult($_MERGE);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= h a l t /.$setResult($_HALT);./
    Keyword ::= h a n g /.$setResult($_HANG);./
    Keyword ::= k i l l /.$setResult($_KILL);./
    Keyword ::= l o c k /.$setResult($_LOCK);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= q u i t /.$setResult($_QUIT);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= j o b /.$setResult($_JOB);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
%End
