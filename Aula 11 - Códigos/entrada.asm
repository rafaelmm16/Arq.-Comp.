.data
msg1: .asciiz "Digite o seu nome: "
msg2: .asciiz "Seja bem-vindo: "
nome: .space 40 # .space reserva espa�o para armzenar um valor depois.

.text
li $v0, 4 # Prepara para imprimir uma string.
la $a0, msg1 # Coloca a string em $a0.
syscall # Imprime a string na tela.

li $v0, 8 # Prepara para ler uma string.
la $a0, nome # Input buffer.
la $a1, 40 # N. maximo de caracteres
syscall # Executa a instru��o

li $v0, 4 # Prepara para imprimir a string
la $a0, msg2 # Atribui msg2 a $a0
syscall # Executa a instru��o.

li $v0, 4 # Prepara para imprimir a string
la $a0, nome # Atribui nome para $a0.
syscall # Executa a instru��o.

li $v0, 10 # Prepara para encerrar o programa.
syscall # Encerra o programa.