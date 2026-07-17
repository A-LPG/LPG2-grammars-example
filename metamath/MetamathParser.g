-- Metamath Parser (LPG)
%Options la=2
%Options fp=MetamathParser
%options package=lpg.grammars.metamath
%options template=dtParserTemplateF.gi
%options import_terminals=MetamathLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    database
%End
%Rules
    database ::= stmt_list
    stmt_list ::= %Empty | stmt_list outermostscopestmt

    outermostscopestmt ::= includestmt | constantstmt | stmt
    includestmt ::= INCLUDE_START filename INCLUDE_END
    constantstmt ::= CONSTANT_START constant_list END_STMT
    constant_list ::= constant | constant_list constant

    stmt ::= block | variablestmt | disjointstmt | hypothesisstmt | assertstmt
    block ::= BLOCK_START block_body BLOCK_END
    block_body ::= %Empty | block_body stmt

    variablestmt ::= VARIABLE_START variable_list END_STMT
    variable_list ::= variable | variable_list variable
    disjointstmt ::= DISJOINT_START variable variable variable_list_opt END_STMT
    variable_list_opt ::= %Empty | variable_list_opt variable

    hypothesisstmt ::= floatingstmt | essentialstmt
    floatingstmt ::= LABEL FLOATING_START typecode variable END_STMT
    essentialstmt ::= LABEL ESSENTIAL_START typecode mathsymbol_list END_STMT
    mathsymbol_list ::= %Empty | mathsymbol_list mathsymbol

    assertstmt ::= axiomstmt | provablestmt
    axiomstmt ::= LABEL AXIOM_START typecode mathsymbol_list END_STMT
    provablestmt ::= LABEL PROVABLE_START typecode mathsymbol_list PROOF_START proof END_STMT

    proof ::= uncompressedproof | compressedproof
    uncompressedproof ::= proof_item | uncompressedproof proof_item
    proof_item ::= LABEL | QUESTION
    compressedproof ::= LPAREN label_list RPAREN compressed_blocks
    label_list ::= %Empty | label_list LABEL
    compressed_blocks ::= COMPRESSEDPROOFBLOCK | compressed_blocks COMPRESSEDPROOFBLOCK

    typecode ::= constant
    -- one lexer token (space-separated in source)
    mathsymbol ::= PRINTABLECHARACTER | LABEL | LPAREN | RPAREN
    filename ::= mathsymbol
    constant ::= mathsymbol
    variable ::= mathsymbol
%End
