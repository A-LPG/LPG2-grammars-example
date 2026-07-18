-- Keyword filter for Turtle (a / true / false / prefix / base)
%options package=lpg.grammars.turtle_doc
%options template=KeywordTemplateF.gi
%options fp=TurtleDocKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    LetterA
    TrueKeyword
    FalseKeyword
    PrefixKeyword
    BaseKeyword
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= p r e f i x /.$setResult($_PrefixKeyword);./
    Keyword ::= f a l s e /.$setResult($_FalseKeyword);./
    Keyword ::= t r u e /.$setResult($_TrueKeyword);./
    Keyword ::= b a s e /.$setResult($_BaseKeyword);./
    Keyword ::= a /.$setResult($_LetterA);./
%End
