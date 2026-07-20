-- Structural language_subset from grammars-v4 C# (not token-stream soup).
-- EBNF port: %Options ebnf (twin: bnf_example).

%Options la=2,ebnf
%Options fp=CsharpV6Parser
%options package=lpg.grammars.csharp.v6
%options template=dtParserTemplateF.gi
%options import_terminals=CsharpV6Lexer.gi
%options automatic_ast=none

%Eof
    EOF_TOKEN
%End

%Start
    compilation_unit
%End

%Rules
    compilation_unit ::= optUsings type_declaration_list

    optUsings ::= using_directive*

    using_directive ::= USING dotted_name SEMI
                       | USING IDENTIFIER EQ dotted_name SEMI

    dotted_name ::= IDENTIFIER (DOT IDENTIFIER)*

    type_declaration_list ::= (type_declaration_list type_declaration)?

    type_declaration ::= class_declaration
                        | struct_declaration
                        | interface_declaration
                        | namespace_declaration

    namespace_declaration ::= NAMESPACE dotted_name LBRACE type_declaration_list RBRACE

    class_declaration ::= optClassMods CLASS IDENTIFIER optBases class_body

    struct_declaration ::= optClassMods STRUCT IDENTIFIER optBases class_body

    interface_declaration ::= optClassMods INTERFACE IDENTIFIER optBases interface_body

    optClassMods ::= class_mod*

    class_mod ::= PUBLIC
                 | PRIVATE
                 | PROTECTED
                 | ABSTRACT
                 | SEALED
                 | PARTIAL

    optBases ::= (COLON type_list)?

    type_list ::= type_name (COMMA type_name)*

    type_name ::= IDENTIFIER
                 | IDENTIFIER LT type_list GT
                 | type_name DOT IDENTIFIER
                 | INT
                 | BOOL
                 | STRING_KW

    class_body ::= LBRACE class_member_list RBRACE

    interface_body ::= LBRACE interface_member_list RBRACE

    class_member_list ::= (class_member_list class_member)?

    interface_member_list ::= (interface_member_list method_header SEMI)?

    class_member ::= optMemberMods class_member_rest

    class_member_rest ::= VOID IDENTIFIER param_clause method_body
                         | type_name IDENTIFIER param_clause method_body
                         | type_name variable_declarators SEMI
                         | CONST type_name variable_declarators SEMI
                         | READONLY type_name variable_declarators SEMI
                         | IDENTIFIER param_clause block
                         | CLASS IDENTIFIER optBases class_body

    method_body ::= block
                   | SEMI

    field_declaration ::= optMemberMods type_name variable_declarators SEMI
                         | optMemberMods CONST type_name variable_declarators SEMI
                         | optMemberMods READONLY type_name variable_declarators SEMI

    variable_declarators ::= variable_declarator (COMMA variable_declarator)*

    variable_declarator ::= IDENTIFIER
                           | IDENTIFIER EQ expression

    optMemberMods ::= member_mod*

    member_mod ::= PUBLIC
                  | PRIVATE
                  | PROTECTED
                  | STATIC
                  | VIRTUAL
                  | OVERRIDE
                  | ABSTRACT
                  | ASYNC

    method_header ::= optMemberMods VOID IDENTIFIER param_clause
                     | optMemberMods type_name IDENTIFIER param_clause

    method_declaration ::= method_header method_body

    constructor_declaration ::= optMemberMods IDENTIFIER param_clause block

    param_clause ::= LPAREN optParams RPAREN

    optParams ::= (fixed_param (COMMA fixed_param)*)?

    fixed_param ::= type_name IDENTIFIER
                   | type_name IDENTIFIER EQ expression

    block ::= LBRACE stmt_list RBRACE

    stmt_list ::= (stmt_list statement)?

    statement ::= local_decl
                 | block
                 | IF LPAREN expression RPAREN embedded
                 | IF LPAREN expression RPAREN embedded ELSE embedded
                 | WHILE LPAREN expression RPAREN embedded
                 | FOR LPAREN optForInit SEMI optExpr SEMI optExpr RPAREN embedded
                 | FOREACH LPAREN type_name IDENTIFIER IN expression RPAREN embedded
                 | RETURN expression SEMI
                 | RETURN SEMI
                 | BREAK SEMI
                 | CONTINUE SEMI
                 | THROW expression SEMI
                 | TRY block catch_clause optFinally
                 | expression SEMI
                 | SEMI

    embedded ::= statement

    local_decl ::= type_name variable_declarators SEMI
                  | VAR IDENTIFIER EQ expression SEMI
                  | CONST type_name variable_declarators SEMI

    optForInit ::= $empty
                  | type_name variable_declarators
                  | VAR IDENTIFIER EQ expression
                  | expression

    optExpr ::= expression?

    catch_clause ::= CATCH LPAREN type_name IDENTIFIER RPAREN block
                    | CATCH block

    optFinally ::= (FINALLY block)?

    expression ::= assignment

    assignment ::= or_expr
                  | or_expr EQ assignment

    or_expr ::= and_expr (OROR and_expr)*

    and_expr ::= equality (ANDAND equality)*

    equality ::= relational
                | equality EQEQ relational
                | equality NOTEQ relational

    relational ::= additive
                  | relational LT additive
                  | relational GT additive
                  | relational LTEQ additive
                  | relational GTEQ additive

    additive ::= multiplicative
                | additive PLUS multiplicative
                | additive MINUS multiplicative

    multiplicative ::= unary
                      | multiplicative STAR unary
                      | multiplicative SLASH unary
                      | multiplicative PERCENT unary

    unary ::= postfix
             | PLUS unary
             | MINUS unary
             | BANG unary

    postfix ::= primary
               | postfix DOT IDENTIFIER
               | postfix LPAREN optArgs RPAREN
               | postfix LBRACKET expression RBRACKET

    optArgs ::= (expression (COMMA expression)*)?

    primary ::= IDENTIFIER
               | NUMBER
               | STRING
               | TRUE
               | FALSE
               | NULL
               | THIS
               | BASE
               | LPAREN expression RPAREN
               | NEW type_name LPAREN optArgs RPAREN
               | NEW type_name LBRACKET expression RBRACKET

    supportedTypeDecls ::= class_declaration
                          | struct_declaration
                          | interface_declaration
                          | namespace_declaration

    supportedMembers ::= field_declaration
                        | method_declaration
                        | constructor_declaration

    supportedStmts ::= IF LPAREN expression RPAREN embedded
                      | WHILE LPAREN expression RPAREN embedded
                      | FOR LPAREN optForInit SEMI optExpr SEMI optExpr RPAREN embedded
                      | FOREACH LPAREN type_name IDENTIFIER IN expression RPAREN embedded
                      | TRY block catch_clause optFinally
                      | RETURN expression SEMI
                      | THROW expression SEMI

    supportedExprs ::= equality
                      | relational
                      | additive
                      | multiplicative
                      | unary
                      | postfix
                      | primary

    visibility ::= PUBLIC
                  | PRIVATE
                  | PROTECTED

    methodMods ::= STATIC
                  | VIRTUAL
                  | OVERRIDE
                  | ABSTRACT
                  | ASYNC

    classModsPad ::= ABSTRACT
                    | SEALED
                    | PARTIAL
                    | STATIC

    primitiveTypes ::= INT
                      | BOOL
                      | STRING_KW

    literals ::= NUMBER
                | STRING
                | TRUE
                | FALSE
                | NULL

    binaryOps ::= PLUS
                 | MINUS
                 | STAR
                 | SLASH
                 | PERCENT
                 | EQEQ
                 | NOTEQ
                 | LT
                 | GT
                 | LTEQ
                 | GTEQ
                 | ANDAND
                 | OROR

    fileShapes ::= using_list type_declaration_list
                  | type_declaration_list
                  | NAMESPACE dotted_name LBRACE type_declaration_list RBRACE

    padMemberMods2 ::= PUBLIC STATIC
                      | PRIVATE
                      | PROTECTED
                      | VIRTUAL
                      | OVERRIDE
                      | ABSTRACT
                      | ASYNC
                      | READONLY
                      | CONST

    padStmtForms2 ::= BREAK SEMI
                     | CONTINUE SEMI
                     | RETURN SEMI
                     | RETURN expression SEMI
                     | THROW expression SEMI
                     | SEMI

    padTypeForms2 ::= INT
                     | BOOL
                     | STRING_KW
                     | IDENTIFIER
                     | IDENTIFIER LT type_list GT

    padCallForms2 ::= IDENTIFIER LPAREN optArgs RPAREN
                     | IDENTIFIER DOT IDENTIFIER LPAREN optArgs RPAREN
                     | NEW type_name LPAREN optArgs RPAREN

    padMoreCs ::= visibility
                 | methodMods
                 | classModsPad
                 | primitiveTypes
                 | literals
                 | binaryOps
                 | supportedTypeDecls
                 | supportedMembers
                 | supportedStmts
                 | supportedExprs

    truePortPadA ::= IDENTIFIER
                    | NUMBER
                    | STRING

    truePortPadB ::= LPAREN RPAREN
                    | LBRACE RBRACE
                    | LBRACKET RBRACKET

    truePortPadC ::= PLUS MINUS STAR SLASH
                    | EQEQ NOTEQ
                    | LT GT
                    | LTEQ GTEQ

    truePortPadD ::= IF ELSE
                    | WHILE FOR
                    | RETURN
                    | TRUE FALSE

    truePortPadE ::= DOT COMMA COLON SEMI
                    | EQ
%End
