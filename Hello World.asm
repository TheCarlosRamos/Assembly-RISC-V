.data #seção de variaveis globais
	main: .asciz "Ola Mundo\n" #endereço que vai armazenar a string, o asciz é o tipo onde vai ter as codificações de caracteres
.text 
	
li a7, 4 # carrega o número 4 no registrador a7, que representa a syscall para imprimir uma string na saída padrão (console)
la a0, main # carrega o endereço do label "main" na memória para o registrador a0. Este rótulo é definido na seção .data e aponta para uma string contendo a mensagem Ola Mundo
ecall # realiza uma chamada de sistema para imprimir a string armazenada no endereço que está no registrador a0.
