-- Keyword filter for Ruleworks smoke subset (OBJECT-CLASS / INSTANCE / OF)
%options package=lpg.grammars.ruleworks
%options template=KeywordTemplateF.gi
%options fp=RuleworksKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    TOK_OBJECT_CLASS
    TOK_INSTANCE
    TOK_OF
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
    Minus ::= '-'
%End

%Headers
    /.
        static { tokenKind['-'] = $sym_type.$prefix$Minus$suffix$; }
    ./
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= o b j e c t Minus c l a s s /.$setResult($_TOK_OBJECT_CLASS);./
              | i n s t a n c e /.$setResult($_TOK_INSTANCE);./
              | o f /.$setResult($_TOK_OF);./
%End
