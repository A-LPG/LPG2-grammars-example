-- 6502 assembler parser — structural port of grammars-v4 asm/asm6502/asm6502.g4
-- Nonterminals: prog / line / instruction / assemblerinstruction / lbl / argument…

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
    prog ::= $empty
           | lines

    lines ::= line
            | lines line

    line ::= instruction EOL
           | assemblerinstruction EOL
           | lbl EOL
           | EOL

    instruction ::= opcode
                  | opcode argumentlist
                  | label opcode
                  | label opcode argumentlist

    assemblerinstruction ::= assembleropcode
                           | assembleropcode argumentlist
                           | argument assembleropcode
                           | argument assembleropcode argumentlist

    assembleropcode ::= ASSEMBLER_INSTRUCTION

    lbl ::= label COLON

    argumentlist ::= argument
                   | argument COMMA argumentlist

    label ::= name

    argument ::= number
               | name
               | string_
               | STAR
               | HASH number
               | HASH name
               | number PLUS number
               | number MINUS number
               | name PLUS number
               | name MINUS number
               | LPAREN argument RPAREN

    string_ ::= STRING

    name ::= NAME

    number ::= NUMBER

    opcode ::= OPCODE
%End
