
.globl main

.text
main:

li$t0,0
li$t1,1
li$t2,10

loop:

add $t0,$t0,$t1
addi $t1,$t1,1
bne $t1,$t2,loop

# Printing out the number
    li $v0, 1
    move $a0, $t0
    syscall



li $v0, 10

syscall