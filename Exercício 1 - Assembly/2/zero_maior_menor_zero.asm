	.data
	
str: .asciiz "Digite um numero inteiro: "
str1: .asciiz "\nMaior que 0\n"
str2: .asciiz "\nMenor que 0\n"
str3: .asciiz "\nIgual a 0\n"
	
	.text
	
li $v0, 4
la $a0, str
syscall

li $v0, 5
syscall

move $t1, $v0
    
main:

    bgtz $t1, maior
    bltz $t1, menor
    beqz $t1, igual

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
