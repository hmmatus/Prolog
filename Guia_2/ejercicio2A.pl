/*Requerimos del ejercicio del factorial*/
/*Si les falla borren los comentarios*/
factorial(0,1).
factorial(1,1).
factorial(N,FN):-
    >=(N,2),
    is(Nant,-(N,1)),
    factorial(Nant,FNant),
    is(FN,*(N,FNant)).

/*Mando a llamar a una funcion auxiliar,
con mi X como la variable independiente, K como contador,
N un valor arbitrario que yo escojo para el nivel de aproximacion 
y donde guardo la respuesta.*/

funSen(X):-
    senAux(X,0,15,0).

/*Condicion de paro*/
senAux(X,K,N,Resp):-
    >(K,N),
    writeln(Resp).

/*La llamada recursiva*/
senAux(X,K,N,Resp):-
    =<(K,N),
    /*Asigno un valor a mi numerador*/
    is(Num,*(^(-(0,1),K),^(X,+(*(2,K),1)))),
    is(AuxDen,+(*(2,K),1)),
    /*Determino el valor que le enviare a mi factorial y este me devuelve una variable*/
    factorial(AuxDen,Den),
    is(RespT,/(Num,Den)),
    is(RespAux,+(Resp,RespT)),
    is(Kaux,+(K,1)),
    senAux(X,Kaux,N,RespAux).
