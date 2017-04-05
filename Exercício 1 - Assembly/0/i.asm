	.data
	
str: .word 34
str1: .word 35
string: .asciiz "Resultado: "

	.text
	
lw $t1, str
lw $t2, str1
		
main:

    add $t1, $t1, $t2

    li $v0, 4
    la $a0, string
    syscall

    li $v0, 1
    la $a0, ($t1)
    syscall

    li $v0, 10 # comando de exit
    syscall # efetua a chamada ao sistema
