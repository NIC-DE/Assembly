     AREA video_example, CODE, READONLY
	    EXPORT main	
	    ENTRY 
main		
 	    MOV R1, #1
        MOV R2, #2
		MOV R3, R2
		ADD R4, R1, R2
		ADD R4, R3
FIN     B  FIN
        END