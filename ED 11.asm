.data
msg1: .asciiz "Digite horas trabalhadas: " #inteiro
msg2: .asciiz "Digite o valor recebido por hora: " #inteiro
msg3: .asciiz "Digite o valor da moto almejada:" #inteiro
msg4: .asciiz "Digite o nome da moto e modelo desejado:" #
nome: .space 64 

msg5: .asciiz "\n Horas trabalhadas: " #
msg6: .asciiz "\n Ganho por hora: " 
msg7: .asciiz "\n Valor da moto: " 
msg8: .asciiz "\n Nome da moto e modelo: " 

msg9: .asciiz "\n Dias necessarios para a aquisicao: "

.text
li $v0, 4
la $a0, msg1
syscall

li $v0, 5 #ler horas trabalhadas
syscall 
move $t0, $v0 #transfere o que esta em v0 para t0

li $v0, 4
la $a0, msg2
syscall

li $v0, 5 #ler o valor recebido
syscall 
move $t1, $v0 #transfere o que esta em v0 para t1

li $v0, 4
la $a0, msg3
syscall

li $v0, 5 #ler o valor da moto
syscall 
move $t2, $v0 #transfere o que esta em v0 para t2

li $v0, 4 # Prepara para imprimir uma string.
la $a0, msg4 # Coloca a string em $a0.
syscall # Imprime a string na tela.

li $v0, 8 # Prepara para ler uma string.
la $a0, nome # Input buffer.
la $a1, 64 # N. maximo de caracteres
syscall # Executa a instrução

li $v0, 4
la $a0, msg5
syscall

li $v0,1 #comando de impressão de inteiro na tela.
move $a0, $t0 #transfere o que esta em t0 para a0 - somente para impressão
syscall #executa a função a cima

li $v0, 4
la $a0, msg6
syscall

li $v0,1 #comando de impressão de inteiro na tela.
move $a0, $t1 #transfere o que esta em t0 para a0 - somente para impressão
syscall #executa a função a cima

li $v0, 4
la $a0, msg7
syscall

li $v0,1 #comando de impressão de inteiro na tela.
move $a0, $t2 #transfere o que esta em t0 para a0 - somente para impressão
syscall #executa a função a cima

li $v0, 4 # Prepara para imprimir a string
la $a0, msg8 # Atribui msg2 a $a0
syscall # Executa a instrução.

li $v0, 4 # Prepara para imprimir a string
la $a0, nome # Atribui nome para $a0.
syscall # Executa a instrução.

#multiplicação
mul $s2,$t1,$t0 # $s0 - $s1 e atribui a $s2

la $a0, ($s2) #coloca o registrador $s2 para ser impresso

#divisão
div $t2, $s2 #dias para adquirir a mota
mflo $s3 # Salva o resultado da divisão em $s3

li $v0, 4 # Prepara para imprimir uma string.
la $a0, msg9 # Carrega a msg1 em $a0
syscall # Executa e imprime na tela.
li $v0, 1 # Prepara para imprimir um inteiro.
la $a0, ($s3) # Carrega o valor de $s3 em $a0.
syscall # Executa o comando.

li $v0, 10 #prepara para encerrrar o programa
syscall#executa o comando e encerra o programa
