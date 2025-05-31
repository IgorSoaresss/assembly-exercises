.data
titulo: .asciiz "PRODUTO ENTRE DOIS NÚMEROS\n"
msg0: .asciiz "Digite o primeiro número -> "
msg1: .asciiz "Digite o segundo número -> "
res: .asciiz "O produto entre eles é "

.text
	li $v0, 4
	la $a0, titulo
	syscall
	
	li $v0, 4
	la $a0, msg0
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	mul $t2, $t0, $t1
	
	li $v0, 4
	la $a0, res
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 10
	syscall
