-- AUTO-GENERATED from antlr/grammars-v4 tnsnames by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=TnsnamesParser
%options package=lpg.grammars.tnsnames
%options template=dtParserTemplateF.gi
%options import_terminals=TnsnamesLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    tnsnames
%End

%Rules

    tnsnames ::= list_2

    tns_entry ::= alias_list EQ grp_3

    ifile ::= IFILE EQ STRING

    lsnr_entry ::= alias EQ grp_4

    lsnr_description ::= LPAREN DESCRIPTION EQ grp_6 RPAREN

    alias_list ::= alias list_9

    alias ::= IDENTIFIER
           | IDENTIFIER list_11

    description_list ::= LPAREN DESCRIPTION_LIST EQ opt_12 list_13 opt_14 RPAREN

    dl_params ::= list_15

    dl_parameter ::= al_failover
           | al_load_balance
           | al_source_route

    description ::= LPAREN DESCRIPTION EQ opt_16 grp_17 opt_19 connect_data opt_20 RPAREN

    d_params ::= list_21

    d_parameter ::= d_enable
           | al_failover
           | al_load_balance
           | d_sdu
           | d_recv_buf
           | d_send_buf
           | al_source_route
           | d_service_type
           | d_security
           | d_conn_timeout
           | d_retry_count
           | d_tct

    d_enable ::= LPAREN ENABLE EQ BROKEN RPAREN

    d_sdu ::= LPAREN SDU EQ NUMBER RPAREN

    d_recv_buf ::= LPAREN RECV_BUF EQ NUMBER RPAREN

    d_send_buf ::= LPAREN SEND_BUF EQ NUMBER RPAREN

    d_service_type ::= LPAREN SERVICE_TYPE EQ IDENTIFIER RPAREN

    d_security ::= LPAREN SECURITY EQ ds_parameter RPAREN

    d_conn_timeout ::= LPAREN CONN_TIMEOUT EQ NUMBER RPAREN

    d_retry_count ::= LPAREN RETRY_COUNT EQ NUMBER RPAREN

    d_tct ::= LPAREN TCT EQ NUMBER RPAREN

    ds_parameter ::= LPAREN SSL_CERT EQ DQ_STRING RPAREN

    address_list ::= LPAREN ADDRESS_LIST EQ opt_22 list_23 opt_24 RPAREN

    al_params ::= list_25

    al_parameter ::= al_failover
           | al_load_balance
           | al_source_route

    al_failover ::= LPAREN FAILOVER EQ grp_26 RPAREN

    al_load_balance ::= LPAREN LOAD_BALANCE EQ grp_27 RPAREN

    al_source_route ::= LPAREN SOURCE_ROUTE EQ grp_28 RPAREN

    address ::= LPAREN ADDRESS EQ protocol_info opt_29 RPAREN

    a_params ::= list_30

    a_parameter ::= d_send_buf
           | d_recv_buf

    protocol_info ::= tcp_protocol
           | ipc_protocol
           | spx_protocol
           | nmp_protocol
           | beq_protocol

    tcp_protocol ::= tcp_params

    tcp_params ::= list_31

    tcp_parameter ::= tcp_host
           | tcp_port
           | tcp_tcp

    tcp_host ::= LPAREN HOST EQ host RPAREN

    tcp_port ::= LPAREN PORT EQ port RPAREN

    tcp_tcp ::= LPAREN PROTOCOL EQ TCP RPAREN

    host ::= IDENTIFIER
           | IDENTIFIER list_33
           | IP

    port ::= NUMBER

    ipc_protocol ::= ipc_params

    ipc_params ::= list_34

    ipc_parameter ::= ipc_ipc
           | ipc_key

    ipc_ipc ::= LPAREN PROTOCOL EQ IPC RPAREN

    ipc_key ::= LPAREN KEY EQ IDENTIFIER RPAREN

    spx_protocol ::= spx_params

    spx_params ::= list_35

    spx_parameter ::= spx_spx
           | spx_service

    spx_spx ::= LPAREN PROTOCOL EQ SPX RPAREN

    spx_service ::= LPAREN SERVICE EQ IDENTIFIER RPAREN

    nmp_protocol ::= nmp_params

    nmp_params ::= list_36

    nmp_parameter ::= nmp_nmp
           | nmp_server
           | nmp_pipe

    nmp_nmp ::= LPAREN PROTOCOL EQ NMP RPAREN

    nmp_server ::= LPAREN SERVER EQ IDENTIFIER RPAREN

    nmp_pipe ::= LPAREN PIPE EQ IDENTIFIER RPAREN

    beq_protocol ::= beq_params

    beq_params ::= list_37

    beq_parameter ::= beq_beq
           | beq_program
           | beq_argv0
           | beq_args

    beq_beq ::= LPAREN PROTOCOL EQ BEQ RPAREN

    beq_program ::= LPAREN PROGRAM EQ IDENTIFIER RPAREN

    beq_argv0 ::= LPAREN ARGV0 EQ IDENTIFIER RPAREN

    beq_args ::= LPAREN ARGS EQ ba_parameter RPAREN

    ba_parameter ::= S_QUOTE ba_description S_QUOTE

    ba_description ::= LPAREN DESCRIPTION EQ bad_params RPAREN

    bad_params ::= list_38

    bad_parameter ::= bad_local
           | bad_address

    bad_local ::= LPAREN LOCAL EQ YES_NO RPAREN

    bad_address ::= LPAREN ADDRESS EQ beq_beq RPAREN

    connect_data ::= LPAREN CONNECT_DATA EQ cd_params RPAREN

    cd_params ::= list_39

    cd_parameter ::= cd_service_name
           | cd_sid
           | cd_instance_name
           | cd_failover_mode
           | cd_global_name
           | cd_hs
           | cd_rdb_database
           | cd_server
           | cd_ur

    cd_service_name ::= LPAREN SERVICE_NAME EQ IDENTIFIER list_41 RPAREN

    cd_sid ::= LPAREN SID EQ IDENTIFIER RPAREN

    cd_instance_name ::= LPAREN INSTANCE_NAME EQ IDENTIFIER list_43 RPAREN

    cd_failover_mode ::= LPAREN FAILOVER_MODE EQ fo_params RPAREN

    cd_global_name ::= LPAREN GLOBAL_NAME EQ IDENTIFIER list_45 RPAREN

    cd_hs ::= LPAREN HS EQ OK RPAREN

    cd_rdb_database ::= LPAREN RDB_DATABASE EQ opt_47 IDENTIFIER list_49 RPAREN

    cd_server ::= LPAREN SERVER EQ grp_50 RPAREN

    cd_ur ::= LPAREN UR EQ UR_A RPAREN

    fo_params ::= list_51

    fo_parameter ::= fo_type
           | fo_backup
           | fo_method
           | fo_retries
           | fo_delay

    fo_type ::= LPAREN TYPE EQ grp_52 RPAREN

    fo_backup ::= LPAREN BACKUP EQ IDENTIFIER list_54 RPAREN

    fo_method ::= LPAREN METHOD EQ grp_55 RPAREN

    fo_retries ::= LPAREN RETRIES EQ NUMBER RPAREN

    fo_delay ::= LPAREN DELAY EQ NUMBER RPAREN

    grp_1 ::= tns_entry | ifile | lsnr_entry

    list_2 ::= $empty | list_2 grp_1

    grp_3 ::= description_list | description

    list_5 ::= address | list_5 address

    grp_4 ::= lsnr_description | address_list | list_5

    list_7 ::= address | list_7 address

    grp_6 ::= address_list | list_7

    seq_8 ::= COMMA alias

    list_9 ::= $empty | list_9 seq_8

    seq_10 ::= DOT IDENTIFIER

    list_11 ::= seq_10 | list_11 seq_10

    opt_12 ::= dl_params | $empty

    list_13 ::= description | list_13 description

    opt_14 ::= dl_params | $empty

    list_15 ::= dl_parameter | list_15 dl_parameter

    opt_16 ::= d_params | $empty

    list_18 ::= address | list_18 address

    grp_17 ::= address_list | list_18

    opt_19 ::= d_params | $empty

    opt_20 ::= d_params | $empty

    list_21 ::= d_parameter | list_21 d_parameter

    opt_22 ::= al_params | $empty

    list_23 ::= address | list_23 address

    opt_24 ::= al_params | $empty

    list_25 ::= al_parameter | list_25 al_parameter

    grp_26 ::= YES_NO | ON_OFF | TRUE_FALSE

    grp_27 ::= YES_NO | ON_OFF | TRUE_FALSE

    grp_28 ::= YES_NO | ON_OFF

    opt_29 ::= a_params | $empty

    list_30 ::= a_parameter | list_30 a_parameter

    list_31 ::= tcp_parameter | list_31 tcp_parameter

    seq_32 ::= DOT IDENTIFIER

    list_33 ::= seq_32 | list_33 seq_32

    list_34 ::= ipc_parameter | list_34 ipc_parameter

    list_35 ::= spx_parameter | list_35 spx_parameter

    list_36 ::= nmp_parameter | list_36 nmp_parameter

    list_37 ::= beq_parameter | list_37 beq_parameter

    list_38 ::= bad_parameter | list_38 bad_parameter

    list_39 ::= cd_parameter | list_39 cd_parameter

    seq_40 ::= DOT IDENTIFIER

    list_41 ::= $empty | list_41 seq_40

    seq_42 ::= DOT IDENTIFIER

    list_43 ::= $empty | list_43 seq_42

    seq_44 ::= DOT IDENTIFIER

    list_45 ::= $empty | list_45 seq_44

    seq_46 ::= L_SQUARE DOT IDENTIFIER R_SQUARE

    opt_47 ::= seq_46 | $empty

    seq_48 ::= DOT IDENTIFIER

    list_49 ::= $empty | list_49 seq_48

    grp_50 ::= DEDICATED | SHARED | POOLED

    list_51 ::= fo_parameter | list_51 fo_parameter

    grp_52 ::= SESSION | SELECT | NONE

    seq_53 ::= DOT IDENTIFIER

    list_54 ::= $empty | list_54 seq_53

    grp_55 ::= BASIC | PRECONNECT

%End
