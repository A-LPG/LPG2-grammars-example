-- Keyword filter for asm8080 (case-insensitive opcodes/directives/registers)
%options package=lpg.grammars.asm.asm8080
%options template=KeywordTemplateF.gi
%options fp=Asm8080KWLexer

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
              | d b /.$setResult($_ASSEMBLER_DIRECTIVE);./
              | d w /.$setResult($_ASSEMBLER_DIRECTIVE);./
              | d s /.$setResult($_ASSEMBLER_DIRECTIVE);./
              | i f /.$setResult($_ASSEMBLER_DIRECTIVE);./
              | e n d i f /.$setResult($_ASSEMBLER_DIRECTIVE);./
              | s e t /.$setResult($_ASSEMBLER_DIRECTIVE);./
              | p c /.$setResult($_REGISTER);./
              | s p /.$setResult($_REGISTER);./
              | a /.$setResult($_REGISTER);./
              | b /.$setResult($_REGISTER);./
              | c /.$setResult($_REGISTER);./
              | d /.$setResult($_REGISTER);./
              | e /.$setResult($_REGISTER);./
              | h /.$setResult($_REGISTER);./
              | l /.$setResult($_REGISTER);./
              | m o v /.$setResult($_OPCODE);./
              | m v i /.$setResult($_OPCODE);./
              | l d a /.$setResult($_OPCODE);./
              | s t a /.$setResult($_OPCODE);./
              | l d a x /.$setResult($_OPCODE);./
              | s t a x /.$setResult($_OPCODE);./
              | l h l d /.$setResult($_OPCODE);./
              | s h l d /.$setResult($_OPCODE);./
              | l x i /.$setResult($_OPCODE);./
              | p u s h /.$setResult($_OPCODE);./
              | p o p /.$setResult($_OPCODE);./
              | x t h l /.$setResult($_OPCODE);./
              | s p h l /.$setResult($_OPCODE);./
              | p c h l /.$setResult($_OPCODE);./
              | x c h g /.$setResult($_OPCODE);./
              | a d d /.$setResult($_OPCODE);./
              | s u b /.$setResult($_OPCODE);./
              | i n r /.$setResult($_OPCODE);./
              | d c r /.$setResult($_OPCODE);./
              | c m p /.$setResult($_OPCODE);./
              | a n a /.$setResult($_OPCODE);./
              | o r a /.$setResult($_OPCODE);./
              | x r a /.$setResult($_OPCODE);./
              | a d i /.$setResult($_OPCODE);./
              | s u i /.$setResult($_OPCODE);./
              | c p i /.$setResult($_OPCODE);./
              | a n i /.$setResult($_OPCODE);./
              | o r i /.$setResult($_OPCODE);./
              | x r i /.$setResult($_OPCODE);./
              | d a a /.$setResult($_OPCODE);./
              | a d c /.$setResult($_OPCODE);./
              | a c i /.$setResult($_OPCODE);./
              | s b b /.$setResult($_OPCODE);./
              | s b i /.$setResult($_OPCODE);./
              | d a d /.$setResult($_OPCODE);./
              | i n x /.$setResult($_OPCODE);./
              | d c x /.$setResult($_OPCODE);./
              | j m p /.$setResult($_OPCODE);./
              | c a l l /.$setResult($_OPCODE);./
              | r e t /.$setResult($_OPCODE);./
              | r a l /.$setResult($_OPCODE);./
              | r a r /.$setResult($_OPCODE);./
              | r l c /.$setResult($_OPCODE);./
              | r r c /.$setResult($_OPCODE);./
              | i n /.$setResult($_OPCODE);./
              | o u t /.$setResult($_OPCODE);./
              | c m c /.$setResult($_OPCODE);./
              | s t c /.$setResult($_OPCODE);./
              | c m a /.$setResult($_OPCODE);./
              | h l t /.$setResult($_OPCODE);./
              | n o p /.$setResult($_OPCODE);./
              | d i /.$setResult($_OPCODE);./
              | e i /.$setResult($_OPCODE);./
              | r s t /.$setResult($_OPCODE);./
              | j n z /.$setResult($_OPCODE);./
              | j z /.$setResult($_OPCODE);./
              | j n c /.$setResult($_OPCODE);./
              | j c /.$setResult($_OPCODE);./
              | j p o /.$setResult($_OPCODE);./
              | j p e /.$setResult($_OPCODE);./
              | j p /.$setResult($_OPCODE);./
              | j m /.$setResult($_OPCODE);./
              | c n z /.$setResult($_OPCODE);./
              | c z /.$setResult($_OPCODE);./
              | c n c /.$setResult($_OPCODE);./
              | c c /.$setResult($_OPCODE);./
              | c p o /.$setResult($_OPCODE);./
              | c p e /.$setResult($_OPCODE);./
              | c p /.$setResult($_OPCODE);./
              | c m /.$setResult($_OPCODE);./
              | r n z /.$setResult($_OPCODE);./
              | r z /.$setResult($_OPCODE);./
              | r n c /.$setResult($_OPCODE);./
              | r c /.$setResult($_OPCODE);./
              | r p o /.$setResult($_OPCODE);./
              | r p e /.$setResult($_OPCODE);./
              | r p /.$setResult($_OPCODE);./
              | r m /.$setResult($_OPCODE);./
%End
