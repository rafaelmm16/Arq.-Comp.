.data
msg1: .asciiz "O resultado da divisão é: "
msg2: .asciiz "\nO resto da divisão é: "

.text
li $s0, 5 # Atribui 5 ao registrador $s0
li $s1, 2 # Atribui 2 ao registrador $s1
div $s0, $s1 # Realiza a divisão de $s0 por $s1
mflo $s3 # Salva o resultado da divisão em $s3
mfhi $s4 # Salva o resto da divisão em $s4

li $v0, 4 # Prepara para imprimir uma string.
la $a0, msg1 # Carrega a msg1 em $a0
syscall # Executa e imprime na tela.

li $v0, 1 # Prepara para imprimir um inteiro.
la $a0, ($s3) # Carrega o valor de $s3 em $a0.
syscall # Executa o comando.

li $v0, 4 # Prepara para imprimir uma string.
la $a0, msg2 # Carrega a msg2 em $a0.
syscall # Executa o comando.

li $v0, 1 # Prepara para imprimir um inteiro.
la $a0, ($s4) # Carrega o valor de $s4 em $a0
syscall # Executa o comando.

li $v0, 10 # Prepara para encerrar o programa.
syscall # Executa o comando e encerra o programa.