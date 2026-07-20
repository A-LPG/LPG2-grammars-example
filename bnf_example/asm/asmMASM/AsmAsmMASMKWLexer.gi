-- Keyword filter for AsmAsmMASM (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.asm.asmMASM
%options template=KeywordTemplateF.gi
%options fp=AsmAsmMASMKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ALIGN
    ASSUME
    BYTE
    DB
    DM
    DS
    DUP
    DW
    DWORD
    END
    ENDIF
    EQU
    EXTERN
    GROUP
    IF
    INCLUDE
    INCLUDELIB
    INVOKE
    LABEL
    NOT
    OFFSET
    OPTION
    ORG
    PAGE
    PARA
    PUBLIC
    PUT
    SBYTE
    SEGMENT
    SEGMENTEND
    WORD
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= i n c l u d e l i b /.$setResult($_INCLUDELIB);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= s e g m e n t /.$setResult($_SEGMENT);./
    Keyword ::= a s s u m e /.$setResult($_ASSUME);./
    Keyword ::= e x t e r n /.$setResult($_EXTERN);./
    Keyword ::= i n v o k e /.$setResult($_INVOKE);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= o p t i o n /.$setResult($_OPTION);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= a l i g n /.$setResult($_ALIGN);./
    Keyword ::= d w o r d /.$setResult($_DWORD);./
    Keyword ::= e n d i f /.$setResult($_ENDIF);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= l a b e l /.$setResult($_LABEL);./
    Keyword ::= s b y t e /.$setResult($_SBYTE);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= e n d s /.$setResult($_SEGMENTEND);./
    Keyword ::= p a g e /.$setResult($_PAGE);./
    Keyword ::= p a r a /.$setResult($_PARA);./
    Keyword ::= w o r d /.$setResult($_WORD);./
    Keyword ::= d u p /.$setResult($_DUP);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e q u /.$setResult($_EQU);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o r g /.$setResult($_ORG);./
    Keyword ::= p u t /.$setResult($_PUT);./
    Keyword ::= d b /.$setResult($_DB);./
    Keyword ::= d m /.$setResult($_DM);./
    Keyword ::= d s /.$setResult($_DS);./
    Keyword ::= d w /.$setResult($_DW);./
    Keyword ::= i f /.$setResult($_IF);./
%End
