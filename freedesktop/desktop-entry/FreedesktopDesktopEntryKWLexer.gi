-- Keyword filter for FreedesktopDesktopEntry (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.freedesktop.desktop_entry
%options template=KeywordTemplateF.gi
%options fp=FreedesktopDesktopEntryKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    FALSE
    TRUE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
%End
