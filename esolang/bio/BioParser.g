-- Bio Parser (LPG)
-- Ported from antlr/grammars-v4 esolang/bio/bio.g4 for parse-level examples.

%Options la=2
%Options fp=BioParser
%options package=lpg.grammars.esolang.bio
%options template=dtParserTemplateF.gi
%options import_terminals=BioLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    -- program : instruction* EOF
    program ::= $empty
              | instructions

    instructions ::= instruction
                   | instructions instruction

    instruction ::= incinstruction
                  | decinstruction
                  | whileinstruction
                  | outputinstruction

    -- '0o' block ';'
    incinstruction ::= ZERO_O block SEMI

    -- '1o' block ';'
    decinstruction ::= ONE_O block SEMI

    -- '0i' block '{' instruction* '}' ';'
    whileinstruction ::= ZERO_I block LBRACE RBRACE SEMI
                       | ZERO_I block LBRACE instructions RBRACE SEMI

    -- '1i' block ';'
    outputinstruction ::= ONE_I block SEMI

    block ::= BLOCK_X
            | BLOCK_Y
            | BLOCK_Z
%End

