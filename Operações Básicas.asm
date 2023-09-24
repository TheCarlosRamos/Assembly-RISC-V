# Início do código
.data
prompt1: .asciiz "Digite o primeiro valor: " # mensagem para solicitar o primeiro valor
prompt2: .asciiz "Digite o segundo valor: " # mensagem para solicitar o segundo valor
resultado1: .asciiz "A soma dos valores é: " # mensagem para exibir a soma
resultado2: .asciiz "A subtração dos valores é: " # mensagem para exibir a subtração

.text
.globl main

main:
  la a0, prompt1
  li a7, 4
  ecall
  
  li a7, 5
  ecall
  mv s1, a0 

  la a0, prompt2
  li a7, 4
  ecall

  li a7, 5
  ecall
  mv s2, a0 

  # adição
  add s0, s1, s2 # armazena a soma em s0

  la a0, resultado1
  li a7, 4
  ecall
  mv a0, s0
  li a7, 1
  ecall
  
  li a0, 10   
  li a7, 11  
  ecall

  sub s0, s1, s2 # armazena a subtração em s0

  la a0, resultado2
  li a7, 4
  ecall
  mv a0, s0
  li a7, 1
  ecall
  
  li a0, 10   
  li a7, 11  
  ecall

