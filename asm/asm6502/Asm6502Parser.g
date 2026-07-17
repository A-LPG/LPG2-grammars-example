-- asm6502 Parser (LPG)
-- Ported from antlr/grammars-v4 asm/asm6502 for parse-level examples.

%Options la=2
%Options fp=Asm6502Parser
%options package=lpg.grammars.asm.asm6502
%options template=dtParserTemplateF.gi
%options import_terminals=Asm6502Lexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= line_list

    line_list ::= $empty
                | line_list line

    line ::= opt_content EOL

    opt_content ::= $empty
                  | instruction
                  | assemblerinstruction
                  | lbl

    instruction ::= opt_label OPCODE opt_argumentlist

    assemblerinstruction ::= opt_argument ASSEMBLER_INSTRUCTION opt_argumentlist

    opt_label ::= $empty
                | NAME

    lbl ::= NAME COLON

    opt_argumentlist ::= $empty
                       | argumentlist

    argumentlist ::= argument
                   | argument COMMA argumentlist

    opt_argument ::= $empty
                   | argument

    argument ::= opt_hash atom opt_offset
               | LPAREN argument RPAREN

    opt_hash ::= $empty
               | HASH

    atom ::= NUMBER
           | NAME
           | STRING
           | STAR

    opt_offset ::= $empty
                 | PLUS NUMBER
                 | MINUS NUMBER
%End
