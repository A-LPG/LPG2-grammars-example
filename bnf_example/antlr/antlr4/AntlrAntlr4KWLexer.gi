-- Keyword filter for AntlrAntlr4 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.antlr.antlr4
%options template=KeywordTemplateF.gi
%options fp=AntlrAntlr4KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    CATCH
    FINALLY
    FRAGMENT
    GRAMMAR
    IMPORT
    LEXER
    LOCALS
    MODE
    PARSER
    PRIVATE
    PROTECTED
    PUBLIC
    RETURNS
    THROWS
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= f r a g m e n t /.$setResult($_FRAGMENT);./
    Keyword ::= f i n a l l y /.$setResult($_FINALLY);./
    Keyword ::= g r a m m a r /.$setResult($_GRAMMAR);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= l o c a l s /.$setResult($_LOCALS);./
    Keyword ::= p a r s e r /.$setResult($_PARSER);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= t h r o w s /.$setResult($_THROWS);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= l e x e r /.$setResult($_LEXER);./
    Keyword ::= m o d e /.$setResult($_MODE);./
%End
