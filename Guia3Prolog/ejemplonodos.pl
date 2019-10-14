contarNodos([],0).

contarNodos([ArbolIzq,Nodo,ArbolDer],Cont):-
\==(Nodo,[]),
contarNodos(ArbolIzq,SumaIzq),
contarNodos(ArbolDer,SumaDer),
is(Cont,+(1,+(SumaIzq,SumaDer))).