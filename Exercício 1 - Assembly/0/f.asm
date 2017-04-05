	.data
	
	.text

li $v0, 5
syscall

move $t0, $v0

li $v0, 5
syscall

move $t1, $v0
		
main:

    add $t0, $t0 $t1

    li $v0, 1
    la $a0, ($t0)
    syscall

    li $v0, 10 # comando de exit
    syscall # efetua a chamada ao sistema
