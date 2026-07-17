-- Skull Parser (LPG)
-- ANTLR rule "while" renamed to whilecmd (Java reserved word).

%Options la=2
%Options fp=SkullParser
%options package=lpg.grammars.skull
%options template=dtParserTemplateF.gi
%options import_terminals=SkullLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    skull
%End

%Rules
    skull ::= commands_opt

    commands_opt ::= $empty
                   | commands

    commands ::= command
               | commands command

    command ::= whilecmd
              | endwhile
              | incdec
              | print
              | mode_

    whilecmd ::= LBRACE num LBRACE
    endwhile ::= RBRACE RBRACE
    incdec ::= LBRACE num LBRACK num RBRACK RBRACE
    print ::= OR num OR
    mode_ ::= ASC
            | NUM

    num ::= INT
          | PLUS INT
          | MINUS INT
%End
