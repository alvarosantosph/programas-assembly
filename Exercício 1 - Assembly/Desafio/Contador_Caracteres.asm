	.data

str: .word 0
str1: .asciiz "Digite um nome: "
 
	.text

li $v0, 4
la $a0, str1
syscall	

li $v0, 8
la $a0, str
li $a1, 15
syscall
 
main:

    li $t0, -1       
    move $t1, $a0  
 
while:

    lb $t2, 0($t1)   
 
    blez $t2, finwhile  
    addi $t0, $t0, 1    
    addi $t1, $t1, 1    
    
    j while     

 
finwhile: 
 
    li $v0, 1       
    la $a0, ($t0)
    syscall

    li $v0, 10      
    syscall
    
li $v0, 10 # comando de exit
syscall # efetua a chamada ao sistema

