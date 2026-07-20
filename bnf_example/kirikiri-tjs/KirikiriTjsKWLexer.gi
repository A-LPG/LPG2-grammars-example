-- Keyword filter for TJS subset (grammars-v4 kirikiri-tjs)
%options package=lpg.grammars.kirikiri_tjs
%options template=KeywordTemplateF.gi
%options fp=KirikiriTjsKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    VAR
    CONST
    FUNCTION
    CLASS
    PROPERTY
    GETTER
    SETTER
    IF
    ELSE
    WHILE
    RETURN
    BREAK
    NEW
    THIS
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
              | p r o p e r t y /.$setResult($_PROPERTY);./
              | c o n s t /.$setResult($_CONST);./
              | c l a s s /.$setResult($_CLASS);./
              | g e t t e r /.$setResult($_GETTER);./
              | s e t t e r /.$setResult($_SETTER);./
              | r e t u r n /.$setResult($_RETURN);./
              | w h i l e /.$setResult($_WHILE);./
              | b r e a k /.$setResult($_BREAK);./
              | e l s e /.$setResult($_ELSE);./
              | t h i s /.$setResult($_THIS);./
              | v a r /.$setResult($_VAR);./
              | n e w /.$setResult($_NEW);./
              | i f /.$setResult($_IF);./
%End
