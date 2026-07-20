-- Keyword filter for SHARC subset (registers + EQU)
%options package=lpg.grammars.sharc
%options template=KeywordTemplateF.gi
%options fp=SharcKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    R0 R1 R2 R3 R4 R5 R6 R7
    R8 R9 R10 R11 R12 R13 R14 R15
    EQU
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    0 1 2 3 4 5 6 7 8 9
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= r 1 5 /.$setResult($_R15);./
              | r 1 4 /.$setResult($_R14);./
              | r 1 3 /.$setResult($_R13);./
              | r 1 2 /.$setResult($_R12);./
              | r 1 1 /.$setResult($_R11);./
              | r 1 0 /.$setResult($_R10);./
              | e q u /.$setResult($_EQU);./
              | r 9 /.$setResult($_R9);./
              | r 8 /.$setResult($_R8);./
              | r 7 /.$setResult($_R7);./
              | r 6 /.$setResult($_R6);./
              | r 5 /.$setResult($_R5);./
              | r 4 /.$setResult($_R4);./
              | r 3 /.$setResult($_R3);./
              | r 2 /.$setResult($_R2);./
              | r 1 /.$setResult($_R1);./
              | r 0 /.$setResult($_R0);./
%End
