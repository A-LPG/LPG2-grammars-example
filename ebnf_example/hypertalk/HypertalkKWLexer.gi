-- Keyword filter for Hypertalk (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.hypertalk
%options template=KeywordTemplateF.gi
%options fp=HypertalkKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABBR
    ABBREV
    ABBREVIATED
    ABS
    ADD
    AFTER
    AND
    ANNUITY
    ANSWER
    ANY
    ASCENDING
    ASK
    AT
    ATAN
    AVERAGE
    BACK
    BACKGROUND
    BACKGROUNDS
    BARN
    BEEP
    BEFORE
    BG
    BGS
    BKGND
    BKGNDS
    BLACK
    BLINDS
    BOOL
    BOOLEAN
    BOTTOM
    BOX
    BTN
    BTNS
    BUTTON
    BUTTONS
    BY
    CAN
    CENTER
    CHAR
    CHARACTER
    CHARACTERS
    CHARS
    CHARTONUM
    CHECKERBOARD
    CHOOSE
    CLICK
    CLOSE
    CMDKEY
    COLON
    COMMA
    COMMANDKEY
    COMPOUND
    CONTAINS
    CONVERT
    COS
    CREATE
    DATE
    DATEITEMS
    DATETIME
    DELETE
    DESCENDING
    DIAL
    DIALOG
    DISABLE
    DISKSPACE
    DISSOLVE
    DIV
    DIVIDE
    DO
    DOMENU
    DOOR
    DRAG
    EDIT
    EFFECT
    EIGHT
    EIGHTH
    ELSE
    EMPTY
    ENABLE
    END
    ENGLISH
    EOF
    EXIT
    EXP
    EXP1
    EXP2
    EXPORT
    FAST
    FEMALE
    FIELD
    FIELDS
    FIFTH
    FILE
    FIND
    FIRST
    FIVE
    FLD
    FLDS
    FOR
    FOREVER
    FORMFEED
    FOUR
    FOURTH
    FROM
    FUNCTION
    GET
    GLOBAL
    GO
    GRAY
    GREY
    HIDE
    HYPERCARD
    ID
    IF
    IMPORT
    IN
    INTEGER
    INTERNATIONAL
    INTO
    INVERSE
    IRIS
    IS
    LAST
    LEFT
    LENGTH
    LINEFEED
    LN
    LN1
    LOCK
    LOG2
    LOGICAL
    LONG
    MALE
    MARKED
    MAX
    ME
    MENU
    MENUBAR
    MENUITEM
    MENUITEMS
    MENUS
    MESSAGE
    MID
    MIDDLE
    MIN
    MOD
    MOUSE
    MOUSECLICK
    MOUSELOC
    MSG
    MULTIPLY
    NEUTER
    NEW
    NEXT
    NINE
    NINTH
    NOT
    NUMBER
    NUMERIC
    NUMTOCHAR
    OF
    OFFSET
    ON
    ONE
    OPEN
    OPTIONKEY
    OR
    OUT
    PAINT
    PARAM
    PARAMCOUNT
    PARAMS
    PART
    PARTS
    PASS
    PATTERN
    PI
    PLAIN
    PLAY
    POINT
    POLY
    POLYGON
    POP
    PREV
    PREVIOUS
    PUSH
    PUT
    QUOTE
    RANDOM
    READ
    RECT
    RECTANGLE
    REG
    REGULAR
    REPEAT
    RESET
    RESULT
    RETURN
    RIGHT
    ROBOTIC
    ROUND
    SCREEN
    SCRIPT
    SCROLL
    SEC
    SECOND
    SECONDS
    SECS
    SELECT
    SELECTEDCHUNK
    SELECTEDFIELD
    SELECTEDLINE
    SELECTEDTEXT
    SELECTION
    SEND
    SET
    SEVEN
    SEVENTH
    SHIFTKEY
    SHORT
    SHOW
    SHRINK
    SIN
    SIX
    SIXTH
    SLOW
    SLOWLY
    SORT
    SPACE
    SPEAK
    SPEECH
    SPRAY
    SQRT
    STACKS
    STRETCH
    STRING
    SUBTRACT
    SUM
    TAB
    TAN
    TARGET
    TEMPO
    TEN
    TENTH
    TEXT
    THE
    THEN
    THIRD
    THIS
    THREE
    TICK
    TICKS
    TIME
    TIMES
    TITLEBAR
    TO
    TOOL
    TOP
    TRUNC
    TWO
    TYPE
    UNLOCK
    UNTIL
    VALUE
    VARIABLE
    VENETIAN
    VERY
    VISUAL
    VOICE
    VOICES
    WAIT
    WATCHER
    WHILE
    WHITE
    WHOLE
    WINDOW
    WINDOWS
    WIPE
    WITH
    WITHOUT
    WRITE
    ZERO
    ZOOM
    card
    cards
    item
    line
    mouseState
    picture
    stack
    word
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= i n t e r n a t i o n a l /.$setResult($_INTERNATIONAL);./
    Keyword ::= s e l e c t e d c h u n k /.$setResult($_SELECTEDCHUNK);./
    Keyword ::= s e l e c t e d f i e l d /.$setResult($_SELECTEDFIELD);./
    Keyword ::= c h e c k e r b o a r d /.$setResult($_CHECKERBOARD);./
    Keyword ::= s e l e c t e d l i n e /.$setResult($_SELECTEDLINE);./
    Keyword ::= s e l e c t e d t e x t /.$setResult($_SELECTEDTEXT);./
    Keyword ::= a b b r e v i a t e d /.$setResult($_ABBREVIATED);./
    Keyword ::= b a c k g r o u n d s /.$setResult($_BACKGROUNDS);./
    Keyword ::= b a c k g r o u n d /.$setResult($_BACKGROUND);./
    Keyword ::= c h a r a c t e r s /.$setResult($_CHARACTERS);./
    Keyword ::= c o m m a n d k e y /.$setResult($_COMMANDKEY);./
    Keyword ::= d e s c e n d i n g /.$setResult($_DESCENDING);./
    Keyword ::= m o u s e c l i c k /.$setResult($_MOUSECLICK);./
    Keyword ::= p a r a m c o u n t /.$setResult($_PARAMCOUNT);./
    Keyword ::= a s c e n d i n g /.$setResult($_ASCENDING);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER);./
    Keyword ::= c h a r t o n u m /.$setResult($_CHARTONUM);./
    Keyword ::= d a t e i t e m s /.$setResult($_DATEITEMS);./
    Keyword ::= d i s k s p a c e /.$setResult($_DISKSPACE);./
    Keyword ::= h y p e r c a r d /.$setResult($_HYPERCARD);./
    Keyword ::= m e n u i t e m s /.$setResult($_MENUITEMS);./
    Keyword ::= n u m t o c h a r /.$setResult($_NUMTOCHAR);./
    Keyword ::= o p t i o n k e y /.$setResult($_OPTIONKEY);./
    Keyword ::= r e c t a n g l e /.$setResult($_RECTANGLE);./
    Keyword ::= s e l e c t i o n /.$setResult($_SELECTION);./
    Keyword ::= c o m p o u n d /.$setResult($_COMPOUND);./
    Keyword ::= c o n t a i n s /.$setResult($_CONTAINS);./
    Keyword ::= d a t e t i m e /.$setResult($_DATETIME);./
    Keyword ::= d i s s o l v e /.$setResult($_DISSOLVE);./
    Keyword ::= f o r m f e e d /.$setResult($_FORMFEED);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= l i n e f e e d /.$setResult($_LINEFEED);./
    Keyword ::= m e n u i t e m /.$setResult($_MENUITEM);./
    Keyword ::= m o u s e l o c /.$setResult($_MOUSELOC);./
    Keyword ::= m u l t i p l y /.$setResult($_MULTIPLY);./
    Keyword ::= p r e v i o u s /.$setResult($_PREVIOUS);./
    Keyword ::= s h i f t k e y /.$setResult($_SHIFTKEY);./
    Keyword ::= s u b t r a c t /.$setResult($_SUBTRACT);./
    Keyword ::= t i t l e b a r /.$setResult($_TITLEBAR);./
    Keyword ::= v a r i a b l e /.$setResult($_VARIABLE);./
    Keyword ::= v e n e t i a n /.$setResult($_VENETIAN);./
    Keyword ::= a n n u i t y /.$setResult($_ANNUITY);./
    Keyword ::= a v e r a g e /.$setResult($_AVERAGE);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= b u t t o n s /.$setResult($_BUTTONS);./
    Keyword ::= c o n v e r t /.$setResult($_CONVERT);./
    Keyword ::= d i s a b l e /.$setResult($_DISABLE);./
    Keyword ::= e n g l i s h /.$setResult($_ENGLISH);./
    Keyword ::= f o r e v e r /.$setResult($_FOREVER);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= i n v e r s e /.$setResult($_INVERSE);./
    Keyword ::= l o g i c a l /.$setResult($_LOGICAL);./
    Keyword ::= m e n u b a r /.$setResult($_MENUBAR);./
    Keyword ::= m e s s a g e /.$setResult($_MESSAGE);./
    Keyword ::= n u m e r i c /.$setResult($_NUMERIC);./
    Keyword ::= p a t t e r n /.$setResult($_PATTERN);./
    Keyword ::= p i c t u r e /.$setResult($_picture);./
    Keyword ::= p o l y g o n /.$setResult($_POLYGON);./
    Keyword ::= r e g u l a r /.$setResult($_REGULAR);./
    Keyword ::= r o b o t i c /.$setResult($_ROBOTIC);./
    Keyword ::= s e c o n d s /.$setResult($_SECONDS);./
    Keyword ::= s e v e n t h /.$setResult($_SEVENTH);./
    Keyword ::= s t r e t c h /.$setResult($_STRETCH);./
    Keyword ::= w a t c h e r /.$setResult($_WATCHER);./
    Keyword ::= w i n d o w s /.$setResult($_WINDOWS);./
    Keyword ::= w i t h o u t /.$setResult($_WITHOUT);./
    Keyword ::= a b b r e v /.$setResult($_ABBREV);./
    Keyword ::= a n s w e r /.$setResult($_ANSWER);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE);./
    Keyword ::= b k g n d s /.$setResult($_BKGNDS);./
    Keyword ::= b l i n d s /.$setResult($_BLINDS);./
    Keyword ::= b o t t o m /.$setResult($_BOTTOM);./
    Keyword ::= b u t t o n /.$setResult($_BUTTON);./
    Keyword ::= c e n t e r /.$setResult($_CENTER);./
    Keyword ::= c h o o s e /.$setResult($_CHOOSE);./
    Keyword ::= c m d k e y /.$setResult($_CMDKEY);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d i a l o g /.$setResult($_DIALOG);./
    Keyword ::= d i v i d e /.$setResult($_DIVIDE);./
    Keyword ::= d o m e n u /.$setResult($_DOMENU);./
    Keyword ::= e f f e c t /.$setResult($_EFFECT);./
    Keyword ::= e i g h t h /.$setResult($_EIGHTH);./
    Keyword ::= e n a b l e /.$setResult($_ENABLE);./
    Keyword ::= e x p o r t /.$setResult($_EXPORT);./
    Keyword ::= f e m a l e /.$setResult($_FEMALE);./
    Keyword ::= f i e l d s /.$setResult($_FIELDS);./
    Keyword ::= f o u r t h /.$setResult($_FOURTH);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= l e n g t h /.$setResult($_LENGTH);./
    Keyword ::= m a r k e d /.$setResult($_MARKED);./
    Keyword ::= m i d d l e /.$setResult($_MIDDLE);./
    Keyword ::= n e u t e r /.$setResult($_NEUTER);./
    Keyword ::= n u m b e r /.$setResult($_NUMBER);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= p a r a m s /.$setResult($_PARAMS);./
    Keyword ::= r a n d o m /.$setResult($_RANDOM);./
    Keyword ::= r e p e a t /.$setResult($_REPEAT);./
    Keyword ::= r e s u l t /.$setResult($_RESULT);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s c r e e n /.$setResult($_SCREEN);./
    Keyword ::= s c r i p t /.$setResult($_SCRIPT);./
    Keyword ::= s c r o l l /.$setResult($_SCROLL);./
    Keyword ::= s e c o n d /.$setResult($_SECOND);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s h r i n k /.$setResult($_SHRINK);./
    Keyword ::= s l o w l y /.$setResult($_SLOWLY);./
    Keyword ::= s p e e c h /.$setResult($_SPEECH);./
    Keyword ::= s t a c k s /.$setResult($_STACKS);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= t a r g e t /.$setResult($_TARGET);./
    Keyword ::= u n l o c k /.$setResult($_UNLOCK);./
    Keyword ::= v i s u a l /.$setResult($_VISUAL);./
    Keyword ::= v o i c e s /.$setResult($_VOICES);./
    Keyword ::= w i n d o w /.$setResult($_WINDOW);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= b k g n d /.$setResult($_BKGND);./
    Keyword ::= b l a c k /.$setResult($_BLACK);./
    Keyword ::= c a r d s /.$setResult($_cards);./
    Keyword ::= c h a r s /.$setResult($_CHARS);./
    Keyword ::= c l i c k /.$setResult($_CLICK);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c o l o n /.$setResult($_COLON);./
    Keyword ::= c o m m a /.$setResult($_COMMA);./
    Keyword ::= e i g h t /.$setResult($_EIGHT);./
    Keyword ::= e m p t y /.$setResult($_EMPTY);./
    Keyword ::= f i e l d /.$setResult($_FIELD);./
    Keyword ::= f i f t h /.$setResult($_FIFTH);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= i t e m s /.$setResult($_item);./
    Keyword ::= l i n e s /.$setResult($_line);./
    Keyword ::= m e n u s /.$setResult($_MENUS);./
    Keyword ::= m o u s e /.$setResult($_MOUSE);./
    Keyword ::= n i n t h /.$setResult($_NINTH);./
    Keyword ::= p a i n t /.$setResult($_PAINT);./
    Keyword ::= p a r a m /.$setResult($_PARAM);./
    Keyword ::= p a r t s /.$setResult($_PARTS);./
    Keyword ::= p l a i n /.$setResult($_PLAIN);./
    Keyword ::= p o i n t /.$setResult($_POINT);./
    Keyword ::= q u o t e /.$setResult($_QUOTE);./
    Keyword ::= r e s e t /.$setResult($_RESET);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= r o u n d /.$setResult($_ROUND);./
    Keyword ::= s e v e n /.$setResult($_SEVEN);./
    Keyword ::= s h o r t /.$setResult($_SHORT);./
    Keyword ::= s i x t h /.$setResult($_SIXTH);./
    Keyword ::= s p a c e /.$setResult($_SPACE);./
    Keyword ::= s p e a k /.$setResult($_SPEAK);./
    Keyword ::= s p r a y /.$setResult($_SPRAY);./
    Keyword ::= s t a c k /.$setResult($_stack);./
    Keyword ::= t e m p o /.$setResult($_TEMPO);./
    Keyword ::= t e n t h /.$setResult($_TENTH);./
    Keyword ::= t h i r d /.$setResult($_THIRD);./
    Keyword ::= t h r e e /.$setResult($_THREE);./
    Keyword ::= t i c k s /.$setResult($_TICKS);./
    Keyword ::= t i m e s /.$setResult($_TIMES);./
    Keyword ::= t r u n c /.$setResult($_TRUNC);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= v a l u e /.$setResult($_VALUE);./
    Keyword ::= v o i c e /.$setResult($_VOICE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= w h i t e /.$setResult($_WHITE);./
    Keyword ::= w h o l e /.$setResult($_WHOLE);./
    Keyword ::= w o r d s /.$setResult($_word);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= a b b r /.$setResult($_ABBR);./
    Keyword ::= a t a n /.$setResult($_ATAN);./
    Keyword ::= b a c k /.$setResult($_BACK);./
    Keyword ::= b a r n /.$setResult($_BARN);./
    Keyword ::= b e e p /.$setResult($_BEEP);./
    Keyword ::= b o o l /.$setResult($_BOOL);./
    Keyword ::= b t n s /.$setResult($_BTNS);./
    Keyword ::= c a r d /.$setResult($_card);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d i a l /.$setResult($_DIAL);./
    Keyword ::= d o o r /.$setResult($_DOOR);./
    Keyword ::= d o w n /.$setResult($_mouseState);./
    Keyword ::= d r a g /.$setResult($_DRAG);./
    Keyword ::= e d i t /.$setResult($_EDIT);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= e x p 1 /.$setResult($_EXP1);./
    Keyword ::= e x p 2 /.$setResult($_EXP2);./
    Keyword ::= f a s t /.$setResult($_FAST);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= f i n d /.$setResult($_FIND);./
    Keyword ::= f i v e /.$setResult($_FIVE);./
    Keyword ::= f l d s /.$setResult($_FLDS);./
    Keyword ::= f o u r /.$setResult($_FOUR);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= g r a y /.$setResult($_GRAY);./
    Keyword ::= g r e y /.$setResult($_GREY);./
    Keyword ::= h i d e /.$setResult($_HIDE);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= i r i s /.$setResult($_IRIS);./
    Keyword ::= i t e m /.$setResult($_item);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l i n e /.$setResult($_line);./
    Keyword ::= l o c k /.$setResult($_LOCK);./
    Keyword ::= l o g 2 /.$setResult($_LOG2);./
    Keyword ::= l o n g /.$setResult($_LONG);./
    Keyword ::= m a l e /.$setResult($_MALE);./
    Keyword ::= m e n u /.$setResult($_MENU);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n i n e /.$setResult($_NINE);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= p a r t /.$setResult($_PART);./
    Keyword ::= p a s s /.$setResult($_PASS);./
    Keyword ::= p i c t /.$setResult($_picture);./
    Keyword ::= p l a y /.$setResult($_PLAY);./
    Keyword ::= p o l y /.$setResult($_POLY);./
    Keyword ::= p r e v /.$setResult($_PREV);./
    Keyword ::= p u s h /.$setResult($_PUSH);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r e c t /.$setResult($_RECT);./
    Keyword ::= s e c s /.$setResult($_SECS);./
    Keyword ::= s e n d /.$setResult($_SEND);./
    Keyword ::= s h o w /.$setResult($_SHOW);./
    Keyword ::= s l o w /.$setResult($_SLOW);./
    Keyword ::= s o r t /.$setResult($_SORT);./
    Keyword ::= s q r t /.$setResult($_SQRT);./
    Keyword ::= t e x t /.$setResult($_TEXT);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t h i s /.$setResult($_THIS);./
    Keyword ::= t i c k /.$setResult($_TICK);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t o o l /.$setResult($_TOOL);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= v e r y /.$setResult($_VERY);./
    Keyword ::= w a i t /.$setResult($_WAIT);./
    Keyword ::= w i p e /.$setResult($_WIPE);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= w o r d /.$setResult($_word);./
    Keyword ::= z e r o /.$setResult($_ZERO);./
    Keyword ::= z o o m /.$setResult($_ZOOM);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a s k /.$setResult($_ASK);./
    Keyword ::= b g s /.$setResult($_BGS);./
    Keyword ::= b o x /.$setResult($_BOX);./
    Keyword ::= b t n /.$setResult($_BTN);./
    Keyword ::= c a n /.$setResult($_CAN);./
    Keyword ::= c d s /.$setResult($_cards);./
    Keyword ::= c o s /.$setResult($_COS);./
    Keyword ::= d i v /.$setResult($_DIV);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e o f /.$setResult($_EOF);./
    Keyword ::= e x p /.$setResult($_EXP);./
    Keyword ::= f l d /.$setResult($_FLD);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= l n 1 /.$setResult($_LN1);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m i d /.$setResult($_MID);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= m s g /.$setResult($_MSG);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o n e /.$setResult($_ONE);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= p o p /.$setResult($_POP);./
    Keyword ::= p u t /.$setResult($_PUT);./
    Keyword ::= r e g /.$setResult($_REG);./
    Keyword ::= s e c /.$setResult($_SEC);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s i n /.$setResult($_SIN);./
    Keyword ::= s i x /.$setResult($_SIX);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= t a b /.$setResult($_TAB);./
    Keyword ::= t a n /.$setResult($_TAN);./
    Keyword ::= t e n /.$setResult($_TEN);./
    Keyword ::= t h e /.$setResult($_THE);./
    Keyword ::= t o p /.$setResult($_TOP);./
    Keyword ::= t w o /.$setResult($_TWO);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= b g /.$setResult($_BG);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= c d /.$setResult($_card);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= g o /.$setResult($_GO);./
    Keyword ::= i d /.$setResult($_ID);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= l n /.$setResult($_LN);./
    Keyword ::= m e /.$setResult($_ME);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= p i /.$setResult($_PI);./
    Keyword ::= t o /.$setResult($_TO);./
    Keyword ::= u p /.$setResult($_mouseState);./
%End
