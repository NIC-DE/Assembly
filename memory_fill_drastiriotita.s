AREA |.text|, CODE, READONLY
ENTRY

; Define constants for RAM addresses
RAM1_ADDR EQU 0x20000100
RAM2_ADDR EQU 0x20000200

main
    ; Load initial values into registers
    LDR R3, =0x01BEADED
    LDR R4, =0x02BEADED
    LDR R5, =0x03BEADED
    LDR R6, =0x04BEADED
    LDR R7, =0x05BEADED

    ; Fill RAM1 with values
    LDR R1, =RAM1_ADDR
    MOV R0, #10 ; Initialize counter

Fill_RAM1
    STR R3, [R1], #4 ; Store value in memory and increment pointer
    SUBS R0, R0, #1   ; Decrease counter
    BNE Fill_RAM1     ; Repeat until R0 becomes zero

    ; Fill RAM2 with values
    LDR R2, =RAM2_ADDR
    MOV R0, #10 ; Initialize counter

Fill_RAM2
    STR R4, [R2], #4 ; Store value in memory and increment pointer
    SUBS R0, R0, #1   ; Decrease counter
    BNE Fill_RAM2     ; Repeat until R0 becomes zero

Stop B Stop

END
