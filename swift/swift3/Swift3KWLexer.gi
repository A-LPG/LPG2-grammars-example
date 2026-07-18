-- Keyword filter for Swift3 subset
%options package=lpg.grammars.swift.swift3
%options template=KeywordTemplateF.gi
%options fp=Swift3KWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    FUNC
    LET
    VAR
    IF
    ELSE
    WHILE
    RETURN
    BREAK
    STRUCT
    CLASS
    ENUM
    CASE
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
              | r e t u r n /.$setResult($_RETURN);./
              | w h i l e /.$setResult($_WHILE);./
              | b r e a k /.$setResult($_BREAK);./
              | c l a s s /.$setResult($_CLASS);./
              | e n u m /.$setResult($_ENUM);./
              | f u n c /.$setResult($_FUNC);./
              | e l s e /.$setResult($_ELSE);./
              | c a s e /.$setResult($_CASE);./
              | l e t /.$setResult($_LET);./
              | v a r /.$setResult($_VAR);./
              | i f /.$setResult($_IF);./
%End
