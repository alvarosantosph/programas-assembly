	.data

str1: .asciiz "Digite um numero inteiro: "
str2: .asciiz "\nDigite outro numero inteiro: "
str3: .asciiz "\nSoma: "

	
	.text

li $v0, 4
la $a0, str1
syscall

li $v0, 5
syscall

move $t0, $v0

li $v0, 4
la $a0, str2
syscall

li $v0, 5
syscall

move $t1, $v0

main:

    add $t0, $t0 $t1

    li $v0, 4
    la $a0, str3
    syscall

    li $v0, 1
    la $a0, ($t0)
    syscall

    li $v0, 10 # comando de exit
    syscall # efetua a chamada ao sistema
