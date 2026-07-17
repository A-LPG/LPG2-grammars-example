-- Wavefront Parser (LPG)

%Options la=2
%Options fp=WavefrontParser
%options package=lpg.grammars.wavefront
%options template=dtParserTemplateF.gi
%options import_terminals=WavefrontLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    start_
%End
%Rules
    start_ ::= $empty
              | items
    items ::= item
            | items item
    item ::= IDENTIFIER
           | NUMBER
           | STRING
           | V
           | VN
           | VT
           | VP
           | CSTYPE
           | DEG
           | BMAT
           | STEP
           | P
           | L
           | F
           | CURV
           | CURV2
           | SURF
           | PARM
           | TRIM
           | HOLE
           | SCRV
           | SP
           | END
           | CON
           | G
           | S
           | MG
           | O
           | BEVEL
           | C_INTERP
           | D_INTERP
           | LOD
           | USEMTL
           | USEMAP
           | MTLLIB
           | MAPLIB
           | SHADOW_OBJ
           | TRACE_OBJ
           | CTECH
           | STECH
           | BMATRIX
           | BEZIER
           | BSPLINE
           | CARDINAL
           | TAYLOR
           | MINUS
           | PLUS
           | SLASH
           | DOT
           | LPAREN
           | RPAREN
%End
