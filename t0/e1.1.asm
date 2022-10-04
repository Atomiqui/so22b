;   E1 primeira versão:
;       Le um número (letras dão erro)
;       e logo em seguida printa o número lido;
;       Repete esse processo 10 vezes.
;
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
     CARGI 0      ; A = 0
     MVAX         ; X = A
pri  MVXA         ; A = X
     MVAX         ; X = A
     CARGX vetor  ; A=mem[vetor+X]
     ESCR 0       ; print A
     INCX         ; X++
     MVXA         ; A = X
     SUB cont     ; A - cont
     DESVNZ pri   ; if A != 0 goto pri
     PARA         ; STOP
;
cont VALOR 10     ; int cont=10
vetor ESPACO 50   ;