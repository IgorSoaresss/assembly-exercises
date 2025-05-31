.data
titulo: .asciiz "VERIFICADOR DE NÚMERO PAR OU ÍMPAR\n"
msg: .asciiz "Digite um número inteiro -> "
par_msg: .asciiz "O número é PAR.\n"
impar_msg: .asciiz "O número é ÍMPAR.\n"

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

	li $t1, 2
	div $t0, $t1
	mfhi $t2

	beq $t2, $zero, eh_par

	li $v0, 4
	la $a0, impar_msg
	syscall
	j fim

eh_par:
	li $v0, 4
	la $a0, par_msg
	syscall

fim:
	li $v0, 10
	syscall