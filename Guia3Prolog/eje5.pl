%Eje5
suma(_,0,0).

suma([Cab|Cola],C,S):- 	suma(Cola,Caux,Saux),
						is(C,+(Caux,1)),
						is(S,+(Saux,Cab)),!.

promedio_lista(L, P):- suma(L,C,S), is(P,/(S,C)).



