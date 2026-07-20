-- AUTO-GENERATED from antlr/grammars-v4 iso8601 by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=Iso8601Parser
%options package=lpg.grammars.iso8601
%options template=dtParserTemplateF.gi
%options import_terminals=Iso8601Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    iso
%End

%Rules
    int_ ::= list_1

    dec ::= list_2 opt_3

    int2 ::= Digit Digit

    int3 ::= Digit Digit Digit

    int4 ::= Digit Digit Digit Digit

    sint2p ::= grp_4 Digit list_5

    sint4p ::= grp_6 Digit Digit Digit list_7

    dec2 ::= Digit Digit opt_8

    century ::= int2
               | sint2p

    year ::= int4
            | sint4p

    month ::= int2

    day ::= int2

    ordinalDay ::= int3

    week ::= int2

    weekDay ::= Digit

    hour ::= int2

    minute ::= int2

    second ::= int2

    hourFraction ::= dec2

    minuteFraction ::= dec2

    secondFraction ::= dec2

    calendarDate ::= calendarDateBasic
                    | calendarDateExtended

    calendarDateBasic ::= year month day

    calendarDateExtended ::= year MINUS month MINUS day

    specificMonthCalendarDate ::= year MINUS month

    specificYearCalendarDate ::= year

    specificCenturyCalendarDate ::= century

    ordinalDate ::= ordinalDateBasic
                   | ordinalDateExtended

    ordinalDateBasic ::= year ordinalDay

    ordinalDateExtended ::= year MINUS ordinalDay

    weekDate ::= weekDateBasic
                | weekDateExtended

    weekDateBasic ::= year W week weekDay

    weekDateExtended ::= year MINUS W week MINUS weekDay

    specificWeekWeekDate ::= specificWeekWeekDateBasic
                            | specificWeekWeekDateExtended

    specificWeekWeekDateBasic ::= year W week

    specificWeekWeekDateExtended ::= year MINUS W week

    datePrecise ::= datePreciseBasic
                   | datePreciseExtended

    datePreciseBasic ::= calendarDateBasic
                        | ordinalDateBasic
                        | weekDateBasic

    datePreciseExtended ::= calendarDateExtended
                           | ordinalDateExtended
                           | weekDateExtended

    date ::= dateBasic
            | dateExtended

    dateBasic ::= datePreciseBasic
                 | specificMonthCalendarDate
                 | specificYearCalendarDate
                 | specificCenturyCalendarDate
                 | specificWeekWeekDateBasic

    dateExtended ::= datePreciseExtended
                    | specificMonthCalendarDate
                    | specificYearCalendarDate
                    | specificCenturyCalendarDate
                    | specificWeekWeekDateExtended

    localTimePrecise ::= localTimePreciseBasic
                        | localTimePreciseExtended

    localTimePreciseBasic ::= hour minute secondFraction

    localTimePreciseExtended ::= hour COLON minute COLON secondFraction

    specificMinuteLocalTime ::= specificMinuteLocalTimeBasic
                               | specificMinuteLocalTimeExtended

    specificMinuteLocalTimeBasic ::= hour minuteFraction

    specificMinuteLocalTimeExtended ::= hour COLON minuteFraction

    specificHourLocalTime ::= hourFraction

    localTime ::= localTimeBasic
                 | localTimeExtended

    localTimeBasic ::= localTimePreciseBasic
                      | specificMinuteLocalTimeBasic
                      | specificHourLocalTime

    localTimeExtended ::= localTimePreciseExtended
                         | specificMinuteLocalTimeExtended
                         | specificHourLocalTime

    timeZoneUtc ::= Z

    timeZone ::= timeZoneBasic
                | timeZoneExtended

    timeZoneBasic ::= grp_9
                     | timeZoneUtc

    timeZoneExtended ::= grp_12
                        | timeZoneUtc

    localTimeAndTimeZone ::= localTimeAndTimeZoneBasic
                            | localTimeAndTimeZoneExtended

    localTimeAndTimeZoneBasic ::= localTimeBasic timeZoneBasic

    localTimeAndTimeZoneExtended ::= localTimeExtended timeZoneExtended

    time ::= opt_16 localTime opt_17

    datetimePrecise ::= datetimePreciseBasic
                       | datetimePreciseExtended

    datetimePreciseBasic ::= calendarDateBasic T localTimePreciseBasic opt_18

    datetimePreciseExtended ::= calendarDateExtended T localTimePreciseExtended opt_19

    datetime ::= datetimeBasic
                | datetimeExtended

    datetimeBasic ::= datePreciseBasic T localTimeBasic opt_20

    datetimeExtended ::= datePreciseExtended T localTimeExtended opt_21

    interval ::= intervalT
                | intervalYMD

    intervalBasic ::= intervalT
                     | intervalYMDBasic

    intervalExtended ::= intervalT
                        | intervalYMDExtended

    intervalT ::= P opt_23 opt_25 opt_27 T opt_29 opt_31 dec S
                 | P opt_33 opt_35 opt_37 T opt_39 dec M
                 | P opt_41 opt_43 opt_45 T dec H
                 | P opt_47 opt_49 dec D
                 | P opt_51 dec M
                 | P dec Y
                 | P dec W

    monthDateBasic ::= month day

    monthDateExtended ::= month MINUS day

    intervalYMDTimeBasic ::= monthDateBasic
                            | day
                            | datetimeBasic
                            | dateBasic
                            | localTimeBasic

    intervalYMDTimeExtended ::= monthDateExtended
                               | day
                               | datetimeExtended
                               | dateExtended
                               | localTimeExtended

    intervalYMD ::= intervalYMDBasic
                   | intervalYMDExtended

    intervalYMDBasic ::= P intervalYMDTimeBasic

    intervalYMDExtended ::= P intervalYMDTimeExtended

    timeBeginEnd ::= timeBeginEndBasic
                    | timeBeginEndExtended

    timeBeginEndBasic ::= intervalYMDTimeBasic SLASH intervalYMDTimeBasic

    timeBeginEndExtended ::= intervalYMDTimeExtended SLASH intervalYMDTimeExtended

    timeBeginInterval ::= timeBeginIntervalBasic
                         | timeBeginIntervalExtended

    timeBeginIntervalBasic ::= datetimeBasic SLASH intervalBasic

    timeBeginIntervalExtended ::= datetimeExtended SLASH intervalExtended

    timeIntervalEnd ::= timeIntervalEndBasic
                       | timeIntervalEndExtended

    timeIntervalEndBasic ::= intervalBasic SLASH datetimeBasic

    timeIntervalEndExtended ::= intervalExtended SLASH datetimeExtended

    duration ::= durationBasic
                | durationExtended

    durationBasic ::= timeBeginEndBasic
                     | timeBeginIntervalBasic
                     | timeIntervalEndBasic
                     | intervalBasic

    durationExtended ::= timeBeginEndExtended
                        | timeBeginIntervalExtended
                        | timeIntervalEndExtended
                        | intervalExtended

    recurringCount ::= R opt_52

    recurring ::= recurringBasic
                 | recurringExtended

    recurringBasic ::= recurringCount SLASH durationBasic

    recurringExtended ::= recurringCount SLASH durationExtended

    iso ::= grp_53

    list_1 ::= Digit+

    list_2 ::= Digit+

    opt_3 ::= Fraction?

    grp_4 ::= PLUS
             | MINUS

    list_5 ::= Digit+

    grp_6 ::= PLUS
             | MINUS

    list_7 ::= Digit+

    opt_8 ::= Fraction?

    grp_10 ::= PLUS
              | MINUS

    opt_11 ::= minute?

    grp_9 ::= grp_10 hour opt_11

    grp_13 ::= PLUS
              | MINUS

    seq_14 ::= COLON minute

    opt_15 ::= seq_14?

    grp_12 ::= grp_13 hour opt_15

    opt_16 ::= T?

    opt_17 ::= timeZone?

    opt_18 ::= timeZoneBasic?

    opt_19 ::= timeZoneExtended?

    opt_20 ::= timeZoneBasic?

    opt_21 ::= timeZoneExtended?

    seq_22 ::= int_ Y

    opt_23 ::= seq_22?

    seq_24 ::= int_ M

    opt_25 ::= seq_24?

    seq_26 ::= int_ D

    opt_27 ::= seq_26?

    seq_28 ::= int_ H

    opt_29 ::= seq_28?

    seq_30 ::= int_ M

    opt_31 ::= seq_30?

    seq_32 ::= int_ Y

    opt_33 ::= seq_32?

    seq_34 ::= int_ M

    opt_35 ::= seq_34?

    seq_36 ::= int_ D

    opt_37 ::= seq_36?

    seq_38 ::= int_ H

    opt_39 ::= seq_38?

    seq_40 ::= int_ Y

    opt_41 ::= seq_40?

    seq_42 ::= int_ M

    opt_43 ::= seq_42?

    seq_44 ::= int_ D

    opt_45 ::= seq_44?

    seq_46 ::= int_ Y

    opt_47 ::= seq_46?

    seq_48 ::= int_ M

    opt_49 ::= seq_48?

    seq_50 ::= int_ Y

    opt_51 ::= seq_50?

    opt_52 ::= int_?

    grp_53 ::= time
              | date
              | datetime
              | duration
              | recurring
%End
