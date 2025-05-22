# todos os dados que vou atribuir
.data
	msg: .asciiz "Olá, mundo!" # armazeno em msg um array de char com /0 no final e digo que é olá mundo

# todas as operações que vou definir
.text
	li $v0, 4 # digo para o v0 (que faz as coisa) que a operação que quero fazer é um print de string
	la $a0, msg #  armazeno msg em a0
	syscall