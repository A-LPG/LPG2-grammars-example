-- Z notation keyword filter (ASCII markup subset)
%options package=lpg.grammars.z
%options template=KeywordTemplateF.gi
%options fp=ZKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    SECTION
    PARENTS
    AX
    SCH
    TRUE
    FALSE
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= s e c t i o n /.$setResult($_SECTION);./
              | p a r e n t s /.$setResult($_PARENTS);./
              | f a l s e /.$setResult($_FALSE);./
              | t r u e /.$setResult($_TRUE);./
              | a x /.$setResult($_AX);./
              | s c h /.$setResult($_SCH);./
%End
