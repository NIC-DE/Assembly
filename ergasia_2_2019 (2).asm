
.globl main

.text

main:

li $t1,11
li $t4,1
li $t2,1

loop:

sll $t3, $t4, $t1
addi $t0, $t0, $t3
addi $t1, $t1, 1

bne $t1,$t2,loop





# Printing out the number
    li $v0, 1
    move $a0, $t0
    syscall



li $v0, 10

syscall