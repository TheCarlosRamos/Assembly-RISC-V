.data #seção de variaveis globais
numero1:  .word 0#variavel do primeiro numero a ser lido
numero2:  .word 0#variavel do segundo numero a ser lido
resultado: .word 0#variavel da soma dos dois numeros lidos
line: .asciz "\n"
	

.text          # Início da seção de código
li a7, 4       # Carrega o número 4 no registrador a7, que representa o número da chamada do sistema para imprimir uma string na saída padrão (geralmente o console).
la a0, numero1 # Carrega o endereço do rótulo "numero1" na memória para o registrador a0. Este rótulo é definido na seção .data e aponta para uma string contendo o primeiro número a ser lido.
ecall          # Realiza uma chamada de sistema para imprimir a string armazenada no endereço que está no registrador a0.

li a7, 5 # carrega 5 no registrador a7, que representa a syscall para ler um inteiro
ecall # chama a syscall para ler o inteiro digitado pelo usuário

mv t0, a0 # move o valor lido para o registrador t0

# Lê o segundo número
li a7, 4 # carrega 4 no registrador a7, que representa a syscall para imprimir uma string
la a0, numero2 # passa o endereço da string para a0
ecall # chama a syscall para imprimir a mensagem

li a7, 5 # carrega 5 no registrador a7, que representa a syscall para ler um inteiro
ecall # chama a syscall para ler o inteiro digitado pelo usuário

mv t1, a0 # move o valor lido para o registrador t1

# Soma os dois números
add t2, t0, t1 # adiciona os valores de t0 e t1 e salva o resultado em t2

# Imprime o resultado
li a7, 4       #Carrega o número 4 no registrador a7, que representa o número da chamada do sistema para imprimir uma string na saída padrão (console).
la a0, resultado #Carrega o endereço do resultado na memória para o registrador a0. Este rótulo é definido na seção .data e aponta para uma string onde será impresso o resultado da soma dos dois números lidos.
ecall        # Realiza uma chamada de sistema para imprimir a string armazenada no endereço que está no registrador a0, que contém o resultado da soma dos dois números lidos.

li a7, 1 # carrega 1 no registrador a7, que representa a syscall para imprimir um inteiro
mv a0, t2 # move o valor da soma para o registrador a0
ecall # chama a syscall para imprimir o resultado

li a7, 4 #Carrega o número 4 no registrador a7, que representa o número da chamada do sistema para imprimir uma string na saída padrão (console).
la, a0, line #Carrega o endereço do resultado na memória para o registrador a0. Este rótulo é definido na seção .data e aponta para uma string onde será impresso o "\n"
ecall  # Realiza uma chamada de sistema para imprimir a string armazenada no endereço que está no registrador a0, que contém o \n
