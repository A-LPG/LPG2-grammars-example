-- Keyword filter for Spl (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.spl
%options template=KeywordTemplateF.gi
%options fp=SplKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    AND
    AS
    BY
    IN
    LIKE
    MODIFIER_AND_FUNCTION
    NOT
    OR
    OUTPUT
    OUTPUTNEW
    TIME_AND_FUNCTION
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= o u t p u t n e w /.$setResult($_OUTPUTNEW);./
    Keyword ::= e a r l i e s t /.$setResult($_MODIFIER_AND_FUNCTION);./
    Keyword ::= l a t e s t /.$setResult($_MODIFIER_AND_FUNCTION);./
    Keyword ::= o u t p u t /.$setResult($_OUTPUT);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= n o w /.$setResult($_TIME_AND_FUNCTION);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= o r /.$setResult($_OR);./
%End
