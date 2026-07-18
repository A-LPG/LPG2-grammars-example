-- Turing subset: put / var / if / loop
%Options la=2
%Options fp=TuringParser
%options package=lpg.grammars.turing
%options template=dtParserTemplateF.gi
%options import_terminals=TuringLexer.gi
%options automatic_ast=none
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules
    program ::= stmt_list
    stmt_list ::= stmt | stmt_list stmt

    stmt ::= put_stmt | var_stmt | if_stmt | loop_stmt | assign_stmt

    put_stmt ::= PUT expression
    var_stmt ::= VAR IDENTIFIER COLON type_
    assign_stmt ::= IDENTIFIER EQ expression

    type_ ::= INT | REAL | STRING_KW | BOOLEAN | IDENTIFIER

    if_stmt ::= IF expression THEN stmt_list END IF
              | IF expression THEN stmt_list ELSE stmt_list END IF

    loop_stmt ::= LOOP stmt_list END LOOP
                | LOOP stmt_list EXIT WHEN expression END LOOP

    expression ::= additive
    additive ::= primary
               | additive PLUS primary
               | additive MINUS primary
    primary ::= NUMBER | STRING | IDENTIFIER | TRUE | FALSE
              | LPAREN expression RPAREN
%End
