                AREA my_code, CODE, READONLY

                EXPORT main
	
	            ENTRY
	
	
main

                LDR r1,=array1
                LDR r2,=array2
                LDR r0,=result 
				
L1              LDR r5,[r1],#4
                LDR r6,[r2],#4
                ADD r7,r5,r6
                STR r7,[r0],#4   
                SUBS r8,#4
                BNE L1
				
stop            B  stop	

                AREA block, DATA, READWRITE
array1          DCD 1, 2, 3, 4, 5
array2          DCD 6, 7, 8, 9, 10
result          DCD 0, 0, 0, 0, 0  
	
                END	