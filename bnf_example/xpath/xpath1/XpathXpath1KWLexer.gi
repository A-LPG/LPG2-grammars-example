-- Keyword filter for XpathXpath1 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.xpath.xpath1
%options template=KeywordTemplateF.gi
%options fp=XpathXpath1KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    AND
    DIV
    MOD
    OR
    PROCESSING_INSTRUCTION
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= p r o c e s s i n g i n s t r u c t i o n /.$setResult($_PROCESSING_INSTRUCTION);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= d i v /.$setResult($_DIV);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= o r /.$setResult($_OR);./

%End
