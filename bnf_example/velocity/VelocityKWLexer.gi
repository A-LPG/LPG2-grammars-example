-- Keyword filter for Velocity (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.velocity
%options template=KeywordTemplateF.gi
%options fp=VelocityKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    CODE_K_AND
    CODE_K_EQ
    CODE_K_FALSE
    CODE_K_GE
    CODE_K_GT
    CODE_K_IN
    CODE_K_LE
    CODE_K_LT
    CODE_K_NE
    CODE_K_NOT
    CODE_K_NULL
    CODE_K_OR
    CODE_K_TRUE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= f a l s e /.$setResult($_CODE_K_FALSE);./
    Keyword ::= n u l l /.$setResult($_CODE_K_NULL);./
    Keyword ::= t r u e /.$setResult($_CODE_K_TRUE);./
    Keyword ::= a n d /.$setResult($_CODE_K_AND);./
    Keyword ::= n o t /.$setResult($_CODE_K_NOT);./
    Keyword ::= e q /.$setResult($_CODE_K_EQ);./
    Keyword ::= g e /.$setResult($_CODE_K_GE);./
    Keyword ::= g t /.$setResult($_CODE_K_GT);./
    Keyword ::= i n /.$setResult($_CODE_K_IN);./
    Keyword ::= l e /.$setResult($_CODE_K_LE);./
    Keyword ::= l t /.$setResult($_CODE_K_LT);./
    Keyword ::= n e /.$setResult($_CODE_K_NE);./
    Keyword ::= o r /.$setResult($_CODE_K_OR);./
%End
