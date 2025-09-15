;-------------------------------------------
; Programa: Descobrir qual número é menor
; Autor: Arielle Beatriz
; Data: 15/09/25
;-------------------------------------------

ORG 0
INICIO:   IN 0            ; Lê primeiro número
          STA NUM1
          IN 0            ; Lê segundo número
          STA NUM2
          
          LDA NUM1        ; AC = NUM1
          SUB NUM2        ; AC = NUM1 - NUM2
          JZ IGUAL        ; Se resultado == 0 -> iguais
          JN PRIMEIRO     ; Se resultado < 0 -> NUM1 é menor
          
SEGUNDO:  LDA NUM2        ; Caso contrário -> NUM2 é menor
          OUT 0
          HLT

PRIMEIRO: LDA NUM1        ; NUM1 é menor
          OUT 0
          HLT

IGUAL:    LDA NUM1        ; Se forem iguais, mostra qualquer um
          OUT 0
          HLT

;-------------------------------------------
; Variáveis
;-------------------------------------------
NUM1:     DB 0
NUM2:     DB 0