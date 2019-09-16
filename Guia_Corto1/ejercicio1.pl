/*Conteo de 1 a n*/
conteo(N):-
    is(K,1),
    contar(N,K).


contar(N,K):-
    =<(K,N),
    writeln(K),
    is(K1,+(K,1)),
    contar(N,K1).

