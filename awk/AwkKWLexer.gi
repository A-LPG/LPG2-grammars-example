-- Keyword filter for Awk (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.awk
%options template=KeywordTemplateF.gi
%options fp=AwkKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    BEGIN
    BREAK
    CONTINUE
    DELETE
    DO
    ELSE
    END
    EXIT
    FOR
    FUNCTION
    GETLINE
    IF
    IN
    NEXT
    PRINT
    PRINTF
    RETURN
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
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g e t l i n e /.$setResult($_GETLINE);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= p r i n t f /.$setResult($_PRINTF);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= p r i n t /.$setResult($_PRINT);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
%End
