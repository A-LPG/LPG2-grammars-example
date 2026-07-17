-- Keyword filter for asm6502 (case-insensitive opcodes/directives)
%options package=lpg.grammars.asm.asm6502
%options template=KeywordTemplateF.gi
%options fp=Asm6502KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ASSEMBLER_INSTRUCTION
    OPCODE
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    0    1    2    3    4    5    6    7    8    9
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= o r g /.$setResult($_ASSEMBLER_INSTRUCTION);./
              | e q u /.$setResult($_ASSEMBLER_INSTRUCTION);./
              | a s c /.$setResult($_ASSEMBLER_INSTRUCTION);./
              | d s /.$setResult($_ASSEMBLER_INSTRUCTION);./
              | d f c /.$setResult($_ASSEMBLER_INSTRUCTION);./
              | a d c /.$setResult($_OPCODE);./
              | a n d /.$setResult($_OPCODE);./
              | a s l /.$setResult($_OPCODE);./
              | b c c /.$setResult($_OPCODE);./
              | b c s /.$setResult($_OPCODE);./
              | b e q /.$setResult($_OPCODE);./
              | b i t /.$setResult($_OPCODE);./
              | b m i /.$setResult($_OPCODE);./
              | b n e /.$setResult($_OPCODE);./
              | b p l /.$setResult($_OPCODE);./
              | b r a /.$setResult($_OPCODE);./
              | b r k /.$setResult($_OPCODE);./
              | b v c /.$setResult($_OPCODE);./
              | b v s /.$setResult($_OPCODE);./
              | c l c /.$setResult($_OPCODE);./
              | c l d /.$setResult($_OPCODE);./
              | c l i /.$setResult($_OPCODE);./
              | c l v /.$setResult($_OPCODE);./
              | c m p /.$setResult($_OPCODE);./
              | c p x /.$setResult($_OPCODE);./
              | c p y /.$setResult($_OPCODE);./
              | d e c /.$setResult($_OPCODE);./
              | d e x /.$setResult($_OPCODE);./
              | d e y /.$setResult($_OPCODE);./
              | e o r /.$setResult($_OPCODE);./
              | i n c /.$setResult($_OPCODE);./
              | i n x /.$setResult($_OPCODE);./
              | i n y /.$setResult($_OPCODE);./
              | j m p /.$setResult($_OPCODE);./
              | j s r /.$setResult($_OPCODE);./
              | l d a /.$setResult($_OPCODE);./
              | l d y /.$setResult($_OPCODE);./
              | l d x /.$setResult($_OPCODE);./
              | l s r /.$setResult($_OPCODE);./
              | n o p /.$setResult($_OPCODE);./
              | o r a /.$setResult($_OPCODE);./
              | p h a /.$setResult($_OPCODE);./
              | p h x /.$setResult($_OPCODE);./
              | p h y /.$setResult($_OPCODE);./
              | p h p /.$setResult($_OPCODE);./
              | p l a /.$setResult($_OPCODE);./
              | p l p /.$setResult($_OPCODE);./
              | p l y /.$setResult($_OPCODE);./
              | r o l /.$setResult($_OPCODE);./
              | r o r /.$setResult($_OPCODE);./
              | r t i /.$setResult($_OPCODE);./
              | r t s /.$setResult($_OPCODE);./
              | s b c /.$setResult($_OPCODE);./
              | s e c /.$setResult($_OPCODE);./
              | s e d /.$setResult($_OPCODE);./
              | s e i /.$setResult($_OPCODE);./
              | s t a /.$setResult($_OPCODE);./
              | s t x /.$setResult($_OPCODE);./
              | s t y /.$setResult($_OPCODE);./
              | s t z /.$setResult($_OPCODE);./
              | t a x /.$setResult($_OPCODE);./
              | t a y /.$setResult($_OPCODE);./
              | t s x /.$setResult($_OPCODE);./
              | t x a /.$setResult($_OPCODE);./
              | t x s /.$setResult($_OPCODE);./
              | t y a /.$setResult($_OPCODE);./
%End
