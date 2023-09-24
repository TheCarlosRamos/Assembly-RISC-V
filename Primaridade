.data
ehPrimo: .asciz "sim\n"
nEhPrimo: .asciz "nao\n"
invaPrimo: .asciz "Entrada invalida.\n"

.text
.globl main

main:
    li a7, 5
    ecall
    
    mv t0, a0
    
    li t1, 1
    li t2, 2
    
    blt t0, t1, invalido
    
    beq t0, t1, naoPrimoLabel
    
    beq t0, t2, ehPrimoLabel
    
    li t3, 2
    
loop:
    rem t4, t0, t3
    beqz t4, naoPrimoLabel
    
    addi t3, t3, 1
    blt t3, t0, loop
    
    la a0, ehPrimo
    li a7, 4
    ecall
    
    j fim
    
naoPrimoLabel:
    la a0, nEhPrimo
    li a7, 4
    ecall
    
    j fim
    
ehPrimoLabel:
    la a0, ehPrimo
    li a7, 4
    ecall
    
    j fim
    
invalido:
    li a7, 4
    la a0, invaPrimo
    ecall
    
fim:
    li a7, 10
    ecall
