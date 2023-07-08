.data

.macro finalizarPrograma # Nome da macro.
	li $v0, 10 # Prepara para encerrar o programa.
	syscall    # Executa a instru��o. 
.end_macro # Fim do macro.

.macro printf (%str) # Nome da macro. %str � a string passada como par�metro.
	.data
	msg: .asciiz %str # Define o valor da vari�vel msg.
	.text
	li $v0, 4 # Prepara para imprimir uma string.
	la $a0, msg # Salva o valor de msg na vari�vel $a0.
	syscall # Executa o comando, imprimindo a string.
.end_macro # Fim do macro.

.text
.globl principal

principal:
printf("Ola mundo 3!!\n")
finalizarPrograma	