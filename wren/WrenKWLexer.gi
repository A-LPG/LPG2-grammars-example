-- Wren keyword filter
%options package=lpg.grammars.wren
%options template=KeywordTemplateF.gi
%options fp=WrenKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    CLASS
    VAR
    IF
    ELSE
    WHILE
    FOR
    IN
    RETURN
    TRUE
    FALSE
    NULLLITERAL
    IMPORT
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
              | r e t u r n /.$setResult($_RETURN);./
              | w h i l e /.$setResult($_WHILE);./
              | c l a s s /.$setResult($_CLASS);./
              | f a l s e /.$setResult($_FALSE);./
              | t r u e /.$setResult($_TRUE);./
              | n u l l /.$setResult($_NULLLITERAL);./
              | e l s e /.$setResult($_ELSE);./
              | v a r /.$setResult($_VAR);./
              | f o r /.$setResult($_FOR);./
              | i f /.$setResult($_IF);./
              | i n /.$setResult($_IN);./
%End
