# digo os dados que vou atribuir (apenas usar quando o(s) dado(s) vier da memória RAM)
.data
	idade: .word 56 # digo que estou armazenando em idade o inteiro 56, que tem o tamanho de um word (32 bits)

# digo as operações que vou fazer (sempre devo usar)
.text
	li $v0, 1 #digo para o v0 (que faz as coisa) que quero fazer a operação 1 (imprimir inteiro)
	lw $a0, idade #armazeno idade em a0
	syscall #"pede" para rodar o programa
	
	li $v0, 10 #digo para o v0 (que faz as coisa) que quero fazer a operação 10 (encerrar o programa)
	syscall #"pede" para rodar o programa