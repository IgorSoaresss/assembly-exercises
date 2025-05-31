.data
titulo: .asciiz "SOMA DE 1 ATE N\n"
msg: .asciiz "Digite o valor de N -> "
res: .asciiz "A soma de 1 até N é: "

.text
main:
	li $v0, 4
	la $a0, titulo
	syscall

	li $v0, 4
	la $a0, msg
	syscall

	li $v0, 5
	syscall
	move $t0, $v0

	li $t1, 0
	li $t2, 1

loop:
	add $t1, $t1, $t2

	addi $t2, $t2, 1

	ble $t2, $t0, loop

	li $v0, 4
	la $a0, res
	syscall

	li $v0, 1
	move $a0, $t1
	syscall

	li $v0, 10
	syscall