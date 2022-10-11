;    E1 primeira versão:
;       Le um número (letras dão erro)
;       e guarda na memória no espaço reservado, chamado de "vetor";
;       Repete esse processo 10 vezes;
;       Então printa todos os elementos do 'vetor'.
;
;       Logo vem ai um versão que ordena os valores!!!
;
; Lendo os valores:
     CARGI 0      ; A = 0
     MVAX         ; X = A
le   MVXA         ; A = X
     MVAX         ; X = A
     LE 0         ; A = Entrada
     ARMX vetor   ; mem[vetor+x] = A
     INCX         ; X++
     MVXA         ; A = X
     SUB cont     ; A -= cont
     DESVNZ le    ; if A != 0 goto le
;
; selecionando as posições a serem ordenadas:
; ordenando:
     CARGI 0      ; A = 0
     MVAX         ; X = A | x =0
     ARMM	laco	   ; mem[A1]=A | laco = 0
;
slc  CARGM laco   ; A = laco
     MVAX         ; x = A
     CARGX vetor  ; A = mem[vetor+X]
     ARMM	aux     ; mem[A1]=A
;
varre INCX         ; x++
     CARGX vetor  ; A = mem[vetor+X]

     DESV func    ; goto func
ret  INCX         ; x++
     MVXA         ; A = X
     SUB cont     ; A -= cont
     DESVNZ le    ; if A != 0 goto slc
;
; Função de ordenação:
func CARGM aux    ; A=mem[A1]
     
     SUB 
     
cont      VALOR 10       ; int cont = 10
laco      VALOR 0        ; int laco = 0
aux       VALOR 0        ; int aux = 0
varre     VALOR 0        ; int varre = 0
vetor     ESPACO 50      ; int vetor[50]