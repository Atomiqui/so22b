;   E1 primeira versão:
;       Le um número (letras dão erro)
;       e logo em seguida printa o número lido;
;       Repete esse processo 10 vezes.
;
     CARGI 0      ; A = 0
     MVAX         ; X = A
ali  MVXA         ; A = X
     MVAX         ; X = A
     INCX         ; X++
     LE 0         ; A = Entrada
     ESCR 0       ; print A
     MVXA         ; A = X
     SUB cont     ; A -= cont
     DESVNZ ali   ; if A != 0 goto ali
     PARA         ; stop
cont VALOR 10     ; int cont=10