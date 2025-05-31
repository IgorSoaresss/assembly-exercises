.data
titulo: .asciiz "CLASSIFICADOR DE NOTAS\n"
msg: .asciiz "Digite a nota (0-100) -> "
resA: .asciiz "Conceito: A\n"
resB: .asciiz "Conceito: B\n"
resC: .asciiz "Conceito: C\n"
resD: .asciiz "Conceito: D\n"
resF: .asciiz "Conceito: F\n"

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

	li $t1, 90
	bge $t0, $t1, notaA

	li $t1, 80
	bge $t0, $t1, notaB

	li $t1, 70
	bge $t0, $t1, notaC

	li $t1, 60
	bge $t0, $t1, notaD

	j notaF

notaA:
	li $v0, 4
	la $a0, resA
	syscall
	j fim

notaB:
	li $v0, 4
	la $a0, resB
	syscall
	j fim

notaC:
	li $v0, 4
	la $a0, resC
	syscall
	j fim

notaD:
	li $v0, 4
	la $a0, resD
	syscall
	j fim

notaF:
	li $v0, 4
	la $a0, resF
	syscall

fim:
	li $v0, 10
	syscall
