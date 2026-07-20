-- Event keywords only (DGSLexer.g4)
%options package=lpg.grammars.graphstream_dgs
%options template=KeywordTemplateF.gi
%options fp=GraphstreamDgsKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    AE AN CE CG CL CN DE DN ST
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a e /.$setResult($_AE);./
    Keyword ::= a n /.$setResult($_AN);./
    Keyword ::= c e /.$setResult($_CE);./
    Keyword ::= c g /.$setResult($_CG);./
    Keyword ::= c l /.$setResult($_CL);./
    Keyword ::= c n /.$setResult($_CN);./
    Keyword ::= d e /.$setResult($_DE);./
    Keyword ::= d n /.$setResult($_DN);./
    Keyword ::= s t /.$setResult($_ST);./
%End
