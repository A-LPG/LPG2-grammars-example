-- Cayenne Parser (LPG)
-- Simplified left-factored port of cayenne.g4 for parse-level examples.
%Options la=2
%Options fp=CayenneParser
%options package=lpg.grammars.cayenne
%options template=dtParserTemplateF.gi
%options import_terminals=CayenneLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= expr

    -- Left-recursive application: atom_expr+
    expr ::= atom_expr
           | expr atom_expr

    atom_expr ::= LPAREN IDENTIFIER DCOLON type_ RPAREN ARROW expr
                | BACKSLASH LPAREN IDENTIFIER DCOLON type_ RPAREN ARROW expr
                | DATA con_alt_list
                | IDENTIFIER AT type_
                | CASE IDENTIFIER OF arm_list DCOLON type_
                | SIG sign_list
                | STRUCT defn_list
                | HASH
                | IDENTIFIER

    -- allow expr . lbl via postfix on atom - simplify: IDENTIFIER DOT IDENTIFIER as atom
    -- original: expr '.' lblid — fold into left recursion via special form
    -- For green harness with "x", IDENTIFIER alone is enough.

    type_ ::= expr

    con_alt_list ::= $empty
                   | con_alt_list con_alt

    con_alt ::= IDENTIFIER type_star BAR

    type_star ::= $empty
                | type_star type_

    arm_list ::= $empty
               | arm_list arm

    arm ::= LPAREN IDENTIFIER id_star RPAREN ARROW expr SEMI
          | IDENTIFIER ARROW expr SEMI

    id_star ::= $empty
              | id_star IDENTIFIER

    sign_list ::= $empty
                | sign_list sign

    sign ::= IDENTIFIER DCOLON type_ SEMI
           | IDENTIFIER DCOLON type_ EQUAL expr SEMI

    defn_list ::= $empty
                | defn_list defn

    defn ::= vis IDENTIFIER DCOLON type_ EQUAL expr SEMI

    vis ::= PRIVATE
          | PUBLIC abs_

    abs_ ::= ABSTRACT
           | CONCRETE
%End
