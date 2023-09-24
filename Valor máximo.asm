.text
.globl main

main:
    # Lê o número de usuários
    li a7, 5    # Carrega o valor 5 no registrador a7, que representa a chamada de sistema para ler um inteiro do usuário
    ecall       # Chama a chamada de sistema para ler um inteiro do usuário
    mv s1, a0   # Move o valor lido para o registrador s1

    # Inicializa o máximo com o menor número inteiro possível
    li s0, -2147483648  # Carrega o menor número inteiro possível no registrador s0, que representa o valor máximo inicial

    # Loop para ler n números e determinar o máximo
loop:
    # Lê um número do usuário
    li a7, 5    # Carrega o valor 5 no registrador a7, que representa a chamada de sistema para ler um inteiro do usuário
    ecall       # Chama a chamada de sistema para ler um inteiro do usuário
    mv t1, a0   # Move o valor lido para o registrador t1

    # Atualiza o máximo se o número lido for maior
    bgt t1, s0, update_max  # Se o valor lido for maior que o valor máximo, desvia para a etiqueta update_max
    j check_loop_end        # Caso contrário, desvia para a etiqueta check_loop_end

update_max:
    # Atualiza o máximo
    mv s0, t1   # Move o valor lido para o registrador s0, atualizando o valor máximo

check_loop_end:
    # Verifica se o loop terminou
    addi s1, s1, -1  # Decrementa o contador de loop
    bgtz s1, loop    # Se o contador for maior que zero, volta para a etiqueta loop

    # Imprime o número máximo
    mv a0, s0   # Move o valor máximo para o registrador a0, que representa o valor a ser impresso
    li a7, 1    # Carrega o valor 1 no registrador a7, que representa a chamada de sistema para imprimir um inteiro
    ecall       # Chama a chamada de sistema para imprimir um inteiro

    # Pulando a linha depois do resultado
    li a0, 10   # Carrega o valor 10 no registrador a0, que representa o caractere newline (\n)
    li a7, 11   # Carrega o valor 11 no registrador a7, que representa a chamada de sistema para imprimir um caractere
    ecall       # Chama a chamada de sistema para imprimir um caractere

    # Encerra o programa
    li a7, 10   # Carrega o valor 10 no registrador a7, que representa a chamada de sistema para sair do programa
    ecall       # Chama a chamada de sistema para sair do programa
