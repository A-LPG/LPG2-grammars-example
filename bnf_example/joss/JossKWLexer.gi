-- Keyword filter for Joss (aligned to parser terminal names)
%options package=lpg.grammars.joss
%options template=KeywordTemplateF.gi
%options fp=JossKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ADDOP
    ALL
    AND
    CANCEL
    COS_
    DELETE
    DEMAND
    DO
    DONE
    DOTDOT
    DP_
    EXP_
    FATARROW
    FOR
    FORM
    FORMS
    FP_
    GO
    IF
    IN
    IP_
    LINECMD
    LOG_
    MAX_
    MIN_
    MULOP
    OR
    PAGECMD
    PART
    PARTNUMBER
    PARTS
    SET
    SGN_
    SIN_
    SIZE
    SQRT_
    SQUOTE
    STEP
    STEPNUMBER
    STEPS
    STOP
    STRING
    TIME
    TO
    TYPE
    UNDERSCORE
    USERS
    VALUES
    XP_
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= p a r t n u m b e r /.$setResult($_PARTNUMBER);./
    Keyword ::= s t e p n u m b e r /.$setResult($_STEPNUMBER);./
    Keyword ::= u n d e r s c o r e /.$setResult($_UNDERSCORE);./
    Keyword ::= f a t a r r o w /.$setResult($_FATARROW);./
    Keyword ::= l i n e c m d /.$setResult($_LINECMD);./
    Keyword ::= p a g e c m d /.$setResult($_PAGECMD);./
    Keyword ::= c a n c e l /.$setResult($_CANCEL);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d e m a n d /.$setResult($_DEMAND);./
    Keyword ::= d o t d o t /.$setResult($_DOTDOT);./
    Keyword ::= s q u o t e /.$setResult($_SQUOTE);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= a d d o p /.$setResult($_ADDOP);./
    Keyword ::= f o r m s /.$setResult($_FORMS);./
    Keyword ::= m u l o p /.$setResult($_MULOP);./
    Keyword ::= p a r t s /.$setResult($_PARTS);./
    Keyword ::= s t e p s /.$setResult($_STEPS);./
    Keyword ::= u s e r s /.$setResult($_USERS);./
    Keyword ::= d o n e /.$setResult($_DONE);./
    Keyword ::= f o r m /.$setResult($_FORM);./
    Keyword ::= p a r t /.$setResult($_PART);./
    Keyword ::= s i z e /.$setResult($_SIZE);./
    Keyword ::= s q r t /.$setResult($_SQRT_);./
    Keyword ::= s t e p /.$setResult($_STEP);./
    Keyword ::= s t o p /.$setResult($_STOP);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= c o s /.$setResult($_COS_);./
    Keyword ::= e x p /.$setResult($_EXP_);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= l o g /.$setResult($_LOG_);./
    Keyword ::= m a x /.$setResult($_MAX_);./
    Keyword ::= m i n /.$setResult($_MIN_);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s g n /.$setResult($_SGN_);./
    Keyword ::= s i n /.$setResult($_SIN_);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= d p /.$setResult($_DP_);./
    Keyword ::= f p /.$setResult($_FP_);./
    Keyword ::= g o /.$setResult($_GO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i p /.$setResult($_IP_);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
    Keyword ::= x p /.$setResult($_XP_);./
%End
