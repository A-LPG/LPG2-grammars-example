-- Scotty Parser (LPG)
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
    prog ::= prefix_exp
           | fn_def prog
           | var_assign prog

    var_assign ::= identifier EQUAL prefix_exp
    fn_def ::= FUN identifier identifier EQUAL prefix_exp

    prefix_exp ::= PLUS prefix_exp prefix_exp
                 | MINUS prefix_exp prefix_exp
                 | STAR prefix_exp prefix_exp
                 | SLASH prefix_exp prefix_exp
                 | LPAREN identifier prefix_exp RPAREN
                 | identifier
                 | number

    identifier ::= LETTER
                 | LETTER id_chars
    id_chars ::= LETTER | DIGIT | id_chars LETTER | id_chars DIGIT

    -- Single DIGIT only so "+ 1 1" does not fuse into one number
    number ::= DIGIT
             | MINUS DIGIT
%End
