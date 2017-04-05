	.data

str: .word 0
str1: .asciiz "Digite uma frase, com no máximo 10 caracteres: "

	.text

li $v0, 4
la $a0, str1
syscall	

li $v0, 8
la $a0, str
li $a1, 10
syscall
    	
main:

    sw $a0, 0x10010080

    li $v0, 4
    lw $t1, 0x10010080
    syscall

    li $v0, 10 # comando de exit
    syscall # efetua a chamada ao sistema
