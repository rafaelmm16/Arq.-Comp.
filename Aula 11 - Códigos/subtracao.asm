.text
main:

li $s0, 100 # insere o valor 100 no regitrador $s0
li $s1, 30 # insere o valor 30 no regitrador $s1
sub $s2,$s0,$s1 # $s0 - $s1 e atribui a $s2

la $a0, ($s2) #coloca o registrador $s2 para ser impresso
li $v0,1 #comando de impress�o de inteiro na tela
syscall # efetua a chamada ao sistema

li $v0, 10 # comando de exit
syscall # efetua a chamada ao sistema
