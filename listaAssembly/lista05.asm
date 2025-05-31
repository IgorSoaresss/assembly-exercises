.data
titulo: .asciiz "CONVERSOR - CELSIUS PARA FAHRENHEIT\n"
msg: .asciiz "Insira a temperatura -> "
res0: .asciiz "Isso dá "
res1: .asciiz "ºF."

.text
	li $v0, 4
	la $a0, titulo
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $t1, 9
	mult $t0, $t1
	mflo $t2
	
	li $t3, 5
	div $t2, $t3
	mflo $t4
	
	li $t5, 32
	add $t6, $t4, $t5
	
	li $v0, 4
	la $a0, res0
	syscall
	
	li $v0, 1
	move $a0, $t6
	syscall
	
	li $v0, 4
	la $a0, res1
	syscall
	
	li $v0, 10
	syscall
