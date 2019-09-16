fib(0, 1) :- !.
fib(1, 1) :- !.

fib(N,Res):-
    >(N,1),
    is(N1,-(N,1)),
    is(N2,-(N,2)),
    fib(N1,F1),
    fib(N2,F2),
    is(Res,+(F1,F2)).
