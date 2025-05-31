.data
titulo: .asciiz "SUBTRAÇÃO DE NÚMEROS (n1 - n2)\n"
msg1: .asciiz "Digite o número a ser subtraído (n2) -> "
msg2: .asciiz "Digite o número de onde ele vai subtrair (n1) -> "
res: .asciiz "A subtração de n2 por n1 é "

.text
	li $v0, 4
	la $a0, titulo
	syscall
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	sub $t2, $t1, $t0
	
	li $v0, 4
	la $a0, res
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 10
	syscall