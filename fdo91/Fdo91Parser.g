-- FDO91 Parser (LPG)

%Options la=2
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
    file_ ::= atoms_opt

    atoms_opt ::= $empty
                | atoms

    atoms ::= atom
            | atoms atom

    atom ::= opt_atom_dollar command opt_args

    opt_atom_dollar ::= $empty
                      | ATOM_DOLLAR

    opt_args ::= $empty
               | literal_args
               | arglist

    arglist ::= LT args GT

    args ::= arg
           | args COMMA arg

    arg ::= literal
          | atoms

    literal_args ::= literals

    literals ::= literal
               | literals literal

    -- ID omitted from literal so LALR does not greedily absorb the next
    -- command into literal_args (ANTLR ALL(*) prefers a new atom). Bare ID
    -- arguments still parse via arg ::= atoms.
    literal ::= NUMBER
              | STRING
              | GID

    command ::= ID
%End
