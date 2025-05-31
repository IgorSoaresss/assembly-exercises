.data
titulo: .asciiz "VERIFICADOR DE MAIORIDADE\n"
msg: .asciiz "Digite a idade da pessoa -> "
maior_msg: .asciiz "A pessoa é maior de idade.\n"
menor_msg: .asciiz "A pessoa é menor de idade.\n"

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

	li $t1, 18
	bge $t0, $t1, maior

	li $v0, 4
	la $a0, menor_msg
	syscall
	j fim

maior:
	li $v0, 4
	la $a0, maior_msg
	syscall

fim:
	li $v0, 10
	syscall
