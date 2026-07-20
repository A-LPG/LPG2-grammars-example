-- Keyword filter for Pegen (aligned to parser terminal names)
%options package=lpg.grammars.pegen
%options template=KeywordTemplateF.gi
%options fp=PegenKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ACTION
    AT
    BANG
    DOLLAR
    MEMO
    STRING
    TILDE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a c t i o n /.$setResult($_ACTION);./
    Keyword ::= d o l l a r /.$setResult($_DOLLAR);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= t i l d e /.$setResult($_TILDE);./
    Keyword ::= b a n g /.$setResult($_BANG);./
    Keyword ::= m e m o /.$setResult($_MEMO);./
    Keyword ::= a t /.$setResult($_AT);./
%End
