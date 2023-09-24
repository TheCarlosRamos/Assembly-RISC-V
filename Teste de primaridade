.data
inVali: .asciz "Entrada invalida.\n"
espaco: .asciz "\n"

.text
.globl main

main:
    li a7, 5          # Leitura do primeiro número
    ecall
    mv t0, a0

    li a7, 5          # Leitura do segundo número
    ecall
    mv t1, a0

    li t2, 2

    blt t0, t2, saidaInva   # Verifica se o primeiro número é menor que 2
    blt t1, t2, saidaInva   # Verifica se o segundo número é menor que 2

    mv s1, t0         # Armazena o primeiro número em s1
    mv s2, t1         # Armazena o segundo número em s2

    jal mdc           # Chama a função para calcular o MDC

    li a7, 1          # Syscall para imprimir o MDC
    mv a0, s2
    ecall

    jal mmc           # Chama a função para calcular o MMC

    li a7, 4          # Syscall para imprimir uma quebra de linha
    la a0, espaco
    ecall
    

    li a7, 1          # Syscall para imprimir o MMC
    mv a0, s0
    ecall
    
    li a0, 10   
    li a7, 11   
    ecall

    j saida           # Salta para o final do programa

mdc:
    rem t3, s1, s2    # Calcula o resto da divisão de s1 por s2
    beqz t3, fimMDC   # Se o resto for zero, vai para o fim do cálculo do MDC
    mv s1, s2         # Move s2 para s1
    mv s2, t3         # Move o resto para s2
    j mdc             # Volta para o início do cálculo do MDC

fimMDC:
    mv s0, s2         # Armazena o resultado do MDC em s0
    jr ra             # Retorna ao endereço de retorno

mmc:
    mv t3, t0         # Armazena o primeiro número em t3
    mv t4, t1         # Armazena o segundo número em t4

mmc_loop:
    rem t5, t3, t4    # Calcula o resto da divisão de t3 por t4
    beqz t5, fimMMC   # Se o resto for zero, vai para o fim do cálculo do MMC
    mv t3, t4         # Move t4 para t3
    mv t4, t5         # Move o resto para t4
    j mmc_loop        # Volta para o início do cálculo do MMC

fimMMC:
    mul t6, t0, t1    # Multiplica os dois números
    div t6, t6, s0    # Divide o produto pelo MDC calculado
    mv s0, t6         # Armazena o resultado do MMC em s0
    jr ra             # Retorna ao endereço de retorno

saida:
    li a7, 10         # Syscall para encerrar o programa
    ecall

saidaInva:
    li a7, 4          # Syscall para imprimir a mensagem de entrada inválida
    la a0, inVali
    ecall

    j saida           # Salta para o final do programa
