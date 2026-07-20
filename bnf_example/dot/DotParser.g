-- DOT Parser (LPG)
%Options la=2
%Options fp=DotParser
%options package=lpg.grammars.dot
%options template=dtParserTemplateF.gi
%options import_terminals=DotLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    graph
%End
%Rules
    graph ::= opt_strict graph_type opt_id LBRACE stmt_list RBRACE
    opt_strict ::= $empty | STRICT
    graph_type ::= GRAPH | DIGRAPH
    opt_id ::= $empty | id_

    stmt_list ::= $empty | stmts
    stmts ::= stmt opt_semi | stmts stmt opt_semi
    opt_semi ::= $empty | SEMI

    stmt ::= node_stmt | edge_stmt | attr_stmt | id_ EQ id_ | subgraph

    attr_stmt ::= GRAPH attr_list | NODE attr_list | EDGE attr_list
    attr_list ::= LBRACKET opt_a_list RBRACKET | attr_list LBRACKET opt_a_list RBRACKET
    opt_a_list ::= $empty | a_list
    a_list ::= a_item | a_list a_item
    a_item ::= id_ opt_eq_id opt_sep
    opt_eq_id ::= $empty | EQ id_
    opt_sep ::= $empty | SEMI | COMMA

    edge_stmt ::= edge_endpoint edgeRHS opt_attr_list
    edge_endpoint ::= node_id | subgraph
    edgeRHS ::= edgeop edge_endpoint | edgeRHS edgeop edge_endpoint
    edgeop ::= ARROW | DASH
    opt_attr_list ::= $empty | attr_list

    node_stmt ::= node_id opt_attr_list
    node_id ::= id_ opt_port
    opt_port ::= $empty | port
    port ::= COLON id_ | COLON id_ COLON id_

    subgraph ::= SUBGRAPH opt_id LBRACE stmt_list RBRACE
               | LBRACE stmt_list RBRACE

    id_ ::= IDENTIFIER | STRING | HTML_STRING | NUMBER
%End
