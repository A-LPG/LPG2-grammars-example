-- Redcode Parser (LPG)
%Options la=2
%Options fp=RedcodeParser
%options package=lpg.grammars.redcode
%options template=dtParserTemplateF.gi
%options import_terminals=RedcodeLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules
    file_ ::= lines
    lines ::= line | lines line
    line ::= comment EOL
           | instruction EOL
    instruction ::= opcode opt_mod opt_mmode number opt_second opt_comment
    opt_mod ::= $empty | DOT modifier
    opt_mmode ::= $empty | mmode
    opt_second ::= $empty | COMMA opt_mmode number
    opt_comment ::= $empty | comment
    opcode ::= DAT | MOV | ADD | SUB | MUL | DIV | MOD | JMP | JMZ | JMN | DJN | CMP | SLT | SPL | ORG | DJZ
    modifier ::= A | B | AB | BA | F | X | I
    mmode ::= HASH | DOLLAR | AT | LT | GT
    number ::= NUMBER | PLUS NUMBER | MINUS NUMBER
    comment ::= COMMENT
%End
