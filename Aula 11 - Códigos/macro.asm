.macro fim # Inicio do macro que encerra o programa.
	li $v0, 10 # Configura o servi�o para o fim do programa - Exit.
	syscall # Executa a instru��o.
.end_macro # Fim da macro.
