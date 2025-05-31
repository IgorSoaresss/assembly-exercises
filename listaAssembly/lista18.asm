.data
    msg_entrada:  .asciiz "Digite um numero (0 para terminar): "
    msg_media:    .asciiz "A media dos numeros digitados e: "
    newline:      .asciiz "\n"
    msg_sem_num:  .asciiz "Nenhum numero valido foi digitado.\n"

.text
.globl main

main:
    li $t0, 0
    li $t1, 0

loop_leitura:
    li $v0, 4
    la $a0, msg_entrada
    syscall

    li $v0, 5
    syscall
    move $t2, $v0

    beq $t2, $zero, fim_leitura

    addu $t0, $t0, $t2

    addi $t1, $t1, 1

    j loop_leitura

fim_leitura:
    beq $t1, $zero, sem_numero

    div $t0, $t1
    mflo $t3

    li $v0, 4
    la $a0, msg_media
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    j fim

sem_numero:
    li $v0, 4
    la $a0, msg_sem_num
    syscall

fim:
    li $v0, 10
    syscall