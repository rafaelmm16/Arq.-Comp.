.macro fim # Inicio do macro que encerra o programa.
	li $v0, 10 # Configura o serviço para o fim do programa - Exit.
	syscall # Executa a instrução.
.end_macro # Fim da macro.
