-- Keyword filter
%options package=lpg.grammars.tinymud
%options template=KeywordTemplateF.gi
%options fp=TinymudKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    DROP
    THROW
    EXAMINE
    GET
    TAKE
    GIVE
    GO
    GOTO
    MOVE
    GRIPE
    HELP
    INVENTORY
    INV
    KILL
    LOOK
    READ
    NEWS
    PAGE
    QUIT
    ROB
    SAY
    SCORE
    WHISPER
    WHO
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= d r o p /.$setResult($_DROP);./
              | t h r o w /.$setResult($_THROW);./
              | e x a m i n e /.$setResult($_EXAMINE);./
              | g e t /.$setResult($_GET);./
              | t a k e /.$setResult($_TAKE);./
              | g i v e /.$setResult($_GIVE);./
              | g o /.$setResult($_GO);./
              | g o t o /.$setResult($_GOTO);./
              | m o v e /.$setResult($_MOVE);./
              | g r i p e /.$setResult($_GRIPE);./
              | h e l p /.$setResult($_HELP);./
              | i n v e n t o r y /.$setResult($_INVENTORY);./
              | i n v /.$setResult($_INV);./
              | k i l l /.$setResult($_KILL);./
              | l o o k /.$setResult($_LOOK);./
              | r e a d /.$setResult($_READ);./
              | n e w s /.$setResult($_NEWS);./
              | p a g e /.$setResult($_PAGE);./
              | q u i t /.$setResult($_QUIT);./
              | r o b /.$setResult($_ROB);./
              | s a y /.$setResult($_SAY);./
              | s c o r e /.$setResult($_SCORE);./
              | w h i s p e r /.$setResult($_WHISPER);./
              | w h o /.$setResult($_WHO);./
%End
