-- Structural language_subset from grammars-v4 C# (not token-stream soup).

%Options la=2
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

    compilation_unit ::= optUsings namespace_member_list
    optUsings ::= $empty
           | using_list
    using_list ::= using_directive
           | using_list using_directive
    using_directive ::= USING dotted_name SEMI
           | USING IDENTIFIER EQ dotted_name SEMI
    dotted_name ::= IDENTIFIER
           | dotted_name DOT IDENTIFIER

    namespace_member_list ::= $empty
           | namespace_member_list namespace_member
    namespace_member ::= namespace_declaration
           | type_declaration
    namespace_declaration ::= NAMESPACE dotted_name namespace_body
    namespace_body ::= LBRACE namespace_member_list RBRACE

    type_declaration ::= class_declaration
           | struct_declaration
           | interface_declaration
           | enum_declaration
    class_declaration ::= optAttrs optClassMods CLASS IDENTIFIER optTypeParams optBases class_body
    struct_declaration ::= optAttrs optClassMods STRUCT IDENTIFIER optTypeParams optBases class_body
    interface_declaration ::= optAttrs optClassMods INTERFACE IDENTIFIER optTypeParams optBases interface_body
    enum_declaration ::= optAttrs optClassMods ENUM IDENTIFIER optEnumBase enum_body
    optEnumBase ::= $empty
           | COLON type_name
    optAttrs ::= $empty
    optClassMods ::= $empty
           | class_mod_list
    class_mod_list ::= class_mod
           | class_mod_list class_mod
    class_mod ::= PUBLIC
           | PRIVATE
           | PROTECTED
           | INTERNAL
           | STATIC
           | ABSTRACT
           | SEALED
           | PARTIAL
           | NEW
           | UNSAFE
    optTypeParams ::= $empty
           | LT type_param_list GT
    type_param_list ::= IDENTIFIER
           | type_param_list COMMA IDENTIFIER
    optBases ::= $empty
           | COLON type_list
    type_list ::= type_name
           | type_list COMMA type_name
    type_name ::= IDENTIFIER
           | IDENTIFIER LT type_list GT
           | type_name DOT IDENTIFIER
           | type_name QUEST

    class_body ::= LBRACE class_member_list RBRACE
    interface_body ::= LBRACE interface_member_list RBRACE
    enum_body ::= LBRACE optEnumList RBRACE
    optEnumList ::= $empty
           | enum_list
    enum_list ::= IDENTIFIER
           | enum_list COMMA IDENTIFIER
    class_member_list ::= $empty
           | class_member_list class_member
    interface_member_list ::= $empty
           | interface_member_list interface_member
    interface_member ::= method_header SEMI
           | property_declaration
    class_member ::= field_declaration
           | method_declaration
           | property_declaration
           | constructor_declaration
           | class_declaration
           | enum_declaration

    field_declaration ::= optMemberMods type_name variable_declarators SEMI
           | optMemberMods CONST type_name variable_declarators SEMI
           | optMemberMods READONLY type_name variable_declarators SEMI
    variable_declarators ::= variable_declarator
           | variable_declarators COMMA variable_declarator
    variable_declarator ::= IDENTIFIER
           | IDENTIFIER EQ expression
    optMemberMods ::= $empty
           | member_mod_list
    member_mod_list ::= member_mod
           | member_mod_list member_mod
    member_mod ::= PUBLIC
           | PRIVATE
           | PROTECTED
           | INTERNAL
           | STATIC
           | VIRTUAL
           | OVERRIDE
           | ABSTRACT
           | ASYNC
           | NEW
           | EXTERN
           | UNSAFE

    method_header ::= optMemberMods optTypeParams type_name IDENTIFIER param_clause
           | optMemberMods optTypeParams VOID IDENTIFIER param_clause
    method_declaration ::= method_header block
           | method_header EQ GT expression SEMI
           | method_header SEMI
    constructor_declaration ::= optMemberMods IDENTIFIER param_clause block
    param_clause ::= LPAREN optParams RPAREN
    optParams ::= $empty
           | params
    params ::= fixed_param
           | params COMMA fixed_param
    fixed_param ::= type_name IDENTIFIER
           | type_name IDENTIFIER EQ expression
           | PARAMS type_name IDENTIFIER
           | THIS type_name IDENTIFIER

    property_declaration ::= optMemberMods type_name IDENTIFIER LBRACE accessor_list RBRACE
           | optMemberMods type_name IDENTIFIER LBRACE accessor_list RBRACE EQ expression SEMI
    accessor_list ::= get_accessor
           | set_accessor
           | get_accessor set_accessor
           | set_accessor get_accessor
    get_accessor ::= optMemberMods GET SEMI
           | optMemberMods GET block
    set_accessor ::= optMemberMods SET SEMI
           | optMemberMods SET block

    block ::= LBRACE stmt_list RBRACE
    stmt_list ::= $empty
           | stmt_list statement
    statement ::= local_decl
           | block
           | IF LPAREN expression RPAREN embedded
           | IF LPAREN expression RPAREN embedded ELSE embedded
           | WHILE LPAREN expression RPAREN embedded
           | DO embedded WHILE LPAREN expression RPAREN SEMI
           | FOR LPAREN optForInit SEMI optExpr SEMI optExpr RPAREN embedded
           | FOREACH LPAREN type_name IDENTIFIER IN expression RPAREN embedded
           | RETURN expression SEMI
           | RETURN SEMI
           | BREAK SEMI
           | CONTINUE SEMI
           | THROW expression SEMI
           | TRY block catch_clauses optFinally
           | SWITCH LPAREN expression RPAREN switch_block
           | expression SEMI
           | SEMI
    embedded ::= statement
    local_decl ::= type_name variable_declarators SEMI
           | VAR IDENTIFIER EQ expression SEMI
           | CONST type_name variable_declarators SEMI
    optForInit ::= $empty
           | local_decl_no_semi
           | expression
    local_decl_no_semi ::= type_name variable_declarators
           | VAR IDENTIFIER EQ expression
    optExpr ::= $empty
           | expression
    catch_clauses ::= $empty
           | catch_clauses catch_clause
    catch_clause ::= CATCH LPAREN type_name IDENTIFIER RPAREN block
           | CATCH block
    optFinally ::= $empty
           | FINALLY block
    switch_block ::= LBRACE switch_section_list RBRACE
    switch_section_list ::= $empty
           | switch_section_list switch_section
    switch_section ::= switch_label_list stmt_list
    switch_label_list ::= switch_label
           | switch_label_list switch_label
    switch_label ::= CASE expression COLON
           | DEFAULT COLON

    expression ::= assignment
    assignment ::= conditional
           | conditional EQ assignment
           | conditional PLUSEQ assignment
           | conditional MINUSEQ assignment
    conditional ::= null_coalesce
           | null_coalesce QUEST expression COLON expression
    null_coalesce ::= or_expr
           | or_expr QQ null_coalesce
    or_expr ::= and_expr
           | or_expr OROR and_expr
    and_expr ::= equality
           | and_expr ANDAND equality
    equality ::= relational
           | equality EQEQ relational
           | equality NOTEQ relational
    relational ::= additive
           | relational LT additive
           | relational GT additive
           | relational LTEQ additive
           | relational GTEQ additive
           | relational IS type_name
           | relational AS type_name
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
           | NOT unary
           | PLUSPLUS unary
           | MINUSMINUS unary
           | LPAREN type_name RPAREN unary
    postfix ::= primary
           | postfix DOT IDENTIFIER
           | postfix LPAREN optArgs RPAREN
           | postfix LBRACK expression RBRACK
           | postfix PLUSPLUS
           | postfix MINUSMINUS
           | postfix QUEST DOT IDENTIFIER
    optArgs ::= $empty
           | args
    args ::= expression
           | args COMMA expression
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
           | NEW type_name LBRACK expression RBRACK
           | typeof_expr
    typeof_expr ::= TYPEOF LPAREN type_name RPAREN

%End
