reset JMP main
main LDA #$00
    TAX
    INX
    BNE main
    RTS
