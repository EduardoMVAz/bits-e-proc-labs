<<<<<<< HEAD
; Arquivo: mov.nasm
; Curso: Bits e Processadores
; Criado por: Eduardo Mendes Vaz
; Data:  5/10/2022

; Troca o valor 0 da memoria pelo valor 1, troca o valor 1 da memoria pelo valor zero, e define o valor 3 como 1

    leaw $0, %A
    movw (%A), %D
    leaw $2, %A 
    movw %D, (%A)

    leaw $1, %A
    movw (%A), %D 
    leaw $0, %A 
    movw %D, (%A)

    leaw $2, %A 
    movw (%A), %D 
    leaw $1, %A 
    movw %D, (%A)

    leaw $1, %A
    movw %A, %D 
    leaw $3, %A
    movw %D, (%A)
=======
; Elementos de Sistemas : 2018a
; Rafael Corsi
; Hardware : Z0.1
;
; Data :
;    - Dez 2018
; Descrição :
;    - Movimentação de dados da memoria RAM
;
; RAM[0] = RAM[1]
; RAM[1] = RAM[0]
; RAM[3] = 1


>>>>>>> upstream/main
