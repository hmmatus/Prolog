/*Contar todos los numeros dentro del intervalo [a,b]*/

conteo(A,B):-
    contar(A,B,0).

contar(A,B,K):-
    =<(K,B),
    is(K1,+(K,A)),
    is(A1,+(A,1)),
    writeln(K1),
    contar(A1,B,K1).

