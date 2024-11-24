    AREA my_code, CODE, READONLY

    EXPORT main
    ENTRY

main
    ; Load base address of the array
    LDR r1, =0x20000029     ; Address of the array
    LDR r0, =0x20000200    ; Address to store the result
    MOV r8, #10             ; Initialize loop counter to 10
    MOV r7, #0              ; Initialize sum to zero

L1  
    ; Load elements from the array
    LDRH r5, [r1], #2       ; Load a 16-bit element from the array, increment pointer

    ; Add element to the sum
    ADD r7, r7, r5          ; Sum of elements

    ; Decrement loop counter
    SUBS r8, r8, #1 
    BNE L1                  ; Continue loop if counter not zero

    ; Store the result
    STR r7, [r0]            ; Store result to the starting address
	
stop
    B stop                  ; Infinite loop to halt execution    

    END
