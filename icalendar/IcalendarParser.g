-- AUTO-GENERATED from antlr/grammars-v4 icalendar by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=IcalendarParser
%options package=lpg.grammars.icalendar
%options template=btParserTemplateF.gi
%options import_terminals=IcalendarLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End


%Define
    $ast_class /.Object./
    $ast_type /.Object./
%End

%Start
    parse
%End

%Rules
    parse ::= icalstream

    icalstream ::= list_1 icalobject list_4 list_5

    icalobject ::= k_begin COL k_vcalendar CRLF list_6 list_7 k_end COL k_vcalendar

    calprop ::= prodid
           | version
           | calscale
           | method
           | x_prop
           | iana_prop

    calscale ::= k_calscale list_9 COL k_gregorian CRLF

    method ::= k_method list_11 COL iana_token CRLF

    prodid ::= k_prodid list_13 COL text CRLF

    version ::= k_version list_15 COL vervalue CRLF

    vervalue ::= float_num SCOL float_num
           | float_num

    component ::= eventc
           | todoc
           | journalc
           | freebusyc
           | timezonec
           | iana_comp
           | x_comp

    iana_comp ::= k_begin COL iana_token CRLF list_16 k_end COL iana_token CRLF

    x_comp ::= k_begin COL x_name CRLF list_17 k_end COL x_name CRLF

    contentline ::= name list_19 COL value CRLF

    name ::= iana_token
           | x_name

    value ::= list_20

    eventc ::= k_begin COL k_vevent CRLF list_21 list_22 k_end COL k_vevent CRLF

    todoc ::= k_begin COL k_vtodo CRLF list_23 list_24 k_end COL k_vtodo CRLF

    journalc ::= k_begin COL k_vjournal CRLF list_25 k_end COL k_vjournal CRLF

    freebusyc ::= k_begin COL k_vfreebusy CRLF list_26 k_end COL k_vfreebusy CRLF

    timezonec ::= k_begin COL k_vtimezone CRLF list_27 k_end COL k_vtimezone CRLF

    alarmc ::= k_begin COL k_valarm CRLF list_28 k_end COL k_valarm CRLF

    eventprop ::= dtstamp
           | uid
           | dtstart
           | clazz
           | created
           | description
           | geo
           | last_mod
           | location
           | organizer
           | priority
           | seq
           | status
           | summary
           | transp
           | url
           | recurid
           | rrule
           | dtend
           | duration
           | attach
           | attendee
           | categories
           | comment
           | contact
           | exdate
           | rstatus
           | related
           | resources
           | rdate
           | x_prop
           | iana_prop

    todoprop ::= dtstamp
           | uid
           | clazz
           | completed
           | created
           | description
           | dtstart
           | geo
           | last_mod
           | location
           | organizer
           | percent
           | priority
           | recurid
           | seq
           | status
           | summary
           | url
           | rrule
           | due
           | duration
           | attach
           | attendee
           | categories
           | comment
           | contact
           | exdate
           | rstatus
           | related
           | resources
           | rdate
           | x_prop
           | iana_prop

    jourprop ::= dtstamp
           | uid
           | clazz
           | created
           | dtstart
           | last_mod
           | organizer
           | recurid
           | seq
           | status
           | summary
           | url
           | rrule
           | attach
           | attendee
           | categories
           | comment
           | contact
           | description
           | exdate
           | related
           | rdate
           | rstatus
           | x_prop
           | iana_prop

    fbprop ::= dtstamp
           | uid
           | contact
           | dtstart
           | dtend
           | organizer
           | url
           | attendee
           | comment
           | freebusy
           | rstatus
           | x_prop
           | iana_prop

    timezoneprop ::= tzid
           | last_mod
           | tzurl
           | standardc
           | daylightc
           | x_prop
           | iana_prop

    tzprop ::= dtstart
           | tzoffsetto
           | tzoffsetfrom
           | rrule
           | comment
           | rdate
           | tzname
           | x_prop
           | iana_prop

    alarmprop ::= action
           | description
           | trigger
           | summary
           | attendee
           | duration
           | repeat_
           | attach
           | x_prop
           | iana_prop

    standardc ::= k_begin COL k_standard CRLF list_29 k_end COL k_standard CRLF

    daylightc ::= k_begin COL k_daylight CRLF list_30 k_end COL k_daylight CRLF

    attach ::= k_attach list_31 COL grp_32 CRLF

    attachparam ::= SCOL k_encoding ASSIGN k_base D6 D4
           | SCOL k_value ASSIGN k_binary
           | SCOL fmttypeparam
           | SCOL other_param

    categories ::= k_categories list_33 COL text list_35 CRLF

    catparam ::= SCOL languageparam
           | SCOL other_param

    clazz ::= k_class list_37 COL classvalue CRLF

    classvalue ::= k_public
           | k_private
           | k_confidential
           | iana_token
           | x_name

    comment ::= k_comment list_38 COL text CRLF

    commparam ::= SCOL altrepparam
           | SCOL languageparam
           | SCOL other_param

    description ::= k_description list_39 COL text CRLF

    descparam ::= SCOL altrepparam
           | SCOL languageparam
           | SCOL other_param

    geo ::= k_geo list_41 COL geovalue CRLF

    geovalue ::= float_num SCOL float_num

    location ::= k_location list_42 COL text CRLF

    locparam ::= SCOL altrepparam
           | SCOL languageparam
           | SCOL other_param

    percent ::= k_percent_complete list_44 COL integer CRLF

    priority ::= k_priority list_46 COL priovalue CRLF

    priovalue ::= integer

    resources ::= k_resources list_47 COL text list_49 CRLF

    resrcparam ::= SCOL altrepparam
           | SCOL languageparam
           | SCOL other_param

    status ::= k_status list_51 COL statvalue CRLF

    statvalue ::= statvalue_event
           | statvalue_todo
           | statvalue_jour

    statvalue_event ::= k_tentative
           | k_confirmed
           | k_cancelled

    statvalue_todo ::= k_needs_action
           | k_completed
           | k_in_process
           | k_cancelled

    statvalue_jour ::= k_draft
           | k_final
           | k_cancelled

    summary ::= k_summary list_52 COL text CRLF

    summparam ::= SCOL altrepparam
           | SCOL languageparam
           | SCOL other_param

    completed ::= k_completed list_54 COL date_time CRLF

    dtend ::= k_dtend list_55 COL date_time_date CRLF

    dtendparam ::= SCOL k_value ASSIGN k_date_time
           | SCOL k_value ASSIGN k_date
           | SCOL tzidparam
           | SCOL other_param

    due ::= k_due list_56 COL date_time_date CRLF

    dueparam ::= SCOL k_value ASSIGN k_date_time
           | SCOL k_value ASSIGN k_date
           | SCOL tzidparam
           | SCOL other_param

    dtstart ::= k_dtstart list_57 COL date_time_date CRLF

    dtstparam ::= SCOL k_value ASSIGN k_date_time
           | SCOL k_value ASSIGN k_date
           | SCOL tzidparam
           | SCOL other_param

    duration ::= k_duration list_59 COL dur_value CRLF

    freebusy ::= k_freebusy list_60 COL fbvalue CRLF

    fbparam ::= SCOL fbtypeparam
           | SCOL other_param

    fbvalue ::= period list_62

    transp ::= k_transp list_64 COL transvalue CRLF

    transvalue ::= k_opaque
           | k_transparent

    tzid ::= k_tzid list_66 COL opt_67 text CRLF

    tzname ::= k_tzname list_68 COL text CRLF

    tznparam ::= SCOL languageparam
           | SCOL other_param

    tzoffsetfrom ::= k_tzoffsetfrom list_70 COL utc_offset CRLF

    tzoffsetto ::= k_tzoffsetto list_72 COL utc_offset CRLF

    tzurl ::= k_tzurl list_74 COL uri CRLF

    attendee ::= k_attendee list_75 COL cal_address CRLF

    attparam ::= SCOL cutypeparam
           | SCOL memberparam
           | SCOL roleparam
           | SCOL partstatparam
           | SCOL rsvpparam
           | SCOL deltoparam
           | SCOL delfromparam
           | SCOL sentbyparam
           | SCOL cnparam
           | SCOL dirparam
           | SCOL languageparam
           | SCOL other_param

    contact ::= k_contact list_76 COL text CRLF

    contparam ::= SCOL altrepparam
           | SCOL languageparam
           | SCOL other_param

    organizer ::= k_organizer list_77 COL cal_address CRLF

    orgparam ::= SCOL cnparam
           | SCOL dirparam
           | SCOL sentbyparam
           | SCOL languageparam
           | SCOL other_param

    recurid ::= k_recurrence_id list_78 COL date_time_date CRLF

    ridparam ::= SCOL k_value ASSIGN k_date_time
           | SCOL k_value ASSIGN k_date
           | SCOL tzidparam
           | SCOL rangeparam
           | SCOL other_param

    related ::= k_related_to list_79 COL text CRLF

    relparam ::= SCOL reltypeparam
           | SCOL other_param

    url ::= k_url list_81 COL uri CRLF

    uid ::= k_uid list_83 COL text CRLF

    exdate ::= k_exdate list_84 COL date_time_date list_86 CRLF

    exdtparam ::= SCOL k_value ASSIGN k_date_time
           | SCOL k_value ASSIGN k_date
           | SCOL tzidparam
           | SCOL other_param

    rdate ::= k_rdate list_87 COL rdtval list_89 CRLF

    rdtparam ::= SCOL k_value ASSIGN k_date_time
           | SCOL k_value ASSIGN k_date
           | SCOL k_value ASSIGN k_period
           | SCOL tzidparam
           | SCOL other_param

    rdtval ::= date_time
           | date
           | period

    date_time_date ::= date_time
           | date

    rrule ::= k_rrule list_91 COL recur CRLF

    action ::= k_action list_93 COL actionvalue CRLF

    actionvalue ::= k_audio
           | k_display
           | k_email
           | iana_token
           | x_name

    repeat_ ::= k_repeat list_95 COL integer CRLF

    trigger ::= k_trigger list_96 COL dur_value CRLF
           | k_trigger list_97 COL date_time CRLF

    trigrel ::= SCOL k_value ASSIGN k_duration
           | SCOL trigrelparam
           | SCOL other_param

    trigabs ::= SCOL k_value ASSIGN k_date_time
           | SCOL other_param

    created ::= k_created list_99 COL date_time CRLF

    dtstamp ::= k_dtstamp list_101 COL date_time CRLF

    last_mod ::= k_last_modified list_103 COL date_time CRLF

    seq ::= k_sequence list_105 COL integer CRLF

    iana_prop ::= iana_token list_107 COL value CRLF

    x_prop ::= x_name list_109 COL value CRLF

    rstatus ::= k_request_status list_110 COL statcode SCOL text opt_112 CRLF

    rstatparam ::= SCOL languageparam
           | SCOL other_param

    statcode ::= list_113 DOT list_114 opt_117

    param_name ::= iana_token
           | x_name

    param_value ::= paramtext
           | quoted_string

    paramtext ::= list_118

    quoted_string ::= DQUOTE list_119 DQUOTE

    iana_token ::= list_121

    icalparameter ::= altrepparam
           | cnparam
           | cutypeparam
           | delfromparam
           | deltoparam
           | dirparam
           | encodingparam
           | fmttypeparam
           | fbtypeparam
           | languageparam
           | memberparam
           | partstatparam
           | rangeparam
           | trigrelparam
           | reltypeparam
           | roleparam
           | rsvpparam
           | sentbyparam
           | tzidparam
           | valuetypeparam
           | other_param

    altrepparam ::= k_altrep ASSIGN DQUOTE uri DQUOTE

    cnparam ::= k_cn ASSIGN param_value

    cutypeparam ::= k_cutype ASSIGN grp_122

    delfromparam ::= k_delegated_from ASSIGN DQUOTE cal_address DQUOTE list_124

    deltoparam ::= k_delegated_to ASSIGN DQUOTE cal_address DQUOTE list_126

    dirparam ::= k_dir ASSIGN DQUOTE uri DQUOTE

    encodingparam ::= k_encoding ASSIGN grp_127

    fmttypeparam ::= k_fmttype ASSIGN type_name FSLASH subtype_name

    fbtypeparam ::= k_fbtype ASSIGN grp_128

    languageparam ::= k_language ASSIGN language

    memberparam ::= k_member ASSIGN DQUOTE cal_address DQUOTE list_130

    partstatparam ::= k_partstat ASSIGN grp_131

    rangeparam ::= k_range ASSIGN k_thisandfuture

    trigrelparam ::= k_related ASSIGN grp_132

    reltypeparam ::= k_reltype ASSIGN grp_133

    roleparam ::= k_role ASSIGN grp_134

    rsvpparam ::= k_rsvp ASSIGN grp_135

    sentbyparam ::= k_sent_by ASSIGN DQUOTE cal_address DQUOTE

    tzidparam ::= k_tzid ASSIGN opt_136 paramtext

    valuetypeparam ::= k_value ASSIGN valuetype

    valuetype ::= k_binary
           | k_boolean
           | k_cal_address
           | k_date
           | k_date_time
           | k_duration
           | k_float
           | k_integer
           | k_period
           | k_recur
           | k_text
           | k_time
           | k_uri
           | k_utc_offset
           | x_name
           | iana_token

    binary ::= b_chars opt_137

    b_chars ::= list_138

    b_end ::= ASSIGN opt_139

    bool_ ::= k_true
           | k_false

    cal_address ::= uri

    date ::= date_value

    date_time ::= date T time

    dur_value ::= MINUS P grp_140
           | opt_141 P grp_142

    float_num ::= MINUS digits opt_144
           | opt_145 digits opt_147

    digits ::= list_148

    integer ::= MINUS digits
           | opt_149 digits

    period ::= period_explicit
           | period_start

    recur ::= recur_rule_part list_151

    text ::= list_153

    time ::= time_hour time_minute time_second opt_154

    uri ::= list_155

    utc_offset ::= time_numzone

    other_param ::= iana_param
           | x_param

    iana_param ::= iana_token ASSIGN param_value list_157

    x_param ::= x_name ASSIGN param_value list_159

    type_name ::= reg_name

    subtype_name ::= reg_name

    reg_name ::= list_160

    language ::= list_161

    partstat_event ::= k_needs_action
           | k_accepted
           | k_declined
           | k_tentative
           | k_delegated
           | x_name
           | iana_token

    partstat_todo ::= k_needs_action
           | k_accepted
           | k_declined
           | k_tentative
           | k_delegated
           | k_completed
           | k_in_process
           | x_name
           | iana_token

    partstat_jour ::= k_needs_action
           | k_accepted
           | k_declined
           | x_name
           | iana_token

    b_char ::= alpha
           | digit
           | PLUS
           | FSLASH

    date_value ::= date_fullyear date_month date_mday

    date_fullyear ::= digits_2 digits_2

    date_month ::= digits_2

    date_mday ::= digits_2

    time_hour ::= digits_2

    time_minute ::= digits_2

    time_second ::= digits_2

    dur_date ::= dur_day opt_162

    dur_day ::= list_163 D

    dur_time ::= opt_164 grp_165

    dur_week ::= list_166 W

    dur_hour ::= list_167 H opt_168

    dur_minute ::= list_169 M opt_170

    dur_second ::= list_171 S

    period_explicit ::= date_time FSLASH date_time

    period_start ::= date_time FSLASH dur_value

    recur_rule_part ::= k_freq ASSIGN freq
           | k_until ASSIGN enddate
           | k_count ASSIGN count
           | k_interval ASSIGN interval
           | k_bysecond ASSIGN byseclist
           | k_byminute ASSIGN byminlist
           | k_byhour ASSIGN byhrlist
           | k_byday ASSIGN bywdaylist
           | k_bymonthday ASSIGN bymodaylist
           | k_byyearday ASSIGN byyrdaylist
           | k_byweekno ASSIGN bywknolist
           | k_bymonth ASSIGN bymolist
           | k_bysetpos ASSIGN bysplist
           | k_wkst ASSIGN weekday

    freq ::= k_secondly
           | k_minutely
           | k_hourly
           | k_daily
           | k_weekly
           | k_monthly
           | k_yearly

    enddate ::= date
           | date_time

    count ::= digits

    interval ::= digits

    byseclist ::= digits_1_2 list_173

    byminlist ::= digits_1_2 list_175

    byhrlist ::= digits_1_2 list_177

    bywdaylist ::= weekdaynum list_179

    weekdaynum ::= opt_183 weekday

    weekday ::= S U
           | M O
           | T U
           | W E
           | T H
           | F R
           | S A

    bymodaylist ::= monthdaynum list_185

    monthdaynum ::= opt_187 digits_1_2

    byyrdaylist ::= yeardaynum list_189

    yeardaynum ::= opt_191 ordyrday

    ordyrday ::= digit opt_194

    bywknolist ::= weeknum list_196

    weeknum ::= opt_198 digits_1_2

    bymolist ::= digits_1_2 list_200

    bysplist ::= yeardaynum list_202

    digits_2 ::= digit digit

    digits_1_2 ::= digit opt_203

    safe_char ::= grp_204

    value_char ::= grp_205

    qsafe_char ::= grp_206

    tsafe_char ::= grp_207

    time_numzone ::= grp_208 time_hour time_minute opt_209

    reg_name_char ::= alpha
           | digit
           | EXCLAMATION
           | HASH
           | DOLLAR
           | AMP
           | DOT
           | PLUS
           | MINUS
           | CARET
           | USCORE

    language_char ::= alpha
           | digit
           | MINUS
           | COL
           | WSP

    x_name ::= X opt_212 list_214

    alpha_num ::= alpha
           | digit

    digit ::= D0
           | D1
           | D2
           | D3
           | D4
           | D5
           | D6
           | D7
           | D8
           | D9

    alpha ::= A
           | B
           | C
           | D
           | E
           | F
           | G
           | H
           | I
           | J
           | K
           | L
           | M
           | N
           | O
           | P
           | Q
           | R
           | S
           | T
           | U
           | V
           | W
           | X
           | Y
           | Z

    k_accepted ::= A C C E P T E D

    k_action ::= A C T I O N

    k_address ::= A D D R E S S

    k_altrep ::= A L T R E P

    k_attach ::= A T T A C H

    k_attendee ::= A T T E N D E E

    k_audio ::= A U D I O

    k_base ::= B A S E

    k_begin ::= B E G I N

    k_binary ::= B I N A R Y

    k_bit ::= B I T

    k_boolean ::= B O O L E A N

    k_busy ::= B U S Y

    k_busy_unavailable ::= B U S Y MINUS U N A V A I L A B L E

    k_busy_tentative ::= B U S Y MINUS T E N T A T I V E

    k_byday ::= B Y D A Y

    k_byhour ::= B Y H O U R

    k_byminute ::= B Y M I N U T E

    k_bymonth ::= B Y M O N T H

    k_bymonthday ::= B Y M O N T H D A Y

    k_bysecond ::= B Y S E C O N D

    k_bysetpos ::= B Y S E T P O S

    k_byweekno ::= B Y W E E K N O

    k_byyearday ::= B Y Y E A R D A Y

    k_cal_address ::= C A L MINUS A D D R E S S

    k_calscale ::= C A L S C A L E

    k_cancelled ::= C A N C E L L E D

    k_categories ::= C A T E G O R I E S

    k_chair ::= C H A I R

    k_child ::= C H I L D

    k_class ::= C L A S S

    k_cn ::= C N

    k_comment ::= C O M M E N T

    k_completed ::= C O M P L E T E D

    k_confidential ::= C O N F I D E N T I A L

    k_confirmed ::= C O N F I R M E D

    k_contact ::= C O N T A C T

    k_count ::= C O U N T

    k_created ::= C R E A T E D

    k_cutype ::= C U T Y P E

    k_daily ::= D A I L Y

    k_date ::= D A T E

    k_date_time ::= D A T E MINUS T I M E

    k_daylight ::= D A Y L I G H T

    k_declined ::= D E C L I N E D

    k_delegated ::= D E L E G A T E D

    k_delegated_from ::= D E L E G A T E D MINUS F R O M

    k_delegated_to ::= D E L E G A T E D MINUS T O

    k_description ::= D E S C R I P T I O N

    k_dir ::= D I R

    k_display ::= D I S P L A Y

    k_draft ::= D R A F T

    k_dtend ::= D T E N D

    k_dtstamp ::= D T S T A M P

    k_dtstart ::= D T S T A R T

    k_due ::= D U E

    k_duration ::= D U R A T I O N

    k_email ::= E M A I L

    k_encoding ::= E N C O D I N G

    k_end ::= E N D

    k_exdate ::= E X D A T E

    k_false ::= F A L S E

    k_fbtype ::= F B T Y P E

    k_final ::= F I N A L

    k_float ::= F L O A T

    k_fmttype ::= F M T T Y P E

    k_fr ::= F R

    k_free ::= F R E E

    k_freebusy ::= F R E E B U S Y

    k_freq ::= F R E Q

    k_geo ::= G E O

    k_gregorian ::= G R E G O R I A N

    k_group ::= G R O U P

    k_hourly ::= H O U R L Y

    k_in_process ::= I N MINUS P R O C E S S

    k_individual ::= I N D I V I D U A L

    k_integer ::= I N T E G E R

    k_interval ::= I N T E R V A L

    k_language ::= L A N G U A G E

    k_last_modified ::= L A S T MINUS M O D I F I E D

    k_location ::= L O C A T I O N

    k_member ::= M E M B E R

    k_method ::= M E T H O D

    k_minutely ::= M I N U T E L Y

    k_mo ::= M O

    k_monthly ::= M O N T H L Y

    k_needs_action ::= N E E D S MINUS A C T I O N

    k_non_participant ::= N O N MINUS P A R T I C I P A N T

    k_opaque ::= O P A Q U E

    k_opt_participant ::= O P T MINUS P A R T I C I P A N T

    k_organizer ::= O R G A N I Z E R

    k_parent ::= P A R E N T

    k_participant ::= P A R T I C I P A N T

    k_partstat ::= P A R T S T A T

    k_percent_complete ::= P E R C E N T MINUS C O M P L E T E

    k_period ::= P E R I O D

    k_priority ::= P R I O R I T Y

    k_private ::= P R I V A T E

    k_process ::= P R O C E S S

    k_prodid ::= P R O D I D

    k_public ::= P U B L I C

    k_range ::= R A N G E

    k_rdate ::= R D A T E

    k_recur ::= R E C U R

    k_recurrence_id ::= R E C U R R E N C E MINUS I D

    k_relat ::= R E L A T

    k_related ::= R E L A T E D

    k_related_to ::= R E L A T E D MINUS T O

    k_reltype ::= R E L T Y P E

    k_repeat ::= R E P E A T

    k_req_participant ::= R E Q MINUS P A R T I C I P A N T

    k_request_status ::= R E Q U E S T MINUS S T A T U S

    k_resource ::= R E S O U R C E

    k_resources ::= R E S O U R C E S

    k_role ::= R O L E

    k_room ::= R O O M

    k_rrule ::= R R U L E

    k_rsvp ::= R S V P

    k_sa ::= S A

    k_secondly ::= S E C O N D L Y

    k_sent_by ::= S E N T MINUS B Y

    k_sequence ::= S E Q U E N C E

    k_sibling ::= S I B L I N G

    k_standard ::= S T A N D A R D

    k_start ::= S T A R T

    k_status ::= S T A T U S

    k_su ::= S U

    k_summary ::= S U M M A R Y

    k_tentative ::= T E N T A T I V E

    k_text ::= T E X T

    k_th ::= T H

    k_thisandfuture ::= T H I S A N D F U T U R E

    k_time ::= T I M E

    k_transp ::= T R A N S P

    k_transparent ::= T R A N S P A R E N T

    k_trigger ::= T R I G G E R

    k_true ::= T R U E

    k_tu ::= T U

    k_tzid ::= T Z I D

    k_tzname ::= T Z N A M E

    k_tzoffsetfrom ::= T Z O F F S E T F R O M

    k_tzoffsetto ::= T Z O F F S E T T O

    k_tzurl ::= T Z U R L

    k_uid ::= U I D

    k_unknown ::= U N K N O W N

    k_until ::= U N T I L

    k_uri ::= U R I

    k_url ::= U R L

    k_utc_offset ::= U T C MINUS O F F S E T

    k_valarm ::= V A L A R M

    k_value ::= V A L U E

    k_vcalendar ::= V C A L E N D A R

    k_version ::= V E R S I O N

    k_vevent ::= V E V E N T

    k_vfreebusy ::= V F R E E B U S Y

    k_vjournal ::= V J O U R N A L

    k_vtimezone ::= V T I M E Z O N E

    k_vtodo ::= V T O D O

    k_we ::= W E

    k_weekly ::= W E E K L Y

    k_wkst ::= W K S T

    k_yearly ::= Y E A R L Y

    list_1 ::= $empty | list_1 CRLF

    list_2 ::= CRLF | list_2 CRLF

    seq_3 ::= list_2 icalobject

    list_4 ::= $empty | list_4 seq_3

    list_5 ::= $empty | list_5 CRLF

    list_6 ::= $empty | list_6 calprop

    list_7 ::= $empty
           | component
           | list_7 component

    seq_8 ::= SCOL other_param

    list_9 ::= $empty | list_9 seq_8

    seq_10 ::= SCOL other_param

    list_11 ::= $empty | list_11 seq_10

    seq_12 ::= SCOL other_param

    list_13 ::= $empty | list_13 seq_12

    seq_14 ::= SCOL other_param

    list_15 ::= $empty | list_15 seq_14

    list_16 ::= contentline | list_16 contentline

    list_17 ::= contentline | list_17 contentline

    seq_18 ::= SCOL icalparameter

    list_19 ::= $empty | list_19 seq_18

    list_20 ::= $empty | list_20 value_char

    list_21 ::= $empty | list_21 eventprop

    list_22 ::= $empty | list_22 alarmc

    list_23 ::= $empty | list_23 todoprop

    list_24 ::= $empty | list_24 alarmc

    list_25 ::= $empty | list_25 jourprop

    list_26 ::= $empty | list_26 fbprop

    list_27 ::= $empty | list_27 timezoneprop

    list_28 ::= alarmprop | list_28 alarmprop

    list_29 ::= $empty | list_29 tzprop

    list_30 ::= $empty | list_30 tzprop

    list_31 ::= $empty | list_31 attachparam

    grp_32 ::= binary | uri

    list_33 ::= $empty | list_33 catparam

    seq_34 ::= COMMA text

    list_35 ::= $empty | list_35 seq_34

    seq_36 ::= SCOL other_param

    list_37 ::= $empty | list_37 seq_36

    list_38 ::= $empty | list_38 commparam

    list_39 ::= $empty | list_39 descparam

    seq_40 ::= SCOL other_param

    list_41 ::= $empty | list_41 seq_40

    list_42 ::= $empty | list_42 locparam

    seq_43 ::= SCOL other_param

    list_44 ::= $empty | list_44 seq_43

    seq_45 ::= SCOL other_param

    list_46 ::= $empty | list_46 seq_45

    list_47 ::= $empty | list_47 resrcparam

    seq_48 ::= COMMA text

    list_49 ::= $empty | list_49 seq_48

    seq_50 ::= SCOL other_param

    list_51 ::= $empty | list_51 seq_50

    list_52 ::= $empty | list_52 summparam

    seq_53 ::= SCOL other_param

    list_54 ::= $empty | list_54 seq_53

    list_55 ::= $empty | list_55 dtendparam

    list_56 ::= $empty | list_56 dueparam

    list_57 ::= $empty | list_57 dtstparam

    seq_58 ::= SCOL other_param

    list_59 ::= $empty | list_59 seq_58

    list_60 ::= $empty | list_60 fbparam

    seq_61 ::= COMMA period

    list_62 ::= $empty | list_62 seq_61

    seq_63 ::= SCOL other_param

    list_64 ::= $empty | list_64 seq_63

    seq_65 ::= SCOL other_param

    list_66 ::= $empty | list_66 seq_65

    opt_67 ::= FSLASH | $empty

    list_68 ::= $empty | list_68 tznparam

    seq_69 ::= SCOL other_param

    list_70 ::= $empty | list_70 seq_69

    seq_71 ::= SCOL other_param

    list_72 ::= $empty | list_72 seq_71

    seq_73 ::= SCOL other_param

    list_74 ::= $empty | list_74 seq_73

    list_75 ::= $empty | list_75 attparam

    list_76 ::= $empty | list_76 contparam

    list_77 ::= $empty | list_77 orgparam

    list_78 ::= $empty | list_78 ridparam

    list_79 ::= $empty | list_79 relparam

    seq_80 ::= SCOL other_param

    list_81 ::= $empty | list_81 seq_80

    seq_82 ::= SCOL other_param

    list_83 ::= $empty | list_83 seq_82

    list_84 ::= $empty | list_84 exdtparam

    seq_85 ::= COMMA date_time_date

    list_86 ::= $empty | list_86 seq_85

    list_87 ::= $empty | list_87 rdtparam

    seq_88 ::= COMMA rdtval

    list_89 ::= $empty | list_89 seq_88

    seq_90 ::= SCOL other_param

    list_91 ::= $empty | list_91 seq_90

    seq_92 ::= SCOL other_param

    list_93 ::= $empty | list_93 seq_92

    seq_94 ::= SCOL other_param

    list_95 ::= $empty | list_95 seq_94

    list_96 ::= $empty | list_96 trigrel

    list_97 ::= $empty | list_97 trigabs

    seq_98 ::= SCOL other_param

    list_99 ::= $empty | list_99 seq_98

    seq_100 ::= SCOL other_param

    list_101 ::= $empty | list_101 seq_100

    seq_102 ::= SCOL other_param

    list_103 ::= $empty | list_103 seq_102

    seq_104 ::= SCOL other_param

    list_105 ::= $empty | list_105 seq_104

    seq_106 ::= SCOL icalparameter

    list_107 ::= $empty | list_107 seq_106

    seq_108 ::= SCOL icalparameter

    list_109 ::= $empty | list_109 seq_108

    list_110 ::= $empty | list_110 rstatparam

    seq_111 ::= SCOL text

    opt_112 ::= seq_111 | $empty

    list_113 ::= digit | list_113 digit

    list_114 ::= digit | list_114 digit

    list_115 ::= digit | list_115 digit

    seq_116 ::= DOT list_115

    opt_117 ::= seq_116 | $empty

    list_118 ::= $empty | list_118 safe_char

    list_119 ::= $empty | list_119 qsafe_char

    grp_120 ::= alpha | MINUS

    list_121 ::= grp_120 | list_121 grp_120

    grp_122 ::= k_individual | k_group | k_resource | k_room | k_unknown | x_name | iana_token

    seq_123 ::= COMMA DQUOTE cal_address DQUOTE

    list_124 ::= $empty | list_124 seq_123

    seq_125 ::= COMMA DQUOTE cal_address DQUOTE

    list_126 ::= $empty | list_126 seq_125

    grp_127 ::= D8 k_bit | k_base D6 D4

    grp_128 ::= k_free | k_busy | k_busy_unavailable | k_busy_tentative | x_name | iana_token

    seq_129 ::= COMMA DQUOTE cal_address DQUOTE

    list_130 ::= $empty | list_130 seq_129

    grp_131 ::= partstat_event | partstat_todo | partstat_jour

    grp_132 ::= k_start | k_end

    grp_133 ::= k_parent | k_child | k_sibling | x_name | iana_token

    grp_134 ::= k_chair | k_req_participant | k_opt_participant | k_non_participant | iana_token | x_name

    grp_135 ::= k_true | k_false

    opt_136 ::= FSLASH | $empty

    opt_137 ::= b_end | $empty

    list_138 ::= $empty | list_138 b_char

    opt_139 ::= ASSIGN | $empty

    grp_140 ::= dur_date | dur_time | dur_week

    opt_141 ::= PLUS | $empty

    grp_142 ::= dur_date | dur_time | dur_week

    seq_143 ::= DOT digits

    opt_144 ::= seq_143 | $empty

    opt_145 ::= PLUS | $empty

    seq_146 ::= DOT digits

    opt_147 ::= seq_146 | $empty

    list_148 ::= digit | list_148 digit

    opt_149 ::= PLUS | $empty

    seq_150 ::= SCOL recur_rule_part

    list_151 ::= $empty | list_151 seq_150

    grp_152 ::= tsafe_char | COL | DQUOTE | ESCAPED_CHAR

    list_153 ::= $empty | list_153 grp_152

    opt_154 ::= Z | $empty

    list_155 ::= qsafe_char | list_155 qsafe_char

    seq_156 ::= COMMA param_value

    list_157 ::= $empty | list_157 seq_156

    seq_158 ::= COMMA param_value

    list_159 ::= $empty | list_159 seq_158

    list_160 ::= reg_name_char | list_160 reg_name_char

    list_161 ::= language_char | list_161 language_char

    opt_162 ::= dur_time | $empty

    list_163 ::= digit | list_163 digit

    opt_164 ::= T | $empty

    grp_165 ::= dur_hour | dur_minute | dur_second

    list_166 ::= digit | list_166 digit

    list_167 ::= digit | list_167 digit

    opt_168 ::= dur_minute | $empty

    list_169 ::= digit | list_169 digit

    opt_170 ::= dur_second | $empty

    list_171 ::= digit | list_171 digit

    seq_172 ::= COMMA digits_1_2

    list_173 ::= $empty | list_173 seq_172

    seq_174 ::= COMMA digits_1_2

    list_175 ::= $empty | list_175 seq_174

    seq_176 ::= COMMA digits_1_2

    list_177 ::= $empty | list_177 seq_176

    seq_178 ::= COMMA weekdaynum

    list_179 ::= $empty | list_179 seq_178

    grp_181 ::= PLUS | MINUS

    opt_182 ::= grp_181 | $empty

    grp_180 ::= opt_182 digits_1_2

    opt_183 ::= grp_180 | $empty

    seq_184 ::= COMMA monthdaynum

    list_185 ::= $empty | list_185 seq_184

    grp_186 ::= PLUS | MINUS

    opt_187 ::= grp_186 | $empty

    seq_188 ::= COMMA yeardaynum

    list_189 ::= $empty | list_189 seq_188

    grp_190 ::= PLUS | MINUS

    opt_191 ::= grp_190 | $empty

    opt_192 ::= digit | $empty

    seq_193 ::= digit opt_192

    opt_194 ::= seq_193 | $empty

    seq_195 ::= COMMA weeknum

    list_196 ::= $empty | list_196 seq_195

    grp_197 ::= PLUS | MINUS

    opt_198 ::= grp_197 | $empty

    seq_199 ::= COMMA digits_1_2

    list_200 ::= $empty | list_200 seq_199

    seq_201 ::= COMMA yeardaynum

    list_202 ::= $empty | list_202 seq_201

    opt_203 ::= digit | $empty

    grp_204 ::= CRLF | CONTROL | DQUOTE | SCOL | COL | COMMA

    grp_205 ::= CRLF | CONTROL | ESCAPED_CHAR

    grp_206 ::= CRLF | CONTROL | DQUOTE

    grp_207 ::= alpha
           | digit
           | WSP
           | EXCLAMATION
           | HASH
           | DOLLAR
           | AMP
           | FSLASH
           | PLUS
           | MINUS
           | USCORE
           | LPAREN
           | RPAREN
           | STAR
           | ASSIGN
           | AT
           | PERCENT
           | TILDE
           | VERTICAL_BAR
           | COMMA
           | DOT

    grp_208 ::= PLUS | MINUS

    opt_209 ::= time_second | $empty

    list_210 ::= alpha_num | list_210 alpha_num

    seq_211 ::= alpha_num alpha_num list_210 MINUS

    opt_212 ::= seq_211 | $empty

    grp_213 ::= alpha_num | MINUS

    list_214 ::= grp_213 | list_214 grp_213

%End
