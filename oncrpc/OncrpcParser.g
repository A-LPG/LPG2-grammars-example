-- ONC RPC Parser (LPG)
%Options la=2
%Options fp=OncrpcParser
%options package=lpg.grammars.oncrpc
%options template=dtParserTemplateF.gi
%options import_terminals=OncrpcLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    oncrpcv2Specification
%End
%Rules
    oncrpcv2Specification ::= spec_list
    spec_list ::= %Empty | spec_list spec_item
    spec_item ::= definition | programDef

    definition ::= typeDef | constantDef
    constantDef ::= CONST IDENTIFIER EQ constant SEMI
    typeDef ::= TYPEDEF declaration SEMI
              | ENUM IDENTIFIER enumBody SEMI
              | STRUCT IDENTIFIER structBody SEMI
              | UNION IDENTIFIER unionBody SEMI

    declaration ::= typeSpecifier IDENTIFIER
                  | typeSpecifier IDENTIFIER LBRACKET value RBRACKET
                  | typeSpecifier IDENTIFIER LT opt_value GT
                  | OPAQUE IDENTIFIER LBRACKET value RBRACKET
                  | OPAQUE IDENTIFIER LT opt_value GT
                  | STRING_KW IDENTIFIER LT opt_value GT
                  | typeSpecifier STAR IDENTIFIER
                  | VOID
    opt_value ::= %Empty | value
    value ::= constant | IDENTIFIER
    constant ::= DECIMAL | HEXADECIMAL | OCTAL

    typeSpecifier ::= opt_unsigned INT
                    | opt_unsigned HYPER
                    | FLOAT | DOUBLE | QUADRUPLE | BOOL
                    | enumTypeSpec | structTypeSpec | unionTypeSpec
                    | IDENTIFIER
    opt_unsigned ::= %Empty | UNSIGNED

    enumTypeSpec ::= ENUM enumBody
    enumBody ::= LBRACE enum_list RBRACE
    enum_list ::= IDENTIFIER EQ value | enum_list COMMA IDENTIFIER EQ value

    structTypeSpec ::= STRUCT structBody
    structBody ::= LBRACE decl_semi_list RBRACE
    decl_semi_list ::= declaration SEMI | decl_semi_list declaration SEMI

    unionTypeSpec ::= UNION unionBody
    unionBody ::= SWITCH LPAREN declaration RPAREN LBRACE case_list opt_default RBRACE
    case_list ::= caseSpec | case_list caseSpec
    caseSpec ::= case_labels declaration SEMI
    case_labels ::= CASE value COLON | case_labels CASE value COLON
    opt_default ::= %Empty | DEFAULT COLON declaration SEMI

    programDef ::= PROGRAM IDENTIFIER LBRACE version_list RBRACE EQ constant SEMI
    version_list ::= versionDef | version_list versionDef
    versionDef ::= VERSION IDENTIFIER LBRACE proc_list RBRACE EQ constant SEMI
    proc_list ::= procedureDef | proc_list procedureDef
    procedureDef ::= procReturn IDENTIFIER LPAREN procFirstArg type_tail RPAREN EQ constant SEMI
    type_tail ::= %Empty | type_tail COMMA typeSpecifier
    procReturn ::= VOID | typeSpecifier
    procFirstArg ::= VOID | typeSpecifier
%End
