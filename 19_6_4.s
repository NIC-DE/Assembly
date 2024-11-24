    AREA MyProgram, CODE, READONLY
    EXPORT main
		
		
    ENTRY



main
    ; Initialize registers and memory
    LDR r0, =IntArray     ; Load the base address of the array into r0
    LDR r1, =0            ; Initialize the sum to zero
    LDR r2, =9           ; Initialize the counter to 10

add_loop
    LDRH r3, [r0], #2     ; Load a 16-bit value from memory into r3, increment memory pointer
    ADD r1, r1, r3        ; Add the value to the sum
    SUBS r2, r2, #1       ; Decrement the counter
    BNE add_loop          ; Continue loop if counter not zero

    ; Store the result to memory address 0x20000004
    LDR r0, =0x20000004   ; Load the address where the result will be stored
    STR r1, [r0]          ; Store the sum to memory

stop
    B stop                ; Infinite loop to halt execution

    AREA MyData, DATA, READWRITE
    ALIGN                  ; Align the start of the array to a word boundary

IntArray
    DCD 1, 2, 3, 4, 5, 6, 7, 8, 9, 10  ; Array of 10 2-byte integers

    END
