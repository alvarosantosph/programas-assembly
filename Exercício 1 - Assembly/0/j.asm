	.data
	
str: .byte 119 120
	
	.text
	
main:

    li $v0, 4
    la $a0, str
    syscall

    li $v0, 10 # comando de exit
    syscall # efetua a chamada ao sistema
