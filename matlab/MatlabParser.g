-- Matlab Parser (LPG)
%Options la=2
%Options fp=MatlabParser
%options package=lpg.grammars.matlab
%options template=dtParserTemplateF.gi
%options import_terminals=MatlabLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules
    file_ ::= statement_list
    statement_list ::= statement | statement_list statement
    statement ::= assignment
    assignment ::= IDENTIFIER EQ expression
    expression ::= additive
    additive ::= multiplicative | additive PLUS multiplicative | additive MINUS multiplicative
    multiplicative ::= primary | multiplicative STAR primary | multiplicative SLASH primary
    primary ::= IDENTIFIER
              | CONSTANT
              | STRING_LITERAL
              | LPAREN expression RPAREN
              | LBRACKET RBRACKET
              | LBRACKET array_list RBRACKET
              | IDENTIFIER LPAREN arg_list RPAREN
    array_list ::= expression | array_list COMMA expression
    arg_list ::= expression | arg_list COMMA expression
%End
