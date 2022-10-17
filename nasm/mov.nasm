<<<<<<< HEAD
; Arquivo: mov.nasm
; Curso: Bits e Processadores
; Criado por: Eduardo Mendes Vaz
; Data:  5/10/2022

; Troca o valor 0 da memoria pelo valor 1, troca o valor 1 da memoria pelo valor zero, e define o valor 3 como 1

    leaw $0, %A ; seleciona o endereco 0
    movw (%A), %D ; move o valor do endereco 0 para D 
    leaw $2, %A ; seleciona o endereco 2
    movw %D, (%A) ; guarda o valor de D no endereco 2

    leaw $1, %A ; 
    movw (%A), %D 
    leaw $0, %A 
    movw %D, (%A)

    leaw $2, %A 
    movw (%A), %D 
    leaw $1, %A 
    movw %D, (%A)

    movw $1, %D
    leaw $3, %A
    movw %D, (%A)