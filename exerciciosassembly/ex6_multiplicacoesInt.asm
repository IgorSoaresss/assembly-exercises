.text
	li $t0, 12
	addi $t1, $zero, 10
	
	mul $s0, $t0, $t1 # estou multiplicando t0 e t1 e armazenando em t2, todos temporários.
	
	li $v0, 1
	
	move $a0, $s0 # movi o que estava no salvo temporário s0 para o argumento a0
	syscall
	
	sll $s1, $t1, 10 # anda 2 casas para esquerda no valor binário, ou seja, multiplica t1 (10) por 2^10 (1024) e armazena em s1
	# dar preferência para o sll ao invés da mul, pois é mais barato, computacionalmente falando