;P = Q + S +R 
;Q=2, R=4, S=5 
 AREA example, CODE,READONLY 
 ENTRY 
 EXPORT __main 
 
__main  

        ADRL R4,Vals ; R4 points to vals area 
        LDR R1,[R4,#Q] ; load Q=2 to R1 
        LDR R2,[R4,#R] ; load R=4 to R2 
        LDR R3,[R4,#S] ; load  S=5 to R3    
        ADD R0,R1,R2 
        ADD R0,R0,R3 
        LDR R5,=0x20000020 
        STR R0,[R5,#P]  
Stop    B Stop  
P       EQU 0 
Q       EQU 4 
R       EQU 8 
S       EQU 12 
	

 AREA example, DATA, READWRITE 
   ;Allocate the following in SRAM memory 
   
Vals SPACE 4 ;Reserve 4 bytes of memory 
     DCD 2 
     DCD 4 
     DCD 5 
     ALIGN 
     END 