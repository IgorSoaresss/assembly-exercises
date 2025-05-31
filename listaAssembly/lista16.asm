.data
    msg_entrada: .asciiz "Digite um numero: "
    msg_maior:   .asciiz "O maior numero e: "
    msg_menor:   .asciiz "O menor numero e: "
    newline:     .asciiz "\n"

.text
.globl main

main:
    li $t0, 0
    li $t3, 5

    addi $sp, $sp, -20

ler_numeros:
    beq $t0, $t3, fim_leitura

    li $v0, 4
    la $a0, msg_entrada
    syscall

    li $v0, 5
    syscall

    sll $t1, $t0, 2
    add $t2, $sp, $t1
    sw $v0, 0($t2)

    addi $t0, $t0, 1

    j ler_numeros

fim_leitura:
    lw $t4, 0($sp)
    lw $t5, 0($sp)

    li $t0, 1

loop_maior_menor:
    beq $t0, $t3, fim_loop

    sll $t1, $t0, 2
    add $t2, $sp, $t1
    lw $t6, 0($t2)

    ble $t6, $t4, check_menor
    move $t4, $t6

check_menor:
    bge $t6, $t5, proximo
    move $t5, $t6

proximo:
    addi $t0, $t0, 1
    j loop_maior_menor

fim_loop:
    li $v0, 4
    la $a0, msg_maior
    syscall

    li $v0, 1
    move $a0, $t4
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    li $v0, 4
    la $a0, msg_menor
    syscall

    li $v0, 1
    move $a0, $t5
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    addi $sp, $sp, 20

    li $v0, 10
    syscall