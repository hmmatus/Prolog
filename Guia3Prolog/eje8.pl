%Eje8

elim_elto(L,N,M):-	elim_elto2(L,N,1,M).

elim_elto2([_|Cola],N,A,M):- 	=:=(N,A),
						is(B,+(A,1)),
						elim_elto2(Cola,N,B,Maux),
						=(M,Maux),!.

elim_elto2([Cab|Cola],N,A,M):- 	=\=(N,A),
						is(B,+(A,1)),
						elim_elto2(Cola,N,B,Maux),
						=(M,[Cab|Maux]),!.

elim_elto2(_,_,_,[]).