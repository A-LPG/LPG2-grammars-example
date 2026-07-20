start LDY #$FF
loop1 LDX #$FF
    INX
    BNE loop1
    INY
    BNE start
    RTS
