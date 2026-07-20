-- Keyword filter for Logo (UCB)
%options package=lpg.grammars.logo.ucb_logo
%options template=KeywordTemplateF.gi
%options fp=LogoKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    TO
    MACRO
    END
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= t o /.$setResult($_TO);./
              | m a c r o /.$setResult($_MACRO);./
              | e n d /.$setResult($_END);./
%End
