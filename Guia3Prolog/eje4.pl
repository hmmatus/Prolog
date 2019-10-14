concat([],L,L).

concat([X|M],L,[X|Z]):-
    writeln(M),
    writeln(L),
    concat(M,L,Z).


inversa([],[]).

inversa([H|T],M):-
inversa(T,S),
concat(S,[H],M).