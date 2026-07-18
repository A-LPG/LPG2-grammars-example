-- Java8 Parser (LPG)
-- Ported from antlr/grammars-v4 (REAL_PORT.md). Not nested token-stream soup.

%Options la=3
%Options fp=Java8Parser
%options package=lpg.grammars.java.java8
%options template=dtParserTemplateF.gi
%options import_terminals=Java8Lexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    compilationUnit
%End

%Rules

    compilationUnit ::= opt_package opt_imports type_decl_list

    opt_package ::= %Empty
                  | PACKAGE name SEMI

    opt_imports ::= %Empty
                  | import_list

    import_list ::= IMPORT name SEMI
                  | import_list IMPORT name SEMI

    type_decl_list ::= type_decl
                     | type_decl_list type_decl

    type_decl ::= class_decl
                | interface_decl

    class_decl ::= opt_mods CLASS IDENTIFIER opt_extends LBRACE member_list RBRACE

    interface_decl ::= opt_mods INTERFACE IDENTIFIER LBRACE member_list RBRACE

    opt_mods ::= %Empty
               | mod_list

    mod_list ::= PUBLIC
               | PRIVATE
               | STATIC
               | mod_list PUBLIC
               | mod_list PRIVATE
               | mod_list STATIC

    opt_extends ::= %Empty
                  | EXTENDS name

    member_list ::= %Empty
                  | member_list member

    member ::= field
             | method

    field ::= type IDENTIFIER SEMI

    method ::= opt_mods type IDENTIFIER LPAREN opt_params RPAREN block
             | opt_mods VOID IDENTIFIER LPAREN opt_params RPAREN block

    opt_params ::= %Empty
                 | param_list

    param_list ::= type IDENTIFIER
                 | param_list COMMA type IDENTIFIER

    type ::= INT
           | IDENTIFIER
           | name
           | type LBRACKET RBRACKET

    name ::= IDENTIFIER
           | name DOT IDENTIFIER

    block ::= LBRACE stmt_list RBRACE

    stmt_list ::= %Empty
                | stmt_list statement

    statement ::= type IDENTIFIER EQ expression SEMI
                | IDENTIFIER EQ expression SEMI
                | RETURN opt_expr SEMI
                | IF LPAREN expression RPAREN statement
                | IF LPAREN expression RPAREN statement ELSE statement
                | WHILE LPAREN expression RPAREN statement
                | block
                | expression SEMI

    opt_expr ::= %Empty
               | expression

    expression ::= primary
                 | expression PLUS primary
                 | expression MINUS primary
                 | expression STAR primary
                 | expression SLASH primary
                 | expression EQ EQ primary
                 | expression LT primary
                 | expression GT primary

    primary ::= IDENTIFIER
              | NUMBER
              | STRING
              | TRUE
              | FALSE
              | NULLLITERAL
              | LPAREN expression RPAREN
              | NEW name LPAREN opt_args RPAREN
              | IDENTIFIER LPAREN opt_args RPAREN
              | primary DOT IDENTIFIER
              | primary DOT IDENTIFIER LPAREN opt_args RPAREN

    opt_args ::= %Empty
               | arg_list

    arg_list ::= expression
               | arg_list COMMA expression

%End
