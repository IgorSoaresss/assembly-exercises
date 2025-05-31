.data
titulo: .asciiz "CÁLCULO DE FATORIAL\n"
msg: .asciiz "Digite o número N -> "
res: .asciiz "O fatorial de N é: "

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

	li $t1, 1

	move $t2, $t0

	beq $t0, $zero, imprimir

loop:
	mult $t1, $t2
	mflo $t1

	addi $t2, $t2, -1

	bgtz $t2, loop

imprimir:
	li $v0, 4
	la $a0, res
	syscall

	li $v0, 1
	move $a0, $t1
	syscall

	li $v0, 10
	syscall