-- Sickbay Parser (LPG)
%Options la=2
%Options fp=SickbayParser
%options package=lpg.grammars.esolang.sickbay
%options template=dtParserTemplateF.gi
%options import_terminals=SickbayLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    sickbay
%End
%Rules
    sickbay ::= $empty | sickbay line

    line ::= intExpr stmt opt_semi stmt_tail NL

    opt_semi ::= $empty | SEMI
    stmt_tail ::= $empty | stmt_tail COLON stmt

    stmt ::= REM
           | LET intVar EQUAL intExpr
           | GOTO INTCONST
           | GOSUB INTCONST
           | RETURN
           | END
           | PRINT STRCONST
           | PRINT intExpr
           | PRINT intVar
           | PROLONG INTCONST
           | CUTSHORT
           | DIM RING LPAREN intExpr RPAREN
           | INPUT intVar
           | INPUT CHR_DOLLAR intVar

    intExpr ::= intVar
              | INTCONST
              | RND_PERCENT LPAREN intExpr RPAREN
              | LPAREN intExpr INTOP intExpr RPAREN

    intVar ::= IDENTIFIER
             | IDENTIFIER LPAREN intExpr RPAREN
%End
