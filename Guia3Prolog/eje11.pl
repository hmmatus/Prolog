elim_cons([Cab|Cola],M):-	elim_cons2(Cola,Cab,M2),
							=(M,[Cab|M2]).

elim_cons2([Cab|Cola],A,M):- 	\==(Cab,A),
								elim_cons2(Cola,Cab,Maux),
								=(M,[Cab|Maux]),!.

elim_cons2([Cab|Cola],A,M):- 	==(Cab,A),
								elim_cons2(Cola,Cab,Maux),
								=(M,Maux),!.