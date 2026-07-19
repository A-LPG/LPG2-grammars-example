-- Keyword filter for Snobol (command names only; STRING/EOL/INTEGER are lexer tokens)
%options package=lpg.grammars.snobol
%options template=KeywordTemplateF.gi
%options fp=SnobolKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ARRAY
    ATAN
    BREAK
    CHOP
    COMMENT
    CONVERT
    COS
    DATE
    DIFFER
    DUPL
    END
    EXP
    F
    GE
    GT
    IDENT
    LE
    LT
    LGT
    LN
    NE
    REMDR
    REPLACE
    REVERSE
    S
    SIN
    SIZE
    SORT
    TABLE
    TAN
    TRIM
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c o m m e n t /.$setResult($_COMMENT);./
    Keyword ::= c o n v e r t /.$setResult($_CONVERT);./
    Keyword ::= i n t e g e r /.$setResult($_IDENT);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= r e v e r s e /.$setResult($_REVERSE);./
    Keyword ::= d i f f e r /.$setResult($_DIFFER);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= i d e n t /.$setResult($_IDENT);./
    Keyword ::= r e m d r /.$setResult($_REMDR);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= a t a n /.$setResult($_ATAN);./
    Keyword ::= c h o p /.$setResult($_CHOP);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d u p l /.$setResult($_DUPL);./
    Keyword ::= s i z e /.$setResult($_SIZE);./
    Keyword ::= s o r t /.$setResult($_SORT);./
    Keyword ::= t r i m /.$setResult($_TRIM);./
    Keyword ::= c o s /.$setResult($_COS);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e x p /.$setResult($_EXP);./
    Keyword ::= l g t /.$setResult($_LGT);./
    Keyword ::= s i n /.$setResult($_SIN);./
    Keyword ::= t a n /.$setResult($_TAN);./
    Keyword ::= g e /.$setResult($_GE);./
    Keyword ::= g t /.$setResult($_GT);./
    Keyword ::= l e /.$setResult($_LE);./
    Keyword ::= l t /.$setResult($_LT);./
    Keyword ::= l n /.$setResult($_LN);./
    Keyword ::= n e /.$setResult($_NE);./
    Keyword ::= f /.$setResult($_F);./
    Keyword ::= s /.$setResult($_S);./
%End
