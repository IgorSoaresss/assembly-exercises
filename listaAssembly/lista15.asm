.text
.globl maximo

maximo:
    bgt $a0, $a1, maior_a0
    move $v0, $a1
    jr $ra
maior_a0:
    move $v0, $a0
    jr $ra