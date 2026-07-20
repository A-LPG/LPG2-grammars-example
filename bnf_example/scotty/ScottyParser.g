-- Scotty Parser (LPG)
-- Port of scotty.g4 with lexer-side IDENTIFIER/NUMBER (LALR-safe).
%Options la=2
%Options fp=ScottyParser
%options package=lpg.grammars.scotty
%options template=dtParserTemplateF.gi
%options import_terminals=ScottyLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    prog
%End
%Rules
    -- program_lines: ends with a prefix_exp; fun/assign prefix a continuation
    prog ::= prefix_exp
           | fn_def prog
           | var_assign prog

    var_assign ::= IDENTIFIER EQUAL prefix_exp
    fn_def ::= FUN IDENTIFIER IDENTIFIER EQUAL prefix_exp

    prefix_exp ::= PLUS prefix_exp prefix_exp
                 | MINUS prefix_exp prefix_exp
                 | STAR prefix_exp prefix_exp
                 | SLASH prefix_exp prefix_exp
                 | LPAREN IDENTIFIER prefix_exp RPAREN
                 | IDENTIFIER
                 | number

    number ::= NUMBER
             | MINUS NUMBER
%End
