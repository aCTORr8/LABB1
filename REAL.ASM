MODEL SMALL
STACK 256
DATASEG
    real1   DD  3.5
    real2   DD  1.25
    real_sum DD ?   

CODESEG
start:
    MOV AX, @DATA
    MOV DS, AX

    FINIT

    FLD real1         ; ST(0) = 3.5

    FADD real2        ; ST(0) = ST(0) + real2 = 3.5 + 1.25 = 4.75

    FSTP real_sum     ; real_sum = 4.75. Стек FPU звільнений

    MOV AH, 4Ch
    INT 21h

END start