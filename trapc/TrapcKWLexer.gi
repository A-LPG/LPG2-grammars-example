-- Keyword filter for Trapc (aligned to parser terminal names)
%options package=lpg.grammars.trapc
%options template=KeywordTemplateF.gi
%options fp=TrapcKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    BREAK
    CONTINUE
    IF
    RETURN
    STRUCT
    TRAP
    VOLATILE
    WHILE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= v o l a t i l e /.$setResult($_VOLATILE);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= t r a p /.$setResult($_TRAP);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= i f /.$setResult($_IF);./
%End
