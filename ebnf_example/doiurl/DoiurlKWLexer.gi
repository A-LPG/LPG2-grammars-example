-- Keyword filter for Doiurl (aligned to parser terminal names)
%options package=lpg.grammars.doiurl
%options template=KeywordTemplateF.gi
%options fp=DoiurlKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    DOI
    HASH
    PCHAR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= p c h a r /.$setResult($_PCHAR);./
    Keyword ::= h a s h /.$setResult($_HASH);./
    Keyword ::= d o i /.$setResult($_DOI);./
%End
