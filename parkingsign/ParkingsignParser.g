-- Parkingsign Parser (LPG)

%Options la=2
%Options fp=ParkingsignParser
%options package=lpg.grammars.parkingsign
%options template=dtParserTemplateF.gi
%options import_terminals=ParkingsignLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    parkingSigns
%End
%Rules
    parkingSigns ::= $empty
              | items
    items ::= item
            | items item
    item ::= IDENTIFIER
           | NUMBER
           | STRING
           | NO
           | PARKING
           | STOPPING
           | TOW
           | AWAY
           | TEMPORARY
           | ANY
           | TIME
           | ANYTIME
           | EXCEPT
           | SATURDAY
           | SUNDAY
           | SAT
           | SUN
           | MONDAY
           | TUESDAY
           | WEDNESDAY
           | THURSDAY
           | FRIDAY
           | MON
           | TUE
           | WED
           | THU
           | FRI
           | NIGHTLY
           | DAILY
           | ONLY
           | HOUR
           | HOURS
           | MIN
           | MINUTES
           | AM
           | PM
           | NOON
           | MIDNIGHT
           | THRU
           | TO
           | AND
           | OR
           | STREET
           | CLEANING
           | SWEEPING
           | PASSENGER
           | LOADING
           | VALET
           | VEHICLES
           | WITH
           | DISTRICT
           | PERMITS
           | PERMIT
           | EXEMPT
           | EXEMPTED
           | EXEMPTIONS
           | HOLIDAYS
           | SCHOOL
           | DAYS
           | LTR_A
           | LTR_M
           | LTR_P
           | MINUS
           | AMP
           | DOT
           | COLON
%End
