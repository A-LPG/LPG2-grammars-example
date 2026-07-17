-- Graphql Parser (LPG)
%Options la=2
%Options fp=GraphqlParser
%options package=lpg.grammars.graphql
%options template=dtParserTemplateF.gi
%options import_terminals=GraphqlLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    document
%End
%Rules
    document ::= definition_list
    definition_list ::= definition | definition_list definition
    definition ::= operationDefinition | fragmentDefinition

    operationDefinition ::= selectionSet
                          | operationType opt_name opt_vars opt_dirs selectionSet

    opt_name ::= $empty | IDENTIFIER
    opt_vars ::= $empty | variableDefinitions
    opt_dirs ::= $empty | directives
    operationType ::= QUERY | MUTATION | SUBSCRIPTION

    selectionSet ::= LBRACE selection_list RBRACE
    selection_list ::= selection | selection_list selection
    selection ::= field | fragmentSpread | inlineFragment

    field ::= IDENTIFIER opt_args opt_dirs opt_sel
            | IDENTIFIER COLON IDENTIFIER opt_args opt_dirs opt_sel
    opt_args ::= $empty | arguments
    opt_sel ::= $empty | selectionSet

    arguments ::= LPAREN argument_list RPAREN
    argument_list ::= argument | argument_list argument
    argument ::= IDENTIFIER COLON value

    fragmentSpread ::= SPREAD IDENTIFIER opt_dirs
    fragmentDefinition ::= FRAGMENT IDENTIFIER ON IDENTIFIER opt_dirs selectionSet
    inlineFragment ::= SPREAD opt_on opt_dirs selectionSet
    opt_on ::= $empty | ON IDENTIFIER

    value ::= DOLLAR IDENTIFIER | INT | FLOAT | STRING | BLOCK_STRING
            | TRUE | FALSE | NULLLITERAL | IDENTIFIER
            | LBRACKET RBRACKET | LBRACKET value_list RBRACKET
            | LBRACE RBRACE | LBRACE objectField_list RBRACE
    value_list ::= value | value_list value
    objectField_list ::= objectField | objectField_list objectField
    objectField ::= IDENTIFIER COLON value

    variableDefinitions ::= LPAREN vardef_list RPAREN
    vardef_list ::= vardef | vardef_list vardef
    vardef ::= DOLLAR IDENTIFIER COLON type_ opt_default
    opt_default ::= $empty | EQUAL value
    type_ ::= IDENTIFIER | IDENTIFIER BANG | LBRACKET type_ RBRACKET | LBRACKET type_ RBRACKET BANG

    directives ::= directive | directives directive
    directive ::= AT IDENTIFIER opt_args
%End
