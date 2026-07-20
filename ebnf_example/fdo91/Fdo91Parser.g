-- FDO91 Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example; g4: fdo91/fdo91.g4).

%Options la=2,ebnf
%Options fp=Fdo91Parser
%options package=lpg.grammars.fdo91
%options template=dtParserTemplateF.gi
%options import_terminals=Fdo91Lexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    -- file_: atom* EOF
    file_ ::= atom*

    -- atom: 'atom$'? command (literal_args | arglist)?
    atom ::= ATOM_DOLLAR? command (literal+ | arglist)?

    arglist ::= LT arg (COMMA arg)* GT

    arg ::= literal
          | atom+

    -- ID omitted from literal so LALR does not greedily absorb the next
    -- command into literal+ (ANTLR ALL(*) prefers a new atom). Bare ID
    -- arguments still parse via arg ::= atom+.
    literal ::= NUMBER
              | STRING
              | GID

    command ::= ID
%End
