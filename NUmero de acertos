.data
gabarito:      .space 100
respostas:     .space 100
format_str:    .asciz "%d\n"
new_line:      .asciz "\n"

.text
.globl main
main:
    addi    sp, sp, -4
    sw      zero, 0(sp)

    li      a0, 1
    la      a1, format_str
    li      a7, 5
    ecall

    la      a0, gabarito
    li      a1, 100
    li      a7, 8
    ecall

    la      a0, respostas
    li      a1, 100
    li      a7, 8
    ecall
    
    la      t0, gabarito
    la      t1, respostas
    li      t2, 0
    li      t3, 0

    loop:
        lb      a0, 0(t0)
        beqz    a0, fim

        lb      a1, 0(t1)
        beq     a0, a1, acerto

    prox:
        addi    t0, t0, 1
        addi    t1, t1, 1
        j       loop

    acerto:
        addi    t3, t3, 1
        j       prox

    fim:
        li      a7, 1
        addi    t3, t3, -1   
        mv      a0, t3
        ecall

        li      a7, 4
        la      a0, new_line
        li      a1, 1
        li      a2, 1
        ecall

        li      a7, 10
        li      a0, 0
        ecall
