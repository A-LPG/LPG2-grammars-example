-- Keyword filter for Plucid (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.plucid
%options template=KeywordTemplateF.gi
%options fp=PlucidKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ARG
    CASE
    COND
    CURRENT
    DEFAULT
    ELSE
    ELSEIF
    END
    ENDIF
    EOD
    ERROR
    FI
    FILTER
    IF
    IS
    LENGTH
    NIL
    OF
    P_LUCID_OPERATOR
    P_SPECIAL_OPERATOR
    P_STRING_OPERATOR
    SUBSTR
    THEN
    WHERE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= i s s t r i n g /.$setResult($_P_STRING_OPERATOR);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= i s e r r o r /.$setResult($_P_SPECIAL_OPERATOR);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF);./
    Keyword ::= f i l t e r /.$setResult($_FILTER);./
    Keyword ::= l e n g t h /.$setResult($_LENGTH);./
    Keyword ::= m k w o r d /.$setResult($_P_STRING_OPERATOR);./
    Keyword ::= s u b s t r /.$setResult($_SUBSTR);./
    Keyword ::= e n d i f /.$setResult($_ENDIF);./
    Keyword ::= e r r o r /.$setResult($_ERROR);./
    Keyword ::= f i r s t /.$setResult($_P_LUCID_OPERATOR);./
    Keyword ::= i s e o d /.$setResult($_P_SPECIAL_OPERATOR);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c o n d /.$setResult($_COND);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= n e x t /.$setResult($_P_LUCID_OPERATOR);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= a r g /.$setResult($_ARG);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e o d /.$setResult($_EOD);./
    Keyword ::= n i l /.$setResult($_NIL);./
    Keyword ::= f i /.$setResult($_FI);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= o f /.$setResult($_OF);./

%End
