-- LisaParser (LPG)
%Options la=2
%Options fp=LisaParser
%options package=lpg.grammars.lisa
%options template=dtParserTemplateF.gi
%options import_terminals=LisaLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules

    program ::= declaration_block program_block
    declaration_block ::= DECLARE LBRACE declaration_statements RBRACE
    declaration_statements ::= declaration_statement | declaration_statements declaration_statement
    declaration_statement ::= type_ IDENTIFIER SEMI
    type_ ::= INT | DFA | NFA | REGEX | BOOL | STRING_T

    program_block ::= PROGRAM LBRACE statements RBRACE
    statements ::= statement | statements statement
    statement ::= expression_statement
                | if_statement
                | while_statement
                | generating_statement
                | BREAK SEMI
                | CONTINUE SEMI

    generating_statement ::= GENERATE LPAREN generator_type COMMA INT COMMA INT RPAREN statement
    generator_type ::= RANDOM | ENUMERATE

    expression_statement ::= expression SEMI
    if_statement ::= IF LPAREN expression RPAREN statement
    while_statement ::= WHILE LPAREN expression RPAREN statement

    expression ::= variable exprop expression
                 | simple_expression
    exprop ::= ASSIGN | MINUS_PLUS | STAR_EQ | SLASH_EQ | PLUS_EQ

    simple_expression ::= or_expression
                        | simple_expression OROR or_expression
    or_expression ::= unary_relationexpression
                    | or_expression ANDAND unary_relationexpression
    unary_relationexpression ::= opt_not relation_expression
    opt_not ::= $empty | NOT
    relation_expression ::= add_expression
                          | relation_expression relop add_expression
    relop ::= LE | GE | EQEQ | NE | GT | LT
    add_expression ::= term
                     | add_expression addop term
    addop ::= PLUS | MINUS
    term ::= factor | term multop factor
    multop ::= STAR | SLASH | PERCENT
    factor ::= LPAREN simple_expression RPAREN | constant
    constant ::= integer | TRUE | FALSE | NEXT | HASNEXT | variable | STRINGLITERAL | function_ | type_
    integer ::= opt_sign INTEGER
    opt_sign ::= $empty | PLUS | MINUS
    function_ ::= IDENTIFIER LPAREN parameter_list RPAREN
    parameter_list ::= simple_expression | parameter_list COMMA simple_expression
    variable ::= IDENTIFIER

%End
