-- Keyword filter for Elixir (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.elixir
%options template=KeywordTemplateF.gi
%options fp=ElixirKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    AFTER
    AND
    CASE
    CATCH
    COND
    DEF
    DEFMACRO
    DEFMODULE
    DEFP
    DO
    ELSE
    END
    FALSE
    FN
    FOR
    IF
    IN
    NIL
    NOT
    OR
    RECUE
    TRUE
    TRY
    UNLESS
    WHEN
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
    Keyword ::= d e f m o d u l e /.$setResult($_DEFMODULE);./
    Keyword ::= d e f m a c r o /.$setResult($_DEFMACRO);./
    Keyword ::= r e s c u e /.$setResult($_RECUE);./
    Keyword ::= u n l e s s /.$setResult($_UNLESS);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c o n d /.$setResult($_COND);./
    Keyword ::= d e f p /.$setResult($_DEFP);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= d e f /.$setResult($_DEF);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= n i l /.$setResult($_NIL);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= f n /.$setResult($_FN);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= o r /.$setResult($_OR);./
%End
