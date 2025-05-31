.data
    msg_entrada: .asciiz "Digite um numero: "
    msg_primo: .asciiz "Resultado: eh primo (1)\n"
    msg_nao_primo: .asciiz "Resultado: nao eh primo (0)\n"

.text
.globl main

main:
    li $v0, 4
    la $a0, msg_entrada
    syscall

    li $v0, 5
    syscall
    move $a0, $v0

    jal ehPrimo

    beq $v0, 1, print_primo

    li $v0, 4
    la $a0, msg_nao_primo
    syscall
    j fim

print_primo:
    li $v0, 4
    la $a0, msg_primo
    syscall

fim:
    li $v0, 10
    syscall

ehPrimo:
    ble $a0, 1, not_prime

    li $t0, 2

loop_test:
    mul $t1, $t0, $t0
    bgt $t1, $a0, prime

    div $a0, $t0
    mfhi $t2

    beq $t2, $zero, not_prime

    addi $t0, $t0, 1
    j loop_test

prime:
    li $v0, 1
    jr $ra

not_prime:
    li $v0, 0
    jr $ra