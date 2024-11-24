 AREA MyProgram, CODE, READONLY
ENTRY
 export main

main
    LDR R0, =dedomena
    LDR R1, =0x20000100
    LDR R2, =0x2000010F
    MOV R3, #0
	

find_min_max
    CMP R3, #6
    BEQ end_program

    LDR R4, [R0], #4

    LDR R5, [R1]
    CMP R4, R5
    MOVLT R6, R4
	STR R6, [R1]
    LDR R5, [R2]
    CMP R4, R5
    MOVGT R7, R4
    STR R7, [R2]
    ADD R3, R3, #1
    B find_min_max

end_program
   
    

    AREA mydata, DATA, READWRITE
dedomena    DCD 0x55,0x88,0x33,0x77,0x44,0x66
    END
