AREA program,CODE,READONLY
ENTRY
EXPORT main

main
    LDR R0, =VALUE      
    MOV R1, #0x20       
    MOV R2, #0x00000000 
    MOV R3, #0x00000000 
    MOV R9, #0x00000002 

label
    CMP R9, #0          
    BEQ END_PROGRAM     
    LDR R4, [R0], #4    
    MOV R1, #0x20       

inner_loop
    CMP R1, #0          
    BEQ next_value      
    MOVS R4, R4, RRX    
    ADDCS R2, R2, #0x01 
    ADDCC R3, R3, #0x01 
    SUBS R1, R1, #0x01  
    B inner_loop        

next_value
    SUBS R9, R9, #0x01  
    B label             

END_PROGRAM

AREA program, DATA, READONLY
VALUE DCD 0xAA55AA55, 0x55AA55AA   
END
