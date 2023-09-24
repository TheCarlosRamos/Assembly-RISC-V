.data
resultado1: .asciz "ADD: "                     # mensagem para exibir a soma
resultado2: .asciz "SUB: "                     # mensagem para exibir a subtração
resultado3: .asciz "AND: "                     # mensagem para exibir o resultado do AND
resultado4: .asciz "OR: "                      # mensagem para exibir o resultado do OR
resultado5: .asciz "XOR: "                     # mensagem para exibir o resultado do XOR
resultado6: .asciz "MASK: "                    # mensagem para exibir o resultado da MÁSCARA
resultado7: .asciz "SLL("                       # mensagem para exibir o resultado do deslocamento de a
resultado8: .asciz "SRL("                       # mensagem para exibir o resultado do deslocamento de b
parentese:  .asciz "): "

.text
.globl main

main:
  # ler o primeiro valor
  li a7, 5
  ecall
  mv s1, a0

  # ler o segundo valor
  li a7, 5
  ecall
  mv s2, a0

  # ler o terceiro valor
  li a7, 5
  ecall
  mv s3, a0

  # adição
  add s0, s1, s2
  la a0, resultado1
  li a7, 4
  ecall
  mv a0, s0
  li a7, 1
  ecall
  
    # Pulando a linha depois do resultado
  li a0, 10
  li a7, 11
  ecall

  # subtração
  sub s0, s1, s2
  la a0, resultado2
  li a7, 4
  ecall
  mv a0, s0
  li a7, 1
  ecall
  
    # Pulando a linha depois do resultado
  li a0, 10
  li a7, 11
  ecall

  # AND
  and s0, s1, s2
  la a0, resultado3
  li a7, 4
  ecall
  mv a0, s0
  li a7, 1
  ecall
  
    # Pulando a linha depois do resultado
  li a0, 10
  li a7, 11
  ecall

  # OR
  or s0, s1, s2
  la a0, resultado4
  li a7, 4
  ecall
  mv a0, s0
  li a7, 1
  ecall
  
    # Pulando a linha depois do resultado
  li a0, 10
  li a7, 11
  ecall

  # XOR
  xor s0, s1, s2
  la a0, resultado5
  li a7, 4
  ecall
  mv a0, s0
  li a7, 1
  ecall
  
    # Pulando a linha depois do resultado
  li a0, 10
  li a7, 11
  ecall

  # Máscara
  li t0, 31
  and s0, s3, t0
  la a0, resultado6
  li a7, 4
  ecall
  mv a0, s0
  li a7, 1
  ecall
  

  li a0, 10
  li a7, 11
  ecall

  # Deslocamento à esquerda (SLL)
  la a0, resultado7
  mv a1, s0
  li a7, 4
  ecall
  
    # Máscara
  li t0, 31
  and s0, s3, t0
  mv a0, s0
  li a7, 1
  ecall


  la a0, parentese
  li a7, 4
  ecall
  
  #(SLL)
  sll s0, s1, s0
  mv a0, s0
  li a7, 1
  ecall
  

  li a0, 10
  li a7, 11
  ecall

   # (SRL)
  la a0, resultado8
  mv a1, s0
  li a7, 4
  ecall

  # Máscara
  li t0, 31
  and s0, s3, t0
  mv a0, s0
  li a7, 1
  ecall

  la a0, parentese
  li a7, 4
  ecall

  # Deslocamento à direita (SRL)
  sra s0, s2, s0
  mv a0, s0
  li a7, 1
  ecall
  
  li a0, 10
  li a7, 11
  ecall

  li a7, 10
  ecall
