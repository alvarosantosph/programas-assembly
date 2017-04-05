	.data

str1: .asciiz "Digite um numero inteiro: "
	
	.text
	
li $v0, 4
la $a0, str1
syscall

li $v0, 5
syscall
    
main: 

    move $t0, $v0

    li $v0, 10 # comando de exit
    syscall # efetua a chamada ao sistema
