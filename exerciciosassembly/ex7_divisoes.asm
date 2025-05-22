.text
	li $t0, 32
	li $t1, 5
	
	srl $s2, $t0, 2 # anda 2 casas para direita no valor binário, ou seja, divide t0 (32) por 2^2 (4) e armazena em s2
	# srl só é capaz de armazenar a parte inteira do resultado
	
	div $t0, $t1 # divide t0 por t1
	# a parte inteira vai para memória como lo
	# a parte decimal vai para memória como hi
	
	mflo $s0 # move o valor de lo para s0
	mfhi $s1 # move o valor de hi para s1