lista_enteros(_,_,[]).

lista_enteros(N1,N2,M):-
	=<(N1,N2),
	is(Naux,+(N1,1)),
	lista_enteros(Naux,N2,Maux),
	=(M,[N1|Maux]),!.
