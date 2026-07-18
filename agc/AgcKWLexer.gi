-- Keyword filter for AGC subset (opcodes / ERASE)
%options package=lpg.grammars.agc
%options template=KeywordTemplateF.gi
%options fp=AgcKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    NOOP
    ERASE
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= e r a s e /.$setResult($_ERASE);./
              | n o o p /.$setResult($_NOOP);./
%End
