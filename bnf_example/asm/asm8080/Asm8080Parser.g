-- asm8080 Parser (LPG)
-- Ported from antlr/grammars-v4 asm/asm8080 for parse-level examples.

%Options la=2
%Options fp=Asm8080Parser
%options package=lpg.grammars.asm.asm8080
%options template=dtParserTemplateF.gi
%options import_terminals=Asm8080Lexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= eol_list opt_lines

    eol_list ::= $empty
               | eol_list EOL

    opt_lines ::= $empty
                | lines

    lines ::= line_eol_list line opt_eols

    line_eol_list ::= $empty
                    | line_eol_list line EOL eol_list

    opt_eols ::= $empty
               | EOL eol_list

    line ::= opt_lbl instruction_or_directive opt_comment
           | opt_lbl COMMENT
           | COMMENT

    opt_lbl ::= $empty
              | lbl

    opt_comment ::= $empty
                  | COMMENT

    instruction_or_directive ::= instruction
                               | directive

    instruction ::= OPCODE opt_expressionlist

    opt_expressionlist ::= $empty
                         | expressionlist

    directive ::= opt_argument ASSEMBLER_DIRECTIVE opt_expressionlist

    opt_argument ::= $empty
                   | argument

    lbl ::= NAME opt_colon
    opt_colon ::= $empty
                | COLON

    expressionlist ::= expression
                     | expressionlist COMMA expression

    expression ::= multiplyingExpression
                 | expression PLUS multiplyingExpression
                 | expression MINUS multiplyingExpression

    multiplyingExpression ::= argument
                            | multiplyingExpression STAR argument
                            | multiplyingExpression SLASH argument

    argument ::= NUMBER
               | REGISTER
               | DOLLAR
               | NAME
               | STRING
               | LPAREN expression RPAREN
%End
