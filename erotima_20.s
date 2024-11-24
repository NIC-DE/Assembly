VAL0   RN R0
VAL1   RN R1

       AREA second,CODE, READONLY
       ENTRY  
       EXPORT main
	   
main			
       LDR  VAL0,=0xBABEFACE
       LDR  VAL1,=0xDEADBEEF
       EOR  VAL0,VAL0,VAL1
       EOR  VAL1,VAL0,VAL1
       EOR  VAL0,VAL0,VAL1

Stop   B Stop
       ALIGN
       END
