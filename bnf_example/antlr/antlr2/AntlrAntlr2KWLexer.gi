-- Keyword filter for AntlrAntlr2KWLexer (FoldedCase; from g4)
%options package=lpg.grammars.antlr.antlr2
%options template=KeywordTemplateF.gi
%options fp=AntlrAntlr2KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    CATCH
    CLASS
    EXCEPTION
    EXTENDS
    FINALLY
    FRAGMENT
    GRAMMAR
    HEADER
    LEXCLASS
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
    TREEPARSER
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= t r e e p a r s e r /.$setResult($_TREEPARSER);./
    Keyword ::= e x c e p t i o n /.$setResult($_EXCEPTION);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= f r a g m e n t /.$setResult($_FRAGMENT);./
    Keyword ::= l e x c l a s s /.$setResult($_LEXCLASS);./
    Keyword ::= e x t e n d s /.$setResult($_EXTENDS);./
    Keyword ::= f i n a l l y /.$setResult($_FINALLY);./
    Keyword ::= g r a m m a r /.$setResult($_GRAMMAR);./
    Keyword ::= o p t i o n s /.$setResult($_OPTIONS);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= h e a d e r /.$setResult($_HEADER);./
    Keyword ::= p a r s e r /.$setResult($_PARSER);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= t h r o w s /.$setResult($_THROWS);./
    Keyword ::= t o k e n s /.$setResult($_TOKENS);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= l e x e r /.$setResult($_LEXER);./
    Keyword ::= s c o p e /.$setResult($_SCOPE);./
    Keyword ::= t r e e /.$setResult($_TREE);./
%End
