.data
msg: .asciiz "Ol� Mundo!"

.text
.globl principal

principal: 
li $v0, 4 # Imprime uma string.
la $a0, msg # Recebe a vari�vel msg no registrador de endere�os $a0
syscall # Executa a instru��o.
li $v0, 10 # Prepara para finalizar o programa.
syscall # Executa a instru��o.
