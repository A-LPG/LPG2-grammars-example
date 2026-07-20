-- Keyword filter
%options package=lpg.grammars.ocl
%options template=KeywordTemplateF.gi
%options fp=OclKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    PACKAGE
    ENDPACKAGE
    CONTEXT
    INV
    PRE
    POST
    DEF
    BODY
    INIT
    DERIVE
    IF
    THEN
    ELSE
    ENDIF
    LET
    IN
    AND
    OR
    XOR
    NOT
    IMPLIES
    TRUE
    FALSE
    NULL
    INVALID
    SELF
    RESULT
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
    0 1 2 3 4 5 6 7 8 9
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
              | e n d p a c k a g e /.$setResult($_ENDPACKAGE);./
              | c o n t e x t /.$setResult($_CONTEXT);./
              | i n v /.$setResult($_INV);./
              | p r e /.$setResult($_PRE);./
              | p o s t /.$setResult($_POST);./
              | d e f /.$setResult($_DEF);./
              | b o d y /.$setResult($_BODY);./
              | i n i t /.$setResult($_INIT);./
              | d e r i v e /.$setResult($_DERIVE);./
              | i f /.$setResult($_IF);./
              | t h e n /.$setResult($_THEN);./
              | e l s e /.$setResult($_ELSE);./
              | e n d i f /.$setResult($_ENDIF);./
              | l e t /.$setResult($_LET);./
              | i n /.$setResult($_IN);./
              | a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | x o r /.$setResult($_XOR);./
              | n o t /.$setResult($_NOT);./
              | i m p l i e s /.$setResult($_IMPLIES);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n u l l /.$setResult($_NULL);./
              | i n v a l i d /.$setResult($_INVALID);./
              | s e l f /.$setResult($_SELF);./
              | r e s u l t /.$setResult($_RESULT);./
%End
