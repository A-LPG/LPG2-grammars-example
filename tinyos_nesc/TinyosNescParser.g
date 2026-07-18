-- TinyOS/nesC subset: module / configuration + implementation
%Options la=2
%Options fp=TinyosNescParser
%options package=lpg.grammars.tinyos_nesc
%options template=dtParserTemplateF.gi
%options import_terminals=TinyosNescLexer.gi
%options automatic_ast=none
%Eof
    EOF_TOKEN
%End
%Start
    compilationUnit
%End
%Rules
    compilationUnit ::= component

    component ::= module_component | configuration_component

    module_component ::= MODULE IDENTIFIER signature IMPLEMENTATION OBRACE impl_body CBRACE
    configuration_component ::= CONFIGURATION IDENTIFIER signature IMPLEMENTATION OBRACE impl_body CBRACE

    signature ::= OBRACE sig_item_list CBRACE
                | OBRACE CBRACE

    sig_item_list ::= sig_item | sig_item_list sig_item
    sig_item ::= USES INTERFACE IDENTIFIER SEMI
               | PROVIDES INTERFACE IDENTIFIER SEMI

    impl_body ::= $empty | impl_item_list
    impl_item_list ::= impl_item | impl_item_list impl_item
    impl_item ::= COMPONENTS component_ref_list SEMI
                | EVENT VOID IDENTIFIER OPAR CPAR OBRACE CBRACE
                | COMMAND VOID IDENTIFIER OPAR CPAR OBRACE CBRACE
                | IDENTIFIER DOT IDENTIFIER ASSIGN IDENTIFIER DOT IDENTIFIER SEMI

    component_ref_list ::= IDENTIFIER | component_ref_list COMMA IDENTIFIER
%End
