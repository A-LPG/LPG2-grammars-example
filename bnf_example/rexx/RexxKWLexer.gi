-- Keyword filter for Rexx (KWD_* names aligned to parser)
%options package=lpg.grammars.rexx
%options template=KeywordTemplateF.gi
%options fp=RexxKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    KWD_IF
    KWD_THEN
    KWD_ELSE
    KWD_SAY
    KWD_DO
    KWD_END
    KWD_EXIT
    KWD_RETURN
    KWD_CALL
    KWD_SELECT
    KWD_WHEN
    KWD_OTHERWISE
    KWD_NOP
    KWD_DROP
    KWD_LEAVE
    KWD_ITERATE
    KWD_SIGNAL
    KWD_PARSE
    KWD_PULL
    KWD_PUSH
    KWD_QUEUE
    KWD_ARG
    KWD_PROCEDURE
    KWD_EXPOSE
    KWD_ADDRESS
    KWD_NUMERIC
    KWD_DIGITS
    KWD_FORM
    KWD_FUZZ
    KWD_FOREVER
    KWD_WHILE
    KWD_UNTIL
    KWD_TO
    KWD_BY
    KWD_FOR
    KWD_ON
    KWD_OFF
    KWD_ERROR
    KWD_FAILURE
    KWD_HALT
    KWD_VALUE
    KWD_EXTERNAL
    KWD_SOURCE
    KWD_OPTIONS
    KWD_INTERPRET
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= o t h e r w i s e /.$setResult($_KWD_OTHERWISE);./
              | p r o c e d u r e /.$setResult($_KWD_PROCEDURE);./
              | i n t e r p r e t /.$setResult($_KWD_INTERPRET);./
              | e x t e r n a l /.$setResult($_KWD_EXTERNAL);./
              | f o r e v e r /.$setResult($_KWD_FOREVER);./
              | i t e r a t e /.$setResult($_KWD_ITERATE);./
              | a d d r e s s /.$setResult($_KWD_ADDRESS);./
              | n u m e r i c /.$setResult($_KWD_NUMERIC);./
              | o p t i o n s /.$setResult($_KWD_OPTIONS);./
              | e x p o s e /.$setResult($_KWD_EXPOSE);./
              | f a i l u r e /.$setResult($_KWD_FAILURE);./
              | r e t u r n /.$setResult($_KWD_RETURN);./
              | s e l e c t /.$setResult($_KWD_SELECT);./
              | s i g n a l /.$setResult($_KWD_SIGNAL);./
              | d i g i t s /.$setResult($_KWD_DIGITS);./
              | s o u r c e /.$setResult($_KWD_SOURCE);./
              | w h i l e /.$setResult($_KWD_WHILE);./
              | u n t i l /.$setResult($_KWD_UNTIL);./
              | l e a v e /.$setResult($_KWD_LEAVE);./
              | p a r s e /.$setResult($_KWD_PARSE);./
              | q u e u e /.$setResult($_KWD_QUEUE);./
              | e r r o r /.$setResult($_KWD_ERROR);./
              | v a l u e /.$setResult($_KWD_VALUE);./
              | t h e n /.$setResult($_KWD_THEN);./
              | e l s e /.$setResult($_KWD_ELSE);./
              | e x i t /.$setResult($_KWD_EXIT);./
              | c a l l /.$setResult($_KWD_CALL);./
              | w h e n /.$setResult($_KWD_WHEN);./
              | d r o p /.$setResult($_KWD_DROP);./
              | p u l l /.$setResult($_KWD_PULL);./
              | p u s h /.$setResult($_KWD_PUSH);./
              | f o r m /.$setResult($_KWD_FORM);./
              | f u z z /.$setResult($_KWD_FUZZ);./
              | h a l t /.$setResult($_KWD_HALT);./
              | s a y /.$setResult($_KWD_SAY);./
              | e n d /.$setResult($_KWD_END);./
              | a r g /.$setResult($_KWD_ARG);./
              | n o p /.$setResult($_KWD_NOP);./
              | f o r /.$setResult($_KWD_FOR);./
              | o f f /.$setResult($_KWD_OFF);./
              | d o /.$setResult($_KWD_DO);./
              | i f /.$setResult($_KWD_IF);./
              | t o /.$setResult($_KWD_TO);./
              | b y /.$setResult($_KWD_BY);./
              | o n /.$setResult($_KWD_ON);./
%End
