.text
	li $t0, 75
	li $t1, 25
	
	sub $t2, $t0, $t1 # estou subtraindo t0 e t1 e armazenando em t2, todos temporários.
	
	# subi $t3, $t2, 40 # estou subtraindo o temporário t2 e o inteiro 40 e armazenando no temporário t3.
	subi $t3, $t2, -40 # outra forma de fazer a operação de cima, porém com -40, virando uma soma.