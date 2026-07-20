-- Structural subset of grammars-v4 sharc (SHARCParser.g4):
-- prog / statement / dual compute / EQU declaration / labeled statements.

%Options la=3
%Options fp=SharcParser
%options package=lpg.grammars.sharc
%options template=dtParserTemplateF.gi
%options import_terminals=SharcLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= statement_list

    statement_list ::= statement SEMI
                     | statement_list statement SEMI

    statement ::= labeled_statement
                | stmt_atom

    labeled_statement ::= IDENTIFIER COLON stmt_atom

    stmt_atom ::= dual_add
                | equ_decl

    dual_add ::= reg EQ reg PLUS reg COMMA reg EQ reg MINUS reg

    equ_decl ::= IDENTIFIER EQU NUMBER

    reg ::= R0 | R1 | R2 | R3 | R4 | R5 | R6 | R7
          | R8 | R9 | R10 | R11 | R12 | R13 | R14 | R15
%End
