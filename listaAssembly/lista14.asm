.text
.globl fatorial

fatorial:
    beq $a0, $zero, fatorial_base

    addi $sp, $sp, -4
    sw $ra, 0($sp)

    addi $a0, $a0, -1
    jal fatorial

    lw $ra, 0($sp)
    addi $sp, $sp, 4

    addi $t0, $a0, 1
    mul $v0, $v0, $t0

    jr $ra

fatorial_base:
    li $v0, 1
    jr $ra