-- Tinybasic Parser (LPG)
%Options la=2
%Options fp=TinybasicParser
%options package=lpg.grammars.tinybasic
%options template=dtParserTemplateF.gi
%options import_terminals=TinybasicLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules
    program ::= $empty | program line

    line ::= number statement NL
           | statement NL

    statement ::= PRINT exprlist
                | IF expression relop expression statement
                | IF expression relop expression THEN statement
                | GOTO number
                | INPUT varlist
                | LET vara EQUAL expression
                | vara EQUAL expression
                | GOSUB expression
                | RETURN | CLEAR | LIST | RUN | END

    exprlist ::= exprlist_item
               | exprlist COMMA exprlist_item
    exprlist_item ::= STRING | expression

    varlist ::= vara | varlist COMMA vara

    expression ::= opt_sign term
                 | expression PLUS term
                 | expression MINUS term

    opt_sign ::= $empty | PLUS | MINUS

    term ::= factor
           | term STAR factor
           | term SLASH factor

    factor ::= vara | number

    vara ::= IDENTIFIER | STRING

    number ::= DIGIT | number DIGIT

    relop ::= LESS | GREATER | EQUAL
            | LESS GREATER | LESS EQUAL
            | GREATER LESS | GREATER EQUAL
%End
