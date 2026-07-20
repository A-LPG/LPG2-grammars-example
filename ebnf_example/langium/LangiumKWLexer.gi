-- Keyword filter for Langium (aligned with LangiumParser terminal names)
%options package=lpg.grammars.langium
%options template=KeywordTemplateF.gi
%options fp=LangiumKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    BIGINT
    BOOLEAN
    CURRENT
    DATE
    ENTRY
    EXTENDS
    FALSE
    FRAGMENT
    GRAMMAR
    HIDDEN
    IMPORT
    INFER
    INFERS
    INTERFACE
    NUMBER
    RETURNS
    STRING
    TERMINAL
    TRUE
    TYPE
    WITH
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= f r a g m e n t /.$setResult($_FRAGMENT);./
    Keyword ::= t e r m i n a l /.$setResult($_TERMINAL);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT);./
    Keyword ::= e x t e n d s /.$setResult($_EXTENDS);./
    Keyword ::= g r a m m a r /.$setResult($_GRAMMAR);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= h i d d e n /.$setResult($_HIDDEN);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= i n f e r s /.$setResult($_INFERS);./
    Keyword ::= n u m b e r /.$setResult($_NUMBER);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= e n t r y /.$setResult($_ENTRY);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= i n f e r /.$setResult($_INFER);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= w i t h /.$setResult($_WITH);./
%End
