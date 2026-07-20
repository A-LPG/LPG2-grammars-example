-- Chip-8 Parser (LPG)
-- Ported from antlr/grammars-v4 chip8/chip8.g4

%Options la=2
%Options fp=Chip8Parser
%options package=lpg.grammars.chip8
%options template=dtParserTemplateF.gi
%options import_terminals=Chip8Lexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= $empty
            | instructions

    instructions ::= instruction_
                   | instructions instruction_

    instruction_ ::= CLS
                   | RET
                   | SYS ADDR
                   | JP ADDR
                   | CALL ADDR
                   | SE REGISTER COMMA BYTE
                   | SNE REGISTER COMMA BYTE
                   | SE REGISTER COMMA REGISTER
                   | LD REGISTER COMMA BYTE
                   | ADD REGISTER COMMA BYTE
                   | LD REGISTER COMMA REGISTER
                   | OR REGISTER COMMA REGISTER
                   | AND REGISTER COMMA REGISTER
                   | XOR REGISTER COMMA REGISTER
                   | ADD REGISTER COMMA REGISTER
                   | SUB REGISTER COMMA REGISTER
                   | SHR REGISTER
                   | SHR REGISTER LBRACE COMMA REGISTER RBRACE
                   | SUBN REGISTER COMMA REGISTER
                   | SHL REGISTER
                   | SHL REGISTER LBRACE COMMA REGISTER RBRACE
                   | REGISTER COMMA REGISTER
                   | LD I COMMA ADDR
                   | JP REGISTER COMMA ADDR
                   | RND REGISTER COMMA BYTE
                   | DRW REGISTER COMMA REGISTER COMMA DIGIT
                   | SKP REGISTER
                   | SKNP REGISTER
                   | LD REGISTER COMMA DT
                   | LD REGISTER COMMA K
                   | LD DT COMMA REGISTER
                   | LD ST COMMA REGISTER
                   | ADD I COMMA REGISTER
                   | LD F COMMA REGISTER
                   | LD B COMMA REGISTER
                   | LBRACKET I RBRACKET COMMA REGISTER
                   | LD REGISTER COMMA LBRACKET I RBRACKET
%End
