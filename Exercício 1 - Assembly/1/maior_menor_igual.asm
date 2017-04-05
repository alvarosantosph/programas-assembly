	.data
	
str1: .asciiz "A > B"
str2: .asciiz "A < B"
str3: .asciiz "A = B"

str4: .asciiz "Digite um numero inteiro para o valor A: "
str5: .asciiz "Digite um numero inteiro para o valor B: "
	
	.text
	
li $v0, 4
la  $a0, str4
syscall

li $v0, 5
syscall

move $t0, $v0

li $v0, 4
la  $a0, str5
syscall

li $v0, 5
syscall

move $t1, $v0

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
