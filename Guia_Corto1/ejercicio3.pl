factorial(0,1).
factorial(1,1).
factorial(N,FN):-
    >=(N,2),
    is(Nant,-(N,1)),
    factorial(Nant,FNant),
    is(FN,*(N,FNant)).
