invertir([], []):- !.
invertir([ArbolIzq, Dato, ArbolDer], [ArbolDer2, Dato, ArbolIzq2]):-
invertir(ArbolIzq, ArbolIzq2),
invertir(ArbolDer, ArbolDer2).

/*[[[],5,[]],8,[[],4,[]]]*/