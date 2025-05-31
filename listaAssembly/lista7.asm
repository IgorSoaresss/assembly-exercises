.data
titulo: .asciiz "ENCONTRANDO O MAIOR NÚMERO\n"
msg1: .asciiz "Digite o primeiro número -> "
msg2: .asciiz "Digite o segundo número -> "
res: .asciiz "O maior número é "

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

	ble $t0, $t1, segundo_maior

	move $t2, $t0
	j imprimir

segundo_maior:
	move $t2, $t1

imprimir:
	li $v0, 4
	la $a0, res
	syscall

	li $v0, 1
	move $a0, $t2
	syscall

	li $v0, 10
	syscall