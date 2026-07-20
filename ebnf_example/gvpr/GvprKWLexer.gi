-- Keyword filter for Gvpr (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.gvpr
%options template=KeywordTemplateF.gi
%options fp=GvprKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    BEGIN
    BREAK
    CASE
    CHAR
    CONTINUE
    DEFAULT
    DOUBLE
    E
    ELSE
    END
    EXIT
    FLOAT
    FOR
    GSUB
    IF
    INT
    IN_OP
    ITERATER
    LONG
    LSH
    N
    PRINTF
    PROCEDURE
    QUERY
    RAND
    RETURN
    RSH
    SCANF
    SPLIT
    SPRINTF
    SRAND
    SSCANF
    STATIC
    STRING
    SUB
    SUBSTR
    SWITCH
    TOKENS
    UNSET
    UNSIGNED
    VOID
    WHILE
    XPRINT
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= u n s i g n e d /.$setResult($_UNSIGNED);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= s p r i n t f /.$setResult($_SPRINTF);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= p r i n t f /.$setResult($_PRINTF);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s s c a n f /.$setResult($_SSCANF);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s u b s t r /.$setResult($_SUBSTR);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= t o k e n s /.$setResult($_TOKENS);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= p r i n t /.$setResult($_XPRINT);./
    Keyword ::= q u e r y /.$setResult($_QUERY);./
    Keyword ::= s c a n f /.$setResult($_SCANF);./
    Keyword ::= s p l i t /.$setResult($_SPLIT);./
    Keyword ::= s r a n d /.$setResult($_SRAND);./
    Keyword ::= u n s e t /.$setResult($_UNSET);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= f o r r /.$setResult($_ITERATER);./
    Keyword ::= g s u b /.$setResult($_GSUB);./
    Keyword ::= l o n g /.$setResult($_LONG);./
    Keyword ::= r a n d /.$setResult($_RAND);./
    Keyword ::= v o i d /.$setResult($_VOID);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= l s h /.$setResult($_LSH);./
    Keyword ::= r s h /.$setResult($_RSH);./
    Keyword ::= s u b /.$setResult($_SUB);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN_OP);./
    Keyword ::= e /.$setResult($_E);./
    Keyword ::= n /.$setResult($_N);./
%End
