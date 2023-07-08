.data
msg: .asciiz "Olá Mundo!"

.text
.globl principal

principal: 
li $v0, 4 # Imprime uma string.
la $a0, msg # Recebe a variável msg no registrador de endereços $a0
syscall # Executa a instrução.
li $v0, 10 # Prepara para finalizar o programa.
syscall # Executa a instrução.
