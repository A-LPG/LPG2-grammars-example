-- TCP header Parser (LPG)

%Options la=2
%Options fp=TcpParser
%options package=lpg.grammars.tcpheader
%options template=dtParserTemplateF.gi
%options import_terminals=TcpLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    segmentheader
%End

%Rules
    segmentheader ::= sourceport destinationport sequencenumber acknumber flags windowsize checksum urgent

    sourceport ::= word_
    destinationport ::= word_
    sequencenumber ::= dword_
    acknumber ::= dword_
    flags ::= word_
    windowsize ::= word_
    checksum ::= word_
    urgent ::= word_

    dword_ ::= BYTE BYTE BYTE BYTE
    word_ ::= BYTE BYTE
%End
