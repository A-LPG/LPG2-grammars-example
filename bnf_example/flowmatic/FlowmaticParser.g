-- FlowmaticParser (LPG)
%Options la=2
%Options fp=FlowmaticParser
%options package=lpg.grammars.flowmatic
%options template=dtParserTemplateF.gi
%options import_terminals=FlowmaticLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    flowmatic
%End
%Rules

    flowmatic ::= lines END_MARK
    lines ::= $empty | lines line
    line ::= label statements DOT
    label ::= LPAREN NUM RPAREN
    statements ::= statement_part | statements SEMI statement_part
    statement_part ::= $empty | stmt

    stmt ::= HSP ID
           | OUTPUT file_pairs
           | INPUT file_pairs
           | JUMP TO operation
           | READ_ITEM ID
           | WRITE_ITEM ID
           | TRANSFER ID TO ID
           | IF op GOTO operation
           | OTHERWISE GOTO operation
           | REWIND ID
           | STOP
           | COMPARE field WITH field
           | MOVE field TO field
           | SET operation TO GOTO operation
           | TEST field AGAINST num
           | CLOSE_OUT FILES file_list

    file_pairs ::= file_pair | file_pairs file_pair
    file_pair ::= ID ID
    file_list ::= ID | file_list SEMI ID
    field ::= ID LPAREN ID RPAREN
    operation ::= OPERATION NUM
    num ::= NUM | ZERO
    op ::= EQUAL | GREATER | EOD

%End
