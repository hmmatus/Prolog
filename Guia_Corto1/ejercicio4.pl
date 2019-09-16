/*Sabiendo del factorial*/

factorial(0,1).
factorial(1,1).
factorial(N,FN):-
    >=(N,2),
    is(Nant,-(N,1)),
    factorial(Nant,FNant),
    is(FN,*(N,FNant)).

combinatoria(N,K):-
    factorial(N,Num),
    factorial(K,Aux1),
    is(Aux,-(N,K)),
    factorial(Aux,Aux2),
    is(Res,/(Num,*(Aux1,Aux2))),
    writeln(Res).