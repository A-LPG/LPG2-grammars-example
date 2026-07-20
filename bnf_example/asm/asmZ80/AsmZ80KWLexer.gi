-- Keyword filter for asmZ80 (case-insensitive opcodes/directives/registers)
%options package=lpg.grammars.asm.asmZ80
%options template=KeywordTemplateF.gi
%options fp=AsmZ80KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ASSEMBLER_DIRECTIVE
    REGISTER
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
    Keyword ::= o r g /.$setResult($_ASSEMBLER_DIRECTIVE);./
              | e n d /.$setResult($_ASSEMBLER_DIRECTIVE);./
              | e q u /.$setResult($_ASSEMBLER_DIRECTIVE);./
              | d e f b /.$setResult($_ASSEMBLER_DIRECTIVE);./
              | d e f w /.$setResult($_ASSEMBLER_DIRECTIVE);./
              | d s /.$setResult($_ASSEMBLER_DIRECTIVE);./
              | i f /.$setResult($_ASSEMBLER_DIRECTIVE);./
              | e n d i f /.$setResult($_ASSEMBLER_DIRECTIVE);./
              | s e t /.$setResult($_ASSEMBLER_DIRECTIVE);./
              | a /.$setResult($_REGISTER);./
              | b /.$setResult($_REGISTER);./
              | c /.$setResult($_REGISTER);./
              | d /.$setResult($_REGISTER);./
              | e /.$setResult($_REGISTER);./
              | f /.$setResult($_REGISTER);./
              | h /.$setResult($_REGISTER);./
              | l /.$setResult($_REGISTER);./
              | i /.$setResult($_REGISTER);./
              | r /.$setResult($_REGISTER);./
              | i x h /.$setResult($_REGISTER);./
              | i x l /.$setResult($_REGISTER);./
              | i y h /.$setResult($_REGISTER);./
              | i y l /.$setResult($_REGISTER);./
              | a f /.$setResult($_REGISTER);./
              | b c /.$setResult($_REGISTER);./
              | d e /.$setResult($_REGISTER);./
              | h l /.$setResult($_REGISTER);./
              | p c /.$setResult($_REGISTER);./
              | s p /.$setResult($_REGISTER);./
              | i x /.$setResult($_REGISTER);./
              | i y /.$setResult($_REGISTER);./
              | a d c /.$setResult($_OPCODE);./
              | a d d /.$setResult($_OPCODE);./
              | a n d /.$setResult($_OPCODE);./
              | b i t /.$setResult($_OPCODE);./
              | c a l l /.$setResult($_OPCODE);./
              | c c f /.$setResult($_OPCODE);./
              | c p /.$setResult($_OPCODE);./
              | c p d /.$setResult($_OPCODE);./
              | c p d r /.$setResult($_OPCODE);./
              | c p i /.$setResult($_OPCODE);./
              | c p i r /.$setResult($_OPCODE);./
              | c p l /.$setResult($_OPCODE);./
              | d a a /.$setResult($_OPCODE);./
              | d e c /.$setResult($_OPCODE);./
              | d i /.$setResult($_OPCODE);./
              | d j n z /.$setResult($_OPCODE);./
              | e i /.$setResult($_OPCODE);./
              | e x /.$setResult($_OPCODE);./
              | e x x /.$setResult($_OPCODE);./
              | i m /.$setResult($_OPCODE);./
              | i n /.$setResult($_OPCODE);./
              | i n c /.$setResult($_OPCODE);./
              | i n d /.$setResult($_OPCODE);./
              | i n d r /.$setResult($_OPCODE);./
              | i n i /.$setResult($_OPCODE);./
              | i n i r /.$setResult($_OPCODE);./
              | j p /.$setResult($_OPCODE);./
              | j r /.$setResult($_OPCODE);./
              | l d /.$setResult($_OPCODE);./
              | l d d /.$setResult($_OPCODE);./
              | l d d r /.$setResult($_OPCODE);./
              | l d i /.$setResult($_OPCODE);./
              | l d i r /.$setResult($_OPCODE);./
              | n e g /.$setResult($_OPCODE);./
              | n o p /.$setResult($_OPCODE);./
              | o r /.$setResult($_OPCODE);./
              | o t d r /.$setResult($_OPCODE);./
              | o t i r /.$setResult($_OPCODE);./
              | o u t /.$setResult($_OPCODE);./
              | o u t d /.$setResult($_OPCODE);./
              | o u t i /.$setResult($_OPCODE);./
              | p o p /.$setResult($_OPCODE);./
              | p u s h /.$setResult($_OPCODE);./
              | r e s /.$setResult($_OPCODE);./
              | r e t /.$setResult($_OPCODE);./
              | r e t i /.$setResult($_OPCODE);./
              | r e t n /.$setResult($_OPCODE);./
              | r l /.$setResult($_OPCODE);./
              | r l a /.$setResult($_OPCODE);./
              | r l c /.$setResult($_OPCODE);./
              | r l c a /.$setResult($_OPCODE);./
              | r l d /.$setResult($_OPCODE);./
              | r r /.$setResult($_OPCODE);./
              | r r a /.$setResult($_OPCODE);./
              | r r c /.$setResult($_OPCODE);./
              | r r c a /.$setResult($_OPCODE);./
              | r r d /.$setResult($_OPCODE);./
              | r s t /.$setResult($_OPCODE);./
              | s b c /.$setResult($_OPCODE);./
              | s c f /.$setResult($_OPCODE);./
              | s l a /.$setResult($_OPCODE);./
              | s l l /.$setResult($_OPCODE);./
              | s l 1 /.$setResult($_OPCODE);./
              | s r a /.$setResult($_OPCODE);./
              | s r l /.$setResult($_OPCODE);./
              | s u b /.$setResult($_OPCODE);./
              | x o r /.$setResult($_OPCODE);./
%End
