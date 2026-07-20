-- Keyword filter for Moo (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.moo
%options template=KeywordTemplateF.gi
%options fp=MooKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    AS
    CALLED
    DO
    ELSE
    ELSEIF
    ENDFOR
    ENDIF
    ENDTRY
    EXCEPT
    FOR
    IF
    IN
    RETURN
    TO
    TRY
    WHILE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c a l l e d /.$setResult($_CALLED);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF);./
    Keyword ::= e n d f o r /.$setResult($_ENDFOR);./
    Keyword ::= e n d t r y /.$setResult($_ENDTRY);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= e n d i f /.$setResult($_ENDIF);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= t o /.$setResult($_TO);./
%End
