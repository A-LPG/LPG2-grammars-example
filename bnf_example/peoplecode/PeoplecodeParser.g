-- PeopleCode Parser (LPG)
%Options la=3
%Options fp=PeoplecodeParser
%options package=lpg.grammars.peoplecode
%options template=dtParserTemplateF.gi
%options import_terminals=PeoplecodeLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules
    program ::= stmtList

    stmtList ::= %Empty | stmtList_ne
    stmtList_ne ::= stmt opt_semis | stmtList_ne stmt opt_semis
    opt_semis ::= %Empty | semis
    semis ::= SEMI | semis SEMI

    stmt ::= appClassImport | extFuncImport | classDeclaration
           | methodImpl | getImpl | setImpl | funcImpl
           | varDeclaration | ifStmt | forStmt | whileStmt | evaluateStmt | tryCatchStmt
           | KW_EXIT | KW_BREAK
           | KW_ERROR expr | KW_WARNING expr
           | KW_RETURN | KW_RETURN expr
           | KW_THROW expr
           | KW_REM expr
           | assignment | expr

    assignment ::= expr EQ expr

    expr ::= or_expr
    or_expr ::= and_expr | or_expr KW_OR and_expr
    and_expr ::= eq_expr | and_expr KW_AND eq_expr
    eq_expr ::= rel_expr | eq_expr EQ rel_expr | eq_expr NE rel_expr
    rel_expr ::= add_expr | rel_expr LT add_expr | rel_expr GT add_expr
               | rel_expr LE add_expr | rel_expr GE add_expr
    add_expr ::= mul_expr | add_expr PLUS mul_expr | add_expr MINUS mul_expr | add_expr PIPE mul_expr
    mul_expr ::= unary | mul_expr STAR unary | mul_expr SLASH unary
    unary ::= postfix | MINUS unary | KW_NOT unary | AT unary
    postfix ::= primary postfix_tail
    postfix_tail ::= %Empty
                   | postfix_tail DOT id_
                   | postfix_tail LBRACKET exprList RBRACKET
                   | postfix_tail LPAREN opt_exprList RPAREN
    primary ::= LPAREN expr RPAREN | literal | id_ | createInvocation

    exprList ::= expr | exprList COMMA expr
    opt_exprList ::= %Empty | exprList

    varDeclaration ::= GENERIC_ID varType varDeclarator var_tail
    var_tail ::= %Empty | var_tail COMMA varDeclarator
    varDeclarator ::= VAR_ID | VAR_ID EQ expr
    varType ::= GENERIC_ID opt_of | appClassPath
    opt_of ::= %Empty | KW_OF varType

    appClassImport ::= KW_IMPORT import_path
    import_path ::= appPkgPath | appClassPath
    appPkgPath ::= path_id COLON STAR
                 | path_id colon_ids COLON STAR
    appClassPath ::= path_id colon_ids
    colon_ids ::= COLON path_id | colon_ids COLON path_id
    -- keywords that appear as package/class path segments in examples
    path_id ::= GENERIC_ID | KW_EXCEPTION | KW_ERROR | KW_CLASS | KW_CREATE

    extFuncImport ::= KW_DECLARE KW_FUNCTION GENERIC_ID KW_PEOPLECODE recDefnPath event
    recDefnPath ::= GENERIC_ID DOT GENERIC_ID
    event ::= KW_FIELDFORMULA | KW_FIELDCHANGE

    classDeclaration ::= KW_CLASS GENERIC_ID class_blocks KW_END_CLASS
    class_blocks ::= %Empty | class_blocks classBlock
    classBlock ::= opt_private class_stmts
    opt_private ::= %Empty | KW_PRIVATE
    class_stmts ::= classBlockStmt opt_semis | class_stmts classBlockStmt opt_semis
    classBlockStmt ::= method | constant | property_ | instance
    method ::= KW_METHOD GENERIC_ID formalParamList opt_return
    constant ::= KW_CONSTANT VAR_ID EQ expr
    property_ ::= KW_PROPERTY varType GENERIC_ID opt_get opt_set opt_ro
    opt_get ::= %Empty | KW_GET
    opt_set ::= %Empty | KW_SET
    opt_ro ::= %Empty | KW_READONLY
    instance ::= KW_INSTANCE varType VAR_ID inst_tail
    inst_tail ::= %Empty | inst_tail COMMA VAR_ID

    methodImpl ::= KW_METHOD GENERIC_ID stmtList KW_END_METHOD
    getImpl ::= KW_GET GENERIC_ID stmtList KW_END_GET
    setImpl ::= KW_SET GENERIC_ID stmtList KW_END_SET
    funcImpl ::= funcSignature stmtList KW_END_FUNCTION
    funcSignature ::= KW_FUNCTION GENERIC_ID opt_formals opt_return opt_semi
    opt_formals ::= %Empty | formalParamList
    opt_return ::= %Empty | KW_RETURNS varType
    opt_semi ::= %Empty | SEMI
    formalParamList ::= LPAREN opt_params RPAREN
    opt_params ::= %Empty | param param_tail
    param_tail ::= %Empty | param_tail COMMA param
    param ::= VAR_ID | VAR_ID KW_AS varType

    ifStmt ::= KW_IF expr KW_THEN opt_semi stmtList opt_else KW_END_IF
    opt_else ::= %Empty | KW_ELSE opt_semi stmtList

    forStmt ::= KW_FOR VAR_ID EQ expr KW_TO expr opt_step stmtList KW_END_FOR
    opt_step ::= %Empty | SEMI | KW_STEP expr

    whileStmt ::= KW_WHILE expr opt_semi stmtList KW_END_WHILE

    evaluateStmt ::= KW_EVALUATE expr when_list opt_when_other KW_END_EVALUATE
    when_list ::= whenBranch | when_list whenBranch
    whenBranch ::= KW_WHEN opt_when_op expr stmtList
    opt_when_op ::= %Empty | EQ | GT
    opt_when_other ::= %Empty | KW_WHEN_OTHER stmtList

    tryCatchStmt ::= KW_TRY stmtList catchSignature stmtList KW_END_TRY
    catchSignature ::= KW_CATCH KW_EXCEPTION VAR_ID

    createInvocation ::= KW_CREATE create_target LPAREN opt_exprList RPAREN
    create_target ::= appClassPath | path_id

    literal ::= DecimalLiteral | IntegerLiteral | StringLiteral | KW_TRUE | KW_FALSE
    id_ ::= SYS_VAR_ID | VAR_ID | GENERIC_ID | KW_EXCEPTION
%End
