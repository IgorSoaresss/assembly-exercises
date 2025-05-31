.data
titulo: .asciiz "SOMADOR DE NÚMEROS\n"
msg1: .asciiz "Digite o primeiro número -> "
msg2: .asciiz "Digite o segundo número -> "
res: .asciiz "O resultado da soma é "

.text
main:
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
	
	add $t2, $t0, $t1
	
	li $v0, 4
	la $a0, res
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 10
	syscall
