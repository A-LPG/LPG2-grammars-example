-- AUTO-GENERATED from antlr/grammars-v4 parkingsign by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=ParkingsignParser
%options package=lpg.grammars.parkingsign
%options template=dtParserTemplateF.gi
%options import_terminals=ParkingsignLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    parkingSigns
%End

%Rules
    parkingSigns ::= list_1
           | NO PARKING
           | IDENTIFIER IDENTIFIER

    parkingSign ::= streetSweepingSign
           | noParkingSign
           | noStoppingSign
           | passengerLoadingSign
           | singleTimeLimitSign
           | doubleTimeLimitSign
           | temporaryNoParkingSign
           | permitSign

    streetSweepingSign ::= opt_2 timeRange day streetSweeping

    noParkingSign ::= opt_3 grp_4 opt_5 opt_6

    noStoppingSign ::= opt_7 grp_8 list_9 opt_10 opt_11

    passengerLoadingSign ::= opt_12 loadingOnly list_13 opt_14 opt_15

    temporaryNoParkingSign ::= towAway TEMPORARY noParking grp_16 opt_17 opt_18

    singleTimeLimitSign ::= grp_19 PARKING timeRange opt_22 opt_23

    doubleTimeLimitSign ::= INT HOUR PARKING dayRange dayRange time time TO TO time time opt_25

    permitSign ::= opt_27 DISTRICT NO INT PERMITS exempt

    streetSweeping ::= STREET grp_28

    noParking ::= NO PARKING

    noStopping ::= NO STOPPING

    valetOnly ::= VALET PARKING ONLY

    loadingOnly ::= PASSENGER LOADING ONLY

    schoolDays ::= SCHOOL DAYS

    timeRange ::= seq_29
           | seq_30

    everyDay ::= DAILY
           | NIGHTLY

    dayToDay ::= day to day

    dayAndDay ::= day and_ day

    dayRange ::= everyDay
           | schoolDays
           | HOLIDAYS
           | dayAndDay
           | dayToDay
           | day ONLY
           | day

    dayRangePlus ::= dayRange

    to ::= TO
           | DASH
           | THRU

    and_ ::= AND
           | AMPERSAND

    towAway ::= TOW opt_31 AWAY

    minute ::= MIN
           | MINUTE

    exempt ::= EXEMPT
           | EXEMPTED

    anyTime ::= ANYTIME
           | seq_32

    day ::= MON
           | TUE
           | WED
           | THU
           | FRI
           | SAT
           | SUN

    time ::= INT opt_34 opt_36
           | twelveNoon
           | twelveMidnight

    twelveNoon ::= NOON
           | seq_37

    twelveMidnight ::= MIDNIGHT
           | seq_38

    am ::= AM
           | A_M_

    pm ::= PM
           | P_M_

    list_1 ::= $empty | list_1 parkingSign

    opt_2 ::= noParking | $empty

    opt_3 ::= noParking | $empty

    grp_4 ::= anyTime | timeRange

    opt_5 ::= EXCEPT | $empty

    opt_6 ::= dayRange | $empty

    opt_7 ::= towAway | $empty

    grp_8 ::= noStopping | valetOnly

    list_9 ::= timeRange | list_9 timeRange

    opt_10 ::= EXCEPT | $empty

    opt_11 ::= dayRange | $empty

    opt_12 ::= towAway | $empty

    list_13 ::= timeRange | list_13 timeRange

    opt_14 ::= EXCEPT | $empty

    opt_15 ::= dayRange | $empty

    grp_16 ::= anyTime | timeRange

    opt_17 ::= EXCEPT | $empty

    opt_18 ::= dayRange | $empty

    seq_20 ::= INT HOUR

    seq_21 ::= INT minute

    grp_19 ::= seq_20 | seq_21

    opt_22 ::= EXCEPT | $empty

    opt_23 ::= dayRange | $empty

    seq_24 ::= EXCEPT HOLIDAYS

    opt_25 ::= seq_24 | $empty

    seq_26 ::= VEHICLES WITH

    opt_27 ::= seq_26 | $empty

    grp_28 ::= SWEEPING | CLEANING

    seq_29 ::= time to time

    seq_30 ::= INT to time

    opt_31 ::= DASH | $empty

    seq_32 ::= ANY TIME

    seq_33 ::= COLON INT

    opt_34 ::= seq_33 | $empty

    grp_35 ::= am | pm

    opt_36 ::= grp_35 | $empty

    seq_37 ::= T_12 NOON

    seq_38 ::= T_12 MIDNIGHT

%End
