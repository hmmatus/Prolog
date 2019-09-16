/*Raiz utilizando un epsilon de 0.001*/

raiz(N,R):-
    raizAux(N,10,R).

raizAux(N,R,Resp):-
    is(Rsig,/(+(/(N,R),R),2)),
    <(abs(-(Rsig,R)),0.001),
    is(Resp,Rsig),!.

raizAux(N,R,Resp):-
    is(Rsig,/(+(/(N,R),R),2)),
    >(abs(-(Rsig,R)),0.001),
    raizAux(N,Rsig,Respaux),
    is(Resp,Respaux).
