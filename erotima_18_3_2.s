RAM1_ADDR  EQU  0x20000004
	
	AREA third, CODE, READONLY
		ENTRY
		EXPORT main

main
   
        LDR  R1,=RAM1_ADDR
		LDR  R2,[R1],#4
		LDR  R2,[R1,#4]
		LDR  R2,[R1,#4]!
		
		
Stop    B  Stop

        END