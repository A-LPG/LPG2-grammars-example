-- Keyword filter for AntlrAntlr3 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.antlr.antlr3
%options template=KeywordTemplateF.gi
%options fp=AntlrAntlr3KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    CATCH
    FINALLY
    FRAGMENT
    GRAMMAR
    LEXER
    OPTIONS
    PARSER
    PRIVATE
    PROTECTED
    PUBLIC
    RETURNS
    SCOPE
    THROWS
    TOKENS
    TREE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= f r a g m e n t /.$setResult($_FRAGMENT);./
    Keyword ::= f i n a l l y /.$setResult($_FINALLY);./
    Keyword ::= g r a m m a r /.$setResult($_GRAMMAR);./
    Keyword ::= o p t i o n s /.$setResult($_OPTIONS);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= p a r s e r /.$setResult($_PARSER);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= t h r o w s /.$setResult($_THROWS);./
    Keyword ::= t o k e n s /.$setResult($_TOKENS);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= l e x e r /.$setResult($_LEXER);./
    Keyword ::= s c o p e /.$setResult($_SCOPE);./
    Keyword ::= t r e e /.$setResult($_TREE);./
%End
