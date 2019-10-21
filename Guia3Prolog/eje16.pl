dub_elto(_,[]).

dub_elto([Cab|Cola],M):-	dub_elto(Cola,Maux),
							=(M,[Cab,Cab|Maux]),!.

