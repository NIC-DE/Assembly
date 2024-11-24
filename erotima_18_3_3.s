    AREA third,CODE,READONLY ;STORE DATA IN MEMORY
		
    ENTRY
    EXPORT main

main 
RAM1_ADDR  EQU 0x20000120
RAM2_ADDR  EQU 0x20000133

FILL   LDR R1,=RAM1_ADDR      ; Load RAM1_ADDR into R1
       MOV R0,#20             ; Set counter R0 to 20
       MOV R2,#0              ; Initialize R2 to 0

L1     STR R2,[R1]            ; Store the value of R2 in memory
       ADD R1,R1,#4           ; Increment the address by 4 bytes
       ADD R2,R2,#1           ; Increment R2 by 1
       SUBS R0,R0,#1          ; Decrease the counter by 1
       BNE L1                 ; Repeat until R0 is 0

Stop   B  Stop                 ; Halt execution

       END 
