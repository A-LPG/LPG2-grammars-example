-- Keyword filter
%options package=lpg.grammars.parkingsign
%options template=KeywordTemplateF.gi
%options fp=ParkingsignKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    NO
    PARKING
    STOPPING
    TOW
    AWAY
    TEMPORARY
    ANY
    TIME
    ANYTIME
    EXCEPT
    SATURDAY
    SUNDAY
    SAT
    SUN
    MONDAY
    TUESDAY
    WEDNESDAY
    THURSDAY
    FRIDAY
    MON
    TUE
    WED
    THU
    FRI
    NIGHTLY
    DAILY
    ONLY
    HOUR
    HOURS
    MIN
    MINUTES
    AM
    PM
    NOON
    MIDNIGHT
    THRU
    TO
    AND
    OR
    STREET
    CLEANING
    SWEEPING
    PASSENGER
    LOADING
    VALET
    VEHICLES
    WITH
    DISTRICT
    PERMITS
    PERMIT
    EXEMPT
    EXEMPTED
    EXEMPTIONS
    HOLIDAYS
    SCHOOL
    DAYS
    LTR_A
    LTR_M
    LTR_P
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
    0 1 2 3 4 5 6 7 8 9
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= n o /.$setResult($_NO);./
              | p a r k i n g /.$setResult($_PARKING);./
              | s t o p p i n g /.$setResult($_STOPPING);./
              | t o w /.$setResult($_TOW);./
              | a w a y /.$setResult($_AWAY);./
              | t e m p o r a r y /.$setResult($_TEMPORARY);./
              | a n y /.$setResult($_ANY);./
              | t i m e /.$setResult($_TIME);./
              | a n y t i m e /.$setResult($_ANYTIME);./
              | e x c e p t /.$setResult($_EXCEPT);./
              | s a t u r d a y /.$setResult($_SATURDAY);./
              | s u n d a y /.$setResult($_SUNDAY);./
              | s a t /.$setResult($_SAT);./
              | s u n /.$setResult($_SUN);./
              | m o n d a y /.$setResult($_MONDAY);./
              | t u e s d a y /.$setResult($_TUESDAY);./
              | w e d n e s d a y /.$setResult($_WEDNESDAY);./
              | t h u r s d a y /.$setResult($_THURSDAY);./
              | f r i d a y /.$setResult($_FRIDAY);./
              | m o n /.$setResult($_MON);./
              | t u e /.$setResult($_TUE);./
              | w e d /.$setResult($_WED);./
              | t h u /.$setResult($_THU);./
              | f r i /.$setResult($_FRI);./
              | n i g h t l y /.$setResult($_NIGHTLY);./
              | d a i l y /.$setResult($_DAILY);./
              | o n l y /.$setResult($_ONLY);./
              | h o u r /.$setResult($_HOUR);./
              | h o u r s /.$setResult($_HOURS);./
              | m i n /.$setResult($_MIN);./
              | m i n u t e s /.$setResult($_MINUTES);./
              | a m /.$setResult($_AM);./
              | p m /.$setResult($_PM);./
              | n o o n /.$setResult($_NOON);./
              | m i d n i g h t /.$setResult($_MIDNIGHT);./
              | t h r u /.$setResult($_THRU);./
              | t o /.$setResult($_TO);./
              | a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | s t r e e t /.$setResult($_STREET);./
              | c l e a n i n g /.$setResult($_CLEANING);./
              | s w e e p i n g /.$setResult($_SWEEPING);./
              | p a s s e n g e r /.$setResult($_PASSENGER);./
              | l o a d i n g /.$setResult($_LOADING);./
              | v a l e t /.$setResult($_VALET);./
              | v e h i c l e s /.$setResult($_VEHICLES);./
              | w i t h /.$setResult($_WITH);./
              | d i s t r i c t /.$setResult($_DISTRICT);./
              | p e r m i t s /.$setResult($_PERMITS);./
              | p e r m i t /.$setResult($_PERMIT);./
              | e x e m p t /.$setResult($_EXEMPT);./
              | e x e m p t e d /.$setResult($_EXEMPTED);./
              | e x e m p t i o n s /.$setResult($_EXEMPTIONS);./
              | h o l i d a y s /.$setResult($_HOLIDAYS);./
              | s c h o o l /.$setResult($_SCHOOL);./
              | d a y s /.$setResult($_DAYS);./
              | a /.$setResult($_LTR_A);./
              | m /.$setResult($_LTR_M);./
              | p /.$setResult($_LTR_P);./
%End
