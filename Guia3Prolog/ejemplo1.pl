agregar(X,L1,[X|L1]).

suma([],0). 
suma([X|Xs],C):-suma(Xs,C1),is(C,+(C1,X)). 
sumadelista(X):-suma(X,C),write('La suma es : ';C).
