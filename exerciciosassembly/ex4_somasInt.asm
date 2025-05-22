# estamos sem o .data, pois não estamos inserindo valores na memória RAM
# campo de operações que vou realizar (sempre devo usar)
.text
	li $t0, 75 # estou armazenando o int 75 no temporário t0
	
	# li $t1, 25 -> estou armazenando o int 25 no temporário t1
	addi $t1, $zero, -25 # outra forma de fazer a operação de cima, porém com -25
	
	add $s0, $t0, $t1 #estou somando os temporários t0 e t1 e armazenando na variável s0
	
	addi $s1, $s0, 36 #estou somando a variável s0 e o int 36 e armazenando na variável s1
