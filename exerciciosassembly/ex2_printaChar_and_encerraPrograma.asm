# todos os dados que vou atribuir
.data
	caractere: .byte 'A' # defino um dado do tamanho de 1 byte com o valor A e armazeno em caractere

.text
	li $v0, 4 # digo para o v0 (que faz as coisa) que quero fazer a operação 4 (imprimir char ou string)
	la $a0, caractere
	syscall
	
	li $v0, 10 #digo para o v0 (que faz as coisa) que quero fazer a operação 10 (encerrar o programa)
	syscall