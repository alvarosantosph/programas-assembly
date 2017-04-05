	.data
	
str1: .asciiz "A > B"
str2: .asciiz "A < B"
str3: .asciiz "A = B"
	
	.text
	
li $t0, 30
li $t1, 30

main:

    sgt $t2, $t0, $t1
    bne $t2, $zero, maior

    slt $t2,$t0,$t1
    bne $t2, $zero, menor

    beq $t0, $t1, igual

maior:
    li $v0, 4
    la $a0, str1
    syscall
    j fim

menor:
    li $v0, 4
    la $a0, str2
    syscall 
    j fim

igual:
    li $v0, 4
    la $a0, str3
    syscall
    j fim 

fim:
    li $v0, 10 # comando de exit
    syscall # efetua a chamada ao sistema
