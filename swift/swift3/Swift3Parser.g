-- Structural subset of grammars-v4 swift/swift3:
-- top_level / declarations (func/struct/class/enum) / statements / expressions

%Options la=3
%Options fp=Swift3Parser
%options package=lpg.grammars.swift.swift3
%options template=dtParserTemplateF.gi
%options import_terminals=Swift3Lexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    top_level
%End

%Rules
    top_level ::= declaration_list

    declaration_list ::= declaration
                       | declaration_list declaration

    declaration ::= function_declaration
                  | struct_declaration
                  | class_declaration
                  | enum_declaration

    function_declaration ::= FUNC IDENTIFIER LPAREN opt_params RPAREN opt_return_type code_block

    opt_params ::= $empty | param_list
    param_list ::= param | param_list COMMA param
    param ::= IDENTIFIER COLON IDENTIFIER

    opt_return_type ::= $empty | ARROW IDENTIFIER

    struct_declaration ::= STRUCT IDENTIFIER LBRACE member_list RBRACE
    class_declaration ::= CLASS IDENTIFIER LBRACE member_list RBRACE
    enum_declaration ::= ENUM IDENTIFIER LBRACE case_list RBRACE

    member_list ::= $empty | member_list member
    member ::= variable_declaration
             | function_declaration

    case_list ::= CASE IDENTIFIER
                | case_list CASE IDENTIFIER

    variable_declaration ::= LET IDENTIFIER EQ expression
                           | VAR IDENTIFIER EQ expression

    code_block ::= LBRACE statement_list RBRACE
                 | LBRACE RBRACE

    statement_list ::= statement
                     | statement_list statement

    statement ::= variable_declaration
                | if_statement
                | while_statement
                | return_statement
                | break_statement
                | expression_statement

    if_statement ::= IF expression code_block
                   | IF expression code_block ELSE code_block

    while_statement ::= WHILE expression code_block

    return_statement ::= RETURN
                       | RETURN expression

    break_statement ::= BREAK

    expression_statement ::= expression

    expression ::= assignment
    assignment ::= equality
                 | equality EQ assignment
    equality ::= relational
    relational ::= additive
                 | additive LT additive
                 | additive GT additive
    additive ::= multiplicative
               | additive PLUS multiplicative
               | additive MINUS multiplicative
    multiplicative ::= primary
                     | multiplicative STAR primary
                     | multiplicative SLASH primary
    primary ::= IDENTIFIER
              | NUMBER
              | STRING
              | LPAREN expression RPAREN
%End
