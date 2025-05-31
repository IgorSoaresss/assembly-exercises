.data
titulo: .asciiz "Números de 1 até 10:\n"
newline: .asciiz "\n"

.text
main:
	li $v0, 4
	la $a0, titulo
	syscall

	li $t0, 1

loop:
	li $v0, 1
	move $a0, $t0
	syscall

	li $v0, 4
	la $a0, newline
	syscall

	addi $t0, $t0, 1

	li $t1, 10
	ble $t0, $t1, loop

	li $v0, 10
	syscall
	