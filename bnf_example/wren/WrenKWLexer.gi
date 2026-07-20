-- Wren keyword filter
%options package=lpg.grammars.wren
%options template=KeywordTemplateF.gi
%options fp=WrenKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    CLASS_T
    VAR_T
    IF_T
    ELSE_T
    WHILE_T
    FOR_T
    IN
    RETURN_T
    TRUE_T
    FALSE_T
    NULL_T
    IMPORT_T
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= i m p o r t /.$setResult($_IMPORT_T);./
              | r e t u r n /.$setResult($_RETURN_T);./
              | w h i l e /.$setResult($_WHILE_T);./
              | c l a s s /.$setResult($_CLASS_T);./
              | f a l s e /.$setResult($_FALSE_T);./
              | t r u e /.$setResult($_TRUE_T);./
              | n u l l /.$setResult($_NULL_T);./
              | e l s e /.$setResult($_ELSE_T);./
              | v a r /.$setResult($_VAR_T);./
              | f o r /.$setResult($_FOR_T);./
              | i f /.$setResult($_IF_T);./
              | i n /.$setResult($_IN);./
%End
