	.data
	
str1: .asciiz "Soma: "
str2: .asciiz "\nSubtracao: "
str3: .asciiz "\nMultiplicacao: "
str4: .asciiz "\nDivisao: "
	
	.text

main:

    # adicao
	
    li $v0, 4
    la $a0, str1
    syscall

    li $t0, 20
    li $t1, 5
	
    add $t1, $t0, $t1

    li $v0, 1
    la $a0, ($t1)
    syscall

    # subtracao

    li $v0, 4
    la $a0, str2
    syscall

    li $t0, 20
    li $t1, 5
	
    sub $t1, $t0, $t1
	
    li $v0, 1
    la $a0, ($t1)
    syscall

    # multiplicacao

    li $v0, 4
    la $a0, str3
    syscall

    li $t0, 20
    li $t1, 5
	
    mul  $t1, $t0, $t1
	
    li $v0, 1
    la $a0, ($t1)
    syscall

# divisao

    li $v0, 4
    la $a0, str4
    syscall

    li $t0, 20
    li $t1, 5
	
    div $t1, $t0, $t1
	
    li $v0, 1
    la $a0, ($t1)
    syscall

    li $v0, 10 # comando de exit
    syscall # efetua a chamada ao sistema
