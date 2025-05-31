.data
titulo: .asciiz "MÉDIA ARITMÉTICA ENTRE TRÊS INTEIROS\n"
msg0: .asciiz "Digite o primeiro número -> "
msg1: .asciiz "Digite o segundo número -> "
msg2: .asciiz "Digite o terceiro número -> "
res: .asciiz "A média deles é "

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
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	add $t3, $t1, $t0
	add $t4, $t2, $t3
	li $t5, 3
	div $t4, $t5
	mflo $t6
	
	li $v0, 4
	la $a0, res
	syscall
	
	li $v0, 1
	move $a0, $t6
	syscall
	
	li $v0, 10
	syscall
