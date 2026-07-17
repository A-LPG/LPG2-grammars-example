-- DatetimeParser (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options la=2
%Options fp=DatetimeParser
%options package=lpg.grammars.rfc822.rfc822_datetime
%options template=dtParserTemplateF.gi
%options import_terminals=DatetimeLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    date_time
%End

%Rules
    date_time ::= date time
                | day COMMA date time

    day ::= MON | TUE | WED | THU | FRI | SAT | SUN

    date ::= two_digits month two_digit

    two_digits ::= two_digit
                 | two_digits two_digit

    month ::= JAN | FEB | MAR | APR | MAY | JUN | JUL | AUG | SEP | OCT | NOV | DEC

    time ::= hour zone

    hour ::= two_digit COLON two_digit
           | two_digit COLON two_digit COLON two_digit

    zone ::= UT | GMT | EST | EDT | CST | CDT | MST | MDT | PST | PDT
           | ALPHA
           | PLUS four_digit
           | MINUS four_digit

    two_digit ::= alphanumeric alphanumeric
    four_digit ::= alphanumeric alphanumeric alphanumeric alphanumeric
    alphanumeric ::= ALPHA | DIGIT
%End
