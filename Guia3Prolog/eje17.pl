mult_elto(_,_,[]).
mult_elto2(_,_,_,[]).

mult_elto([Cab|Cola],N,L2):-	mult_elto(Cola,N,L2aux),
								mult_elto2(Cab,1,N,L3),
								=(L2,[L3|L2aux]),!.

mult_elto2(Elto,A,N,L3):-	=<(A,N),
							is(Aaux,+(A,1)),
							mult_elto2(Elto,Aaux,N,L3aux),
							=(L3,[Elto|L3aux]),!.
