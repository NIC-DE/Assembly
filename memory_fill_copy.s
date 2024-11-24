RAM1_ADDR EQU 0x20000004
RAM2_ADDR EQU 0x20000200

    AREA third, CODE, READONLY
    ENTRY
    EXPORT __main

__main
    LDR R1, =RAM1_ADDR
    MOV R0, #5
    LDR R2, =0xDEADBE01
    STR R2, [R1], #4
    LDR R2, =0xDEADBE02
    STR R2, [R1], #4
    LDR R2, =0xDEADBE03
    STR R2, [R1], #4
    LDR R2, =0xDEADBE04
    STR R2, [R1], #4
    LDR R2, =0xDEADBE05
    STR R2, [R1], #4
	
    LDR  R1,=RAM1_ADDR
    LDR  R2,[R1],#4
    LDR  R2,[R1,#4]
    LDR  R2,[R1,#4]!	
	
Stop    B Stop

    END
